# Research topics — product level

**Last assessed:** 2026-08-10
**Tier:** Large / architecture-layer — **9 topics total**, delivered across cycles
**This cycle:** 5 topics (the §2 per-cycle cap), most decision-blocking first

## Why Large

[Research Standard §2](../../research/research_standard.md) puts *stack-level, direction-setting* work in the Large band (8–10 topics). This qualifies on the destination test rather than on code size — the repo is 215 lines of HTML/CSS/JS, but what the pool feeds is **what the portfolio IS**, not how to build a committed piece:

- The destination docs contain **no direction at all**. There is no roadmap, no phase doc, no problem statement — [`README.md`](../../../../README.md) documents the *container contract* and nothing about the site's purpose; [`CLAUDE.md`](../../../../CLAUDE.md) declares content operator-owned and off-limits to infrastructure reasoning. So this pool is not validating a direction, it is **supplying the one that does not exist yet**.
- The live site is four sections deep (hero → one-paragraph About → 3 tiles → footer), every `Write-up →` link is `href="#"`, and the hero mis-states the operator's degrees. Every one of those is a direction question, not a build question.
- The dispatch names four coverage areas (structure/content · design/feel · anti-patterns · the self-built-system angle) across three audiences that are explicitly **not** ranked. Three audiences × two axes is a genuinely multi-destination question.

**Why 9 and not more:** §2 says an assessment running well past 8–10 is a scoping signal — check whether it is one component before widening the band. It is one component with one destination (the site's direction), so 9 sits at the top of the band and stops there.

## This cycle's topics

| # | Topic | Feeds | Paper |
|---|---|---|---|
| 1 | **Structure & content of respected engineering portfolios** — which sections exist, in what order, at what depth; what to lead with; how much inline vs. linked out | The site's information architecture — the section list the buildout works from, replacing today's hero/About/3-tiles/footer | [`raw/portfolio-structure-and-content.md`](raw/portfolio-structure-and-content.md) |
| 2 | **Case-study craft for complex systems work** — outcome-first vs. stack-list framing, evidence and metrics, narrative shape, how infra work is made legible when there is nothing to click | The case-study template + the three dead `Write-up →` links in [`projects.js`](../../../../projects.js) | [`raw/case-study-craft-for-systems-work.md`](raw/case-study-craft-for-systems-work.md) |
| 3 | **Audience calibration & anti-patterns** — what senior peers, hiring managers/recruiters, and prospective clients each reward, what each discounts, and what actively damages credibility with each | The content-prioritisation rules and the trajectory statement — specifically how one site serves three audiences without splitting | [`raw/audience-calibration-and-anti-patterns.md`](raw/audience-calibration-and-anti-patterns.md) |
| 4 | **Design language for a personal engineering site, 2025–26** — layout, typography, colour, motion, dark mode; what reads as craft vs. what reads as a template | The visual direction — the target [`style.css`](../../../../style.css) is built toward, and the look/feel half of the trajectory | [`raw/design-language-2026.md`](raw/design-language-2026.md) |
| 5 | **Making a self-built system read as senior signal** — how "I designed and built the whole thing," solo, with real businesses on it, lands as staff-level evidence rather than as a hobby lab | The positioning thesis: hero, About, and the framing of the MDC case study | [`raw/self-built-system-as-senior-signal.md`](raw/self-built-system-as-senior-signal.md) |

Pairing **audience calibration** with **anti-patterns** into topic 3 is deliberate and not a bundle-to-fit-the-cap: the dispatch asks what hurts credibility *"with peers, recruiters, or clients"* — the damage is audience-specific, so "what lands" and "what backfires" are the two directions of one question. Splitting them would have produced two papers citing the same sources.

## Gaps named, not covered this cycle

Each is a real topic in the Large band's 9, deferred by the §2 per-cycle cap of ~5. Sequenced by how blocking they are for cycle 2.

| # | Topic | Feeds | Why deferred |
|---|---|---|---|
| 6 | **Proof surfaces for infrastructure work** — architecture diagrams, live telemetry/status pages, terminal recordings, video walkthroughs: which artifacts actually convince, and what each costs to build and maintain | The evidence-assets roadmap — what gets built alongside the case studies | Per-cycle cap. Partially dependent on topic 2: the case-study format has to exist before deciding which assets fill it. Cycle 2's first topic. |
| 7 | **The site as its own artifact** — performance, accessibility, semantic HTML, the no-build-step choice, what a peer finds on view-source | The technical quality bar for the buildout, and whether the vanilla-stack choice is an asset to state or a constraint to hide | Per-cycle cap. Non-blocking for direction: it constrains *how well* the site is built, not *what it is*. |
| 8 | **Discoverability & distribution** — how engineering portfolios are actually found and shared; whether a writing surface (notes/blog) earns its maintenance cost | Whether the site invests in a writing/notes surface at all — a section-level decision the IA depends on | Per-cycle cap. Sits downstream of topic 1: decide the core IA before deciding whether to bolt a publishing channel onto it. |
| 9 | **The client-facing surface** — services framing, engagement model, social proof, and whether a portfolio that carries one loses standing with the peer audience | Whether the site carries a client surface at all, and if so where it sits relative to the engineering content | Per-cycle cap, and **insufficient signal until topic 3 lands** — the peer-vs-client tension is exactly what topic 3 measures, so researching the remedy before the diagnosis inverts the order. |

No topics were retired this cycle — the pool was empty before this run.
