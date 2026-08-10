# Research Standard — vendored, and where research lives here

`research_standard.md` is a **verbatim MIRROR** of `helloskyy-io/MDC-Master-Planning` → `standards/development/research/research_standard.md`. **Do not edit it here** — amendments go upstream, then re-vendor.

**Why vendored** (portfolio references its other standards by path — this one is copied): the V2 research workflow reads the artifact contract **from inside the target repo** and STOPS if it cannot find one. An in-repo copy is the robust form of adoption — the same reason CDF itself vendors this standard.

## Where research lives in this repo

Per §1 of the standard — *co-location with the consumer beats taxonomy purity* — with two altitudes:

| Altitude | Location | Backs |
|---|---|---|
| **Product** — the whole approach | [`../architecture/research/`](../architecture/research/) | Findings that could change *what the portfolio is* |
| **Phase** — how to build a committed piece | `docs/development/<phase>/research/` | (none yet) |

The portfolio-vision research ("what makes a portfolio genuinely admired") is **product-level** — it shapes what the whole site is — so it lives in the product pool.

**Research is EVIDENCE, not rules.** Nothing under `research/` binds anything; a finding becomes binding only by human-ratified codification into a standard.
