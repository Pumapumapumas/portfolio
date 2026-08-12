# Portfolio

A **static site** — vanilla HTML/CSS/JS, no build step, no framework — that publishes its own container image to `ghcr.io/pumapumapumas/portfolio` and runs as a workload on `k3s-w1`.

**All MDC platform standards live in `mdc-master-planning`.** This file references them by absolute path. Do not duplicate a standard here — always link to the canonical copy. **One exception:** the **Research Standard** is *vendored* (a verbatim MIRROR) at `docs/standards/research/`, because the V2 research workflow reads the artifact contract from inside the target repo and stops if it can't find one — so an in-repo copy is the robust form of adoption (the same reason CDF vendors it). See the Standards section.

## Repo structure

Canonical layout: `docs/file_structure.txt`. Read this BEFORE referencing internal paths — the model frequently fabricates paths from training-data priors when not primed.

## The one invariant that matters

The image **must** run as non-root (uid 101) and listen on **:8080**. The `portfolio` namespace on `k3s-w1` enforces Pod Security Admission `restricted`, which rejects a root container at admission — a root image is not "degraded," it does not run at all. A non-root process cannot bind :80, which is why :8080 is the port the chart pins.

The `Dockerfile` header comment is the canonical explanation. `testing/verify-image.sh` is the mechanical check. Run `./testing/run-all.sh` after any change to the `Dockerfile`.

CI runs the same check as the `verify` job. It **blocks publishing** — `build` declares `needs: verify`, so a failing image never reaches `ghcr.io`. It does **not** block merging: this repo has no branch protection, so a red pull request can still be merged by hand. `README.md` carries the full carve-out; do not describe the check as if it gated the merge.

## Content is operator-owned

`index.html`, `style.css`, and `projects.js` are the operator's content. Do not edit them for infrastructure reasons — if a change to the container requires a content change, surface it rather than making it.

## Deploying a content change

The path from an edited file to the live site, and the two traps on it:

1. **Edit content → `./testing/run-all.sh` → commit + push to `main`.** CI builds and publishes the image (verify-gates-publish, ~1 min).
2. **Bump `?v=` in `index.html` whenever you change `style.css` or `projects.js`.** Cloudflare edge-caches those two assets for ~4h (`max-age=14400`); `index.html` itself is never cached (`cf-cache-status: DYNAMIC`). A fresh `?v` makes the asset a URL Cloudflare has never seen, so the edit goes live immediately instead of stalling behind the 4h cache. A skipped bump is the single most likely reason "it deployed but the site looks unchanged."
3. **Operator runs the adopt (sudo):** `sudo /opt/skyy-net/skyy-command/lib/temporal/scripts/adopt_portfolio_image_start.sh`. It resolves `ghcr.io/pumapumapumas/portfolio:latest` to its digest and writes it into the per-cluster `instance.yaml` in desired-state. **Wait for `:latest` to actually move, not just for CI to go green** — GHCR updates the tag a beat after the check flips, so an adopt fired too early resolves the *old* digest and no-ops (empty diff). A real adopt leaves a one-line digest diff; an empty diff means it ran too early — re-run it.
4. **Review the one-line digest diff in desired-state, commit + push.** ArgoCD converges on the next reconcile (~3–6 min).
5. **Verify against the LIVE site, never ArgoCD `Synced/Healthy`.** The pod is node-pinned; a green sync can sit in front of a stale edge cache or a 504. Load `https://portfolio.helloskyy.io` (or `curl` the specific asset) and confirm the actual content.

## What this repo does NOT contain

- **The Helm chart that deploys this image** — `skyy-command/deployments/workload/portfolio/chart/`
- **Per-cluster values** — `desired-state-sturdy-wheat-pelican/container/k3s-w1/workload/portfolio/`
- **Standards** — `mdc-master-planning/standards/` (referenced by path). *Exception:* the **Research Standard** is vendored in-repo at `docs/standards/research/` (verbatim MIRROR) because the research workflow requires it locally.

## Standards (read when triggered)

Each entry tells you **when to read the standard**. Do not pull every standard into context.

- **[Image Pipeline Standard](/opt/skyy-net/mdc-master-planning/standards/development/image-pipeline/image_pipeline_standard.md)** — **read when** touching the `Dockerfile` or `.github/workflows/build.yml`. §4 requires the base image be pinned by **digest** (a bare tag is a violation); §6.2 requires the publish workflow to fire on every push to the main branch and to surface the published digest as a workflow output for chart digest-pinning. **Breaking it looks like:** a `FROM` line with a bare tag, or a published image whose digest a human has to go find by hand.

- **[Container Clustering Standard](/opt/skyy-net/mdc-master-planning/standards/development/platform_deployment/container_clustering_standard.md)** — **read when** changing the base image, the user the container runs as, or the listening port. §4.3 defines the Pod Security Admission tiers; this workload sits in a `restricted` namespace. **Breaking it looks like:** a root base image, or a listener on a privileged port.

- **[Testing Standard](/opt/skyy-net/mdc-master-planning/standards/development/testing/testing_standard.md)** — **read when** adding a check. Tests live under `testing/` (the Multi-Repo Conventions shape for small repos) and MUST be reachable from `testing/run-all.sh` — a test outside runner discovery is a defect, not a convenience gap.

- **[Documentation Standard](/opt/skyy-net/mdc-master-planning/standards/documentation/documentation_standard.md)** — **read when** adding, removing, or renaming files (refresh `docs/file_structure.txt`), or revising this file.

- **[Research Standard](./docs/standards/research/research_standard.md)** *(VENDORED — verbatim MIRROR of mdc's `standards/development/research/research_standard.md`; do not edit the copy, amend upstream then re-vendor)* — **read when** running or interpreting the V2 research workflow, or adding to a research pool. Pools live under [`docs/standards/architecture/research/`](./docs/standards/architecture/research/) (product level — findings that could change *what the portfolio is*). Research is **EVIDENCE, never binding**. **Breaking it looks like:** editing the vendored copy locally, or treating a research finding as a decision without human codification.

> **Not listed** per the [CLAUDE.md governance rule](/opt/skyy-net/mdc-master-planning/standards/documentation/documentation_standard.md): Temporal, Ansible, Persistent Storage, Networking, and K8s Deployment standards. This repo contains no Temporal workflow code, no Ansible, no chart code, and declares no cluster networking — the chart that does lives in `skyy-command` and is governed by that repo's CLAUDE.md.
