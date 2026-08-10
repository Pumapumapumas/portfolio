# Direction decisions — the operator's inbox

**This file is not a standard.** It is the queue of rulings only the operator can make — a research finding that is real but whose answer is a preference or priority, not a fact more work would uncover.

## The rule

> **Automation appends and leaves `status: open`. The operator sets `status`.**

- IDs are `D-NNN`, independent of the `C-` series in [`candidates.md`](candidates.md), never reused, never renumbered.
- `Source` carries the `C-NNN` it came from, so the two files stay linked.
- Recommendation and *Why it matters* are one sentence each (read at standup speed).
- A ruled row is a **receipt**: its durable reasoning goes back into the source candidate's Note, then the row rotates out.

Full mechanics: CDF memory model — `claude-dot-files/docs/guide/memory-model.md`.

## Decisions

| ID | Recommendation | Why it matters | Source | `status` |
|---|---|---|---|---|
| D-001 | **State the objective: employment, clients, or neither.** | No amount of further research produces this answer, and it re-ranks the entire roadmap — if it is a job search on a deadline the highest-leverage artifact is a résumé and LinkedIn rather than an 8-section site; if it is client work, a portfolio is arguably the wrong artifact class entirely. | `raw/self-built-system-as-senior-signal.md` G8; `synthesis.md` §7 H-3 | `open` |
| D-002 | **Accept that the site's job is to win the conversation a referral grants, not to win the screen.** | The best available evidence runs against the dispatch's optimistic premise — a 2,400-posting field experiment found founder-experience candidates got 43% fewer callbacks, with the mechanism traced to employer beliefs about *fit and commitment* rather than competence — so optimising for depth-on-arrival beats optimising for a keyword filter. | `raw/self-built-system-as-senior-signal.md` §0, §5.1 | `open` |
| D-003 | **Never assert a seniority level on the site; state the artifact and let the reader rate it.** | Read against five published ladders, a solo-built platform evidences scope, horizon and operational ownership but **structurally cannot evidence the organisational half of staff-level**, so a "staff-level" self-label invites a check the evidence fails in one step. | `raw/self-built-system-as-senior-signal.md` §4.3, §10.5 C9 | `open` |
| D-004 | **Confirm or drop the three-audiences-in-balance premise.** | The pool's strongest single source contradicts it outright — NN/g: *"Avoid writing for everyone. When you write for everyone, you write for no one."* — and progressive disclosure only resolves conflicts of *depth*, never of *purpose*, so if the site ever needs to sell, the layering model will not save it. | `raw/audience-calibration-and-anti-patterns.md` §10.1 | `open` |
| D-005 | **Rule on whether the site carries a client sales surface at all** (the pool recommends: ship a contact affordance now, defer services/rates/testimonials). | The peer-standing cost of a sales surface is **unmeasured** — it is the audience paper's own weakest inference, and the only two sites in the 21-site population with an availability page are the only two consultants, so n=2 supports nothing either way. | C-010; `raw/audience-calibration-and-anti-patterns.md` G6 | `open` |
| D-006 | **Rule on dark-only versus shipping both colour schemes.** | The peer-reviewed display-polarity evidence favours light for reading and cuts against the site's evident preference, but shipping both doubles the theme-maintenance and contrast-audit surface — *"the evidence does not force the two-theme answer; it forces the don't-ship-small-text-on-dark answer."* | C-013; `raw/design-language-2026.md` §11.4 | `open` |
| D-007 | **Do not claim "hand-written CSS, no build step" as a craft signal on the site** — keep it as repo identity only. | The corpus falsifies the premise: a Tailwind-built site in it ships `:focus-visible`, reduced-motion and selection styling *because the framework does*, while several hand-rolled sites ship none — so a framework build can out-conform a hand-built one, and the claim would be checkable and wrong. | `raw/design-language-2026.md` §11.3 | `open` |
| D-008 | **Decide where this portfolio's thesis is codified** — there is no `problem-statement.md` or equivalent in this repo for a ruled trajectory to live in. | The pool was commissioned to supply a thesis and there is no artifact for the operator's ruling to land in, so the trajectory would survive only in `synthesis.md`, which the next research cycle overwrites — this is the gap that most threatens the value of cycle 1. | `synthesis.md` §7 H-2 | `open` |
