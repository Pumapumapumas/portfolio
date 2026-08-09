# Portfolio

A dead-simple static portfolio — no build step, no framework. Three files do the work:

| File | What it is |
|---|---|
| `index.html` | The page (hero · about · projects · footer). |
| `style.css` | The look. The `:root` block at the top is the **central style** — change a variable, the whole site re-themes. |
| `projects.js` | The **project data**. Each entry in the `projects` array renders one tile. |

## Editing

- **Add / remove a project** → edit the `projects` array in `projects.js`. Copy an object, change the fields. That's it.
- **Re-theme the whole site** → edit the CSS variables in the `:root` block at the top of `style.css`.
- **Your name / about / links** → edit `index.html` (hero + about sections).

## Preview locally

```sh
python3 -m http.server 8080
# then open http://localhost:8080   (or http://<this-vm-ip>:8080)
```

Or just open `index.html` in a browser.

## Deploy (self-hosted on the platform)

```sh
docker build -t portfolio .
docker run --rm -p 8080:8080 portfolio
```

The image runs as uid 101 and serves on **:8080**, not :80 — the target cluster enforces
Pod Security Admission `restricted`. The comment at the top of the `Dockerfile` is the
canonical explanation; don't change the base or the port without reading it.

To check the image still satisfies that contract:

```sh
./testing/run-all.sh
```

CI runs that same command as the `verify` job, on pushes, pull requests and manual
dispatches alike.

## What the contract check gates, and what it does not

The check is **blocking on the publish path and advisory on the merge path**, and the
difference is worth stating exactly rather than leaving to the job name:

- **Publishing is gated.** The `build` job declares `needs: verify`, so a run whose
  contract check fails stops before the push step. An image that fails the check does
  not reach `ghcr.io`, and nothing short of editing the workflow changes that.
- **Merging is not gated, and will not be.** GitHub *can* mark this check required —
  the operator has a standing ruling not to configure branch protection on any repo, so
  it is not marked required here and a red pull request can still be merged by hand.
  What that leaves uncovered: a `Dockerfile` that fails the contract can land on `main`.
  What it does not leave uncovered: the merge's own run then fails at `verify` and
  publishes nothing, so the registry keeps serving the last good digest and the cluster
  never pulls the broken image.

Naming what is consequently not covered is what the
[Testing Standard](/opt/skyy-net/mdc-master-planning/standards/development/testing/testing_standard.md)
requires of any advisory check — an undocumented advisory check is indistinguishable
from an ungated control — and the paragraph above is that record.

**One precision, so a future audit is not misled.** The standard's advisory carve-out is
written for a platform that *cannot* mark a check required; this one can, and the
operator elected not to. So this is an operator-elected deviation that meets the
disclosure the carve-out demands, not the carve-out itself. Whether the standard should
admit a recorded election as a third basis is an open question, unruled, at
[MDC-Master-Planning#150](https://github.com/helloskyy-io/MDC-Master-Planning/issues/150).
Either ruling leaves this repo's posture and this disclosure unchanged.

Every push to `main` publishes the image to `ghcr.io/pumapumapumas/portfolio`; the run's
summary prints the published digest to pin in the deployment chart. The mutable
`:latest` tag only ever moves on `main` — branch dispatches publish the immutable
`:<sha>` tag alone, so getting a digest for review cannot repoint the tag the cluster's
adopt path resolves.
