# Synthesis — Portfolio direction (product level)

> **⚠ DRAFT — no paper in this pool has been verified.** Every input carries
> `Critic: not-yet-verified`. A separate fresh-context run verifies each paper, applies
> corrections, and traces every correction through to this document per
> [Research Standard §4](../../research/research_standard.md). Read this as the best
> available reading of the pool, not as a settled result.
>
> **Nothing here is binding.** Research is evidence; only human codification into a
> standard makes anything binding ([§1](../../research/research_standard.md)).

**Cycle:** 1 of 2 — 5 of 9 topics ([`topics.md`](topics.md)). **Written:** 2026-08-10.

---

## Inputs — the pool this synthesis draws on

All five papers were written this cycle. Per the computed currency table at dispatch,
**0 of 0 papers were past their revalidation window** — the pool was empty before this run,
so nothing here is stale. No paper is retired; none is excluded.

| Paper | Last validated | Revalidate | Critic verdict |
|---|---|---|---|
| [`raw/portfolio-structure-and-content.md`](raw/portfolio-structure-and-content.md) | 2026-08-10 | medium — 3 months | **not-yet-verified** — 2026-08-10 |
| [`raw/case-study-craft-for-systems-work.md`](raw/case-study-craft-for-systems-work.md) | 2026-08-10 | medium — 3 months | **not-yet-verified** — 2026-08-10 |
| [`raw/audience-calibration-and-anti-patterns.md`](raw/audience-calibration-and-anti-patterns.md) | 2026-08-10 | medium — 2 months | **not-yet-verified** — 2026-08-10 |
| [`raw/design-language-2026.md`](raw/design-language-2026.md) | 2026-08-10 | **high — 6 weeks** | **not-yet-verified** — 2026-08-10 |
| [`raw/self-built-system-as-senior-signal.md`](raw/self-built-system-as-senior-signal.md) | 2026-08-10 | medium — 3 months | **not-yet-verified** — 2026-08-10 |

**The 6-week interval on the design paper sets this synthesis's own shelf life.** That paper
marks one High-tier section (a CSS Baseline feature-availability table); the rest of its
content decays far slower. Only §4 below depends on it.

---

## 1. What the pool says, in one page

Five papers researched independently converged on six things. Convergence is worth more than
any single claim, because none of these analysts saw another's work.

**1. The site's current shape is the wrong shape — and this is the pool's strongest observation.**
Across 21 enumerated engineer sites, **15 lead with a reverse-chronological writing list, 6 with
a short identity block, and 0 with project tiles** — the current site's central move
([structure §2.2], definitive as an observation of that population; the generalisation is
derived). The honest caveat is in the same paper: the population self-selects for engineers who
*write*, so this is strong evidence that writing-first works for writers and only weak evidence
that tile-first fails ([structure §5.3]).

**2. The deficit is content and evidence, not chrome — every paper said so independently.**
The audience paper's boundary section names four things the current site already gets right
(short, non-promotional, links outward from the hero, deliberate rather than templated)
[audience §10.7]. The design paper's own strongest counter-argument is that visual design is
*permissive, not productive* — bad design costs credibility, good design mostly fails to buy it
[design §11.1]. **A redesign is not the highest-value work available.**

**3. Dead links are the highest-confidence, lowest-cost defect in the pool.** Stanford's
web-credibility guideline 10 — *"Avoid errors of all types, no matter how small they seem"* —
and NN/g's 2016 re-test both land here, and Fogg's prominence qualifier makes it *worse*, not
better: a broken link damages credibility if noticed, and these sit on the primary
call-to-action of every tile [audience §6.1 A1]. Enumerated in-repo: **3 `href="#"` links, and
1 of 4 tiles is the literal placeholder** `"Add your next project"` publishing the site's own
build instructions as content.

**4. The strongest available asset is currently unstated.** A solo-designed, solo-operated
private cloud **with two real businesses running production workloads on it** is close to a pure
*assessment signal* in Marlow & Dabbish's sense — costly to produce, hard to fake, checkable —
sitting on a different axis from the *conventional* signals (titles, tenures) a résumé carries
[audience §8, derived]. The site says only *"the businesses I run on top of my own
infrastructure"* — passive, unnamed, unquantified, and reading as hobby framing. **The pool's
single highest-value unused sentence is naming what runs on the platform, for whom, since when.**

**5. The evidence points the *other way* on hiring — and this reorders everything.** A field
experiment across 2,400 software engineering positions found candidates with founder experience
received **43% fewer callbacks**; a separate résumé-audit study traced the mechanism to employer
beliefs about **fit and commitment, not competence** [signal §0, definitive as to what those
studies report; the transfer to a solo operator is that paper's largest inferential leap and is
declared as gap G3]. Neither studied portfolios or infrastructure platforms. But the best
available evidence says the discount is real and operates at the screen — so **the site's job is
to win the conversation a referral grants, not to win the screen.** A paper that buried this
under framing advice would be advocacy, and the analyst said so.

**6. The claim ceiling is lower than the platform's apparent scope.** Read against five
published seniority frameworks (SFIA 9, Dropbox, GitLab, engineeringladders, StaffEng — all
fetched first-party), levels separate on **scope, horizon, consequence and organisational
reach**. A solo-built production platform genuinely evidences the first three and
**structurally cannot evidence the fourth** [signal §4]. Claiming "staff-level" invites a check
the evidence fails in one step. The defensible move is to state the artifact and let the reader
do the rating.

### What the pool did NOT find — stated as findings, not omissions

- **No controlled study of personal engineering portfolios exists** that any analyst could
  locate. Every NN/g finding used here was collected on corporate, e-commerce, B2B, news or
  encyclopedic sites. **Every "therefore the portfolio should…" recommendation in this synthesis
  is derived**, not measured [structure §5.1].
- **The "recruiters spend N seconds" statistic is excluded, not cited.** Three analysts
  independently hit HTTP 403 on the primary vendor artifact. **No seconds figure appears
  anywhere in this pool, and no downstream document should introduce one.**
- **The homelab discount itself is unevidenced.** No credible primary source was found for the
  mechanism everyone assumes; the mechanism table is explicitly derived [signal §5.4, G1].
- **No study measures what engineers infer from a site's visual design.** The craft-vs-template
  distinction is folklore the analyst believes and could not evidence [design §11.2, G3].
- **A circulating "2024 Stack Overflow Developer Survey" portfolio statistic does not exist in
  that survey** — 0 matches for "portfolio" across six enumerated sections [audience G3]. Worth
  recording because it is this topic's signature contamination.

---

## 2. The TRAJECTORY — what this portfolio should be

*Required output #2. Derived from the pool; a proposal for the operator to rule on, not a result.*

> **A short, evidence-dense site whose surface layer is checkable facts and whose depth is a
> small number of real engineering write-ups — built to win the conversation a referral grants,
> not to survive a keyword screen.**

Four commitments follow, each traceable to §1:

**It is an evidence site, not a claims site.** Every surface sentence should be something a
reader could check — a system that runs, a business that depends on it, a repo that exists, a
digest that was published. The register is objective: NN/g's measured rewrite of promotional
copy into plain fact scored **+27% on its own and +124% combined with concision and
scannability** [audience §6.1 A3]. Words that go: *enterprise-grade*, *from scratch*, *whole
systems, not just pieces*. Words that stay: *K3s, Ceph, Temporal, ArgoCD* — precise, checkable,
load-bearing [audience C7].

**It is short on the surface and deep one click down.** Progressive disclosure — a tile of ~60
words, a case study at 1,200–2,000, artifacts below that. **The pool's own caveat is that this
resolves *depth* conflicts, not *purpose* conflicts** [audience §10.2]; get the split wrong and
the pattern makes things worse for every audience rather than better for each.

**Its centre of gravity is one flagship system, told properly.** Not a tile grid. The MDC
platform gets real estate, a decision-level walk, rejected alternatives, one real failure, and
links to the code — because a boundary rationale is an assessment signal and a component list is
a conventional one [signal §10.4].

**It names its own boundary before a reader finds it.** One sentence saying what solo work does
*not* give: *"It's one operator, so this is not evidence of leading a team — it's evidence of
owning a system end to end, including the pager."* Per [signal §10.3], a reader who sees you
name your own gap stops hunting for it. This is the pool's most counter-intuitive
recommendation and one of its most confident.

### The thesis line the site should carry

> **I design, build, and operate production infrastructure end to end — and two real businesses
> run on the platform I built.**

Per-clause rationale in [signal §10.1]: *operate* is the verb nearly always missing from
self-directed work and is the one the engineeringladders System axis calls ownership;
*production* routes the artifact into the competence rubric rather than the leisure rubric; *two
real businesses* supplies consequence, external stakeholders, and the answer to "self-graded" in
one clause. It deliberately does not say *staff-level*, *principal*, *enterprise-grade*, *from
scratch*, or *homelab*.

---

## 3. The FEATURE / SECTION ROADMAP — prioritized

*Required output #1. Ordered by (evidence strength × current deficit × cost). Every item names
the paper backing it. **This ordering is derived** — it is this synthesis's inference across the
pool.*

### Tier 0 — Correctness. Nothing else is worth doing first.

| # | Build | Why — evidence |
|---|---|---|
| **0.1** | **Correct the degree.** Hero and About both say *"biomedical informatics (M.S.)"*; the dispatch states **M.S. Computer Science**. | All five analysts flagged it independently. It is the most checkable claim on the page, and an error there discredits the unverifiable ones [signal §10.5 C1; audience §6.1 A7]. `CLAUDE.md` makes content operator-owned — **surfaced, not edited.** |
| **0.2** | **Remove the 3 dead `href="#"` links and the `"Add your next project"` placeholder tile.** Ship the write-up or drop the affordance — never both-and. | Highest-confidence, lowest-cost item in the pool [audience P1; structure P8; signal C5, C8]. |
| **0.3** | **Close the two live conformance defects:** `--border #262a35` at **1.34:1** is the sole boundary identifying the hero pill controls (WCAG 1.4.11 requires 3:1); `scroll-behavior: smooth` ships unconditionally with **zero** `prefers-reduced-motion` queries. | Both computed from the live `style.css`, not asserted [design §10.2, §10.4]. A site whose thesis is "I build infrastructure correctly" cannot ship a conformance defect. |

### Tier 1 — The measurement backlog. This gates the good sections.

| # | Build | Why — evidence |
|---|---|---|
| **1.1** | **Measure, then write.** Platform availability over a stated window with the instrument named; an SLO for at least one user-facing service per business; the continuous production start date; provisioning and rebuild-drill timings; declared-state coverage by enumeration. | **The strongest sections of the recommended case study require numbers that do not exist yet.** Both relevant papers left every numeric slot as an explicit `MEASURE:` placeholder and attributed **no number** to this platform [case-study §8.5, B1; signal §10.6]. |
| **1.2** | **Recall, don't invent:** one real incident with dates, duration, business consequence and remediation; 2–4 architecture decisions with the alternatives actually rejected and the costs actually paid; which constraints were externally imposed vs. chosen. | The external-vs-chosen split is the cheapest high-value item on the list and is what answers the homelab objection [signal §10.4 item 2]. The incident section is *optional* in that you may not have one worth telling — **not** optional in the sense of being replaceable by a hypothetical [case-study §8.6]. |

### Tier 2 — The information architecture. This is the buildout.

The recommended ordered section list, replacing today's hero → About → tiles → footer
[structure §4.6, derived throughout]:

| # | Section | What it carries | Serves |
|---|---|---|---|
| **2.1** | **Hero — identity + thesis, ~3 lines** | Name; role line with the corrected degree; the §2 thesis line with one concrete anchor. Businesses first, stack second in the same sentence — the consequence clause is the assessment signal, the stack is the conventional one [signal §10.2]. | All three |
| **2.2** | **Proof strip — inside the first screenful** | 3–5 checkable facts with numbers, not a stack list. **Blocked on Tier 1.** | Peers get scale immediately; recruiters get the summary they'd otherwise infer |
| **2.3** | **The flagship system — one expanded entry, not a tile** | The private cloud with real estate: what it is, why, the 2–3 hardest decisions, one diagram or one honest constraint, ending in a `Write-up →` that **resolves**. | Peers — this is the section they read |
| **2.4** | **Selected work — 2–4 curated entries** | Name, one line of what-it-is-and-who-uses-it, date range, **status and honest maturity label**, and an outbound link to the repo/org/running instance (or a plain statement that it's private). | Recruiters and clients scan this |
| **2.5** | **Write-ups index** | Even 2–3 real pieces. If it will not be sustained, title it *Write-ups* and let it be the case-study index rather than pretending to be a blog. | Peers, decisively |
| **2.6** | **About — first person, ≤ ~400 words** | Trajectory (IE → CS → operating infrastructure), what the platform is and what depends on it, **how the work is governed** (documented architecture standards, declarative reviewed path — the cheapest sentence separating "engineered" from "assembled"), and the self-named boundary. | All three; the recruiter's primary landing target after the hero |
| **2.7** | **Contact — a plain email, not a pitch** | The pool splits these deliberately: a *contact affordance* is universally rewarded and cheap; *sales copy* is what costs peer standing [audience C3]. | Clients convert here |
| **2.8** | **Footer** | Keep `"built & self-hosted on my own cloud"` — [signal §10.5 C7] calls it **the best line on the current site**: self-demonstrating, and the page you are reading is the evidence. | — |

### Tier 3 — The case-study template. The format every write-up follows.

Ten sections [case-study §8], worked through for MDC in that paper: **Title** (system + outcome)
→ **At a glance** (What / Why / My role / Scale & constraints / Status, above the fold) →
**Problem and constraints** (marked external vs. chosen) → **What I built** (exactly two
diagrams — one C4 context, one container; no gallery) → **Key decisions** (3–5 blocks of
*Decision — Options considered — Why this one — What it cost*, negative consequences mandatory)
→ **Evidence it works** (metric / definition / measurement window / value) → **What went wrong**
(one incident, postmortem-shaped) → **Trade-offs and what I'd do differently** (including one
belief that turned out wrong) → **Current status, dated** → **Artifacts** (repos, CI runs,
published digests, standards — the only third-party-attested items on the page).

Target **1,200–2,000 words**, front-loaded. Must NOT contain: a technology tour, superlatives,
any number without a measurement window, or the phrase *enterprise-grade*.

**Sequencing note:** *Declarative VM Orchestrator* is the study where the evidence section is
naturally strongest (a reconciler produces convergence timings); *Deploy-A-Saurus* is where the
decisions section is strongest — and **this repo's own `verify → build` gate is a live,
third-party-attested artifact** for its artifacts section [case-study §8.10].

---

## 4. The look and feel target

*From [design §9–§10]. This section is the one with a 6-week revalidation window.*

**Strategy: systematised restraint, executed with typographic minimalism's discipline** — a
token system, both colour schemes, designed focus and print styles, a few components; achievable
entirely in hand-written CSS with **no build step**, which `CLAUDE.md` treats as repo identity.
The rejected alternative is a designed product surface: it means a build step, a dependency
tree, and a container image that no longer builds from three files — that cost must be stated,
not absorbed.

**The finding that most directly indicts the current file:** the site's plainness is *not* what
reads as generic. Its **typeface is the Tailwind default stack** and its **gradient-clipped
headline** is the most recognisable stock hero treatment available — those two decorations are
its only genuine template tells [design §7]. The `--accent-2 #7c5cff` behind the gradient
computes to **4.41:1** and survives 1.4.3 only by being confined to large text.

The buildable direction, in priority order: **`:focus-visible` on every interactive element**
(67% of sites remove focus outlines; `:focus-visible` adoption is ~25% — the highest
signal-per-line item available) → `color-scheme: light dark` → the `--edge` token at ≥3:1 on the
hero pills → **delete the gradient headline** → body copy off the UI font stack → one type scale
(six steps, nothing below 0.875rem — the current 0.72rem tags are exactly what the
display-polarity research warns against on a dark theme) → one spacing scale replacing thirteen
magic numbers → a print stylesheet → `::selection` (hand-authored in **0 of 13** corpus sites).

**The honest counter-finding, and it matters:** `xeiaso.net` is a Tailwind build that ships
focus-visible, reduced-motion and selection styling *because the framework does*, while several
hand-rolled corpus sites ship none. **A framework can out-conform a hand-built site — so
"hand-written CSS" is not itself a craft signal and the site must never claim it as one**
[design §11.3, definitive from the fetched files].

---

## 5. What the pool says NOT to build

Recorded because a roadmap that only says yes is not a roadmap.

- **No skills/technology grid.** No site in the 21-site population carries one; it is résumé
  furniture [structure §4.6].
- **No testimonials, no services/rates page — this cycle.** Deferred to topic 9, which has the
  diagnosis this cycle supplies. The peer-standing cost of a sales surface is **unmeasured** and
  is flagged as the audience paper's weakest inference [audience G6, P11].
- **No scroll-driven animation.** Baseline *limited*; it would need a full static fallback
  [design §10.4]. **No transform-based hover lifts** — a named vestibular trigger class, and
  colour/border transitions carry the same affordance at zero risk.
- **No claimed seniority level.** Nothing on the page currently claims one; [signal §10.5 C9]
  rules that **correct as-is — do not add one.**
- **No number without a measurement window,** and no availability claim without the instrument
  named.

---

## 6. Where this synthesis is weakest — read before acting

The pool argued against itself well. These are the readings that would most change the roadmap.

1. **The counter-case that prose is the wrong investment.** The case-study paper's own strongest
   source found employers preferring **activity traces** — commits, accepted contributions,
   public CI — over authored self-description, precisely because authored material is
   manipulable [case-study B7]. A reader who concludes *"publish the repos first, write second"*
   is making an argument that paper's best evidence supports. The pool's answer is narrow: three
   dead links are a live negative **now**, so the prose is non-optional — but the ordering is
   genuinely contestable.
2. **The three-audience-balance premise is contradicted by the pool's strongest source.** NN/g:
   *"Avoid writing for everyone. When you write for everyone, you write for no one."*
   Progressive disclosure resolves depth conflicts; it does not resolve *purpose* conflicts. A
   single artifact cannot be simultaneously persuasive (client) and unpersuasive (peer)
   [audience §10.1]. **This is a premise of the dispatch, not a finding — and it may be wrong.**
3. **The signalling argument may be decaying under LLMs.** The assessment-vs-conventional
   distinction rests on a 2013 study and depends on artifacts being costly to produce. In 2026,
   plausible code, READMEs and case studies are cheap — which would shift discriminating
   evidence toward what is still expensive: a *running* system, third-party corroboration,
   specific failure narratives. No study measuring this was found [audience §10.3, G7].
4. **Every exemplar in the case-study paper is an organisation.** Cloudflare, GitLab, Discord,
   Oxide, Tailscale — all import institutional credibility before the first sentence. **No
   source studies how the same format performs from a sole operator**, and the sections that
   read as *rigour* from a company may read as *over-formality* from an individual
   [case-study B3, G5].
5. **Portfolios may matter less than this exercise assumes.** If the deflationary read is right
   — for infra/backend roles a portfolio is a tiebreaker, not a screen — the buildout is a
   medium-value investment for the hiring audience, concentrating its value in the peer and
   client legs. That is a legitimate reason to **cap** the effort [audience §10.6].
6. **The design direction cuts against the operator's evident preference.** The site is dark;
   the peer-reviewed polarity evidence favours positive polarity. Shipping both schemes doubles
   the theme-maintenance and contrast-audit surface. A defensible alternative is **dark-only,
   executed well** — larger base type, no small text, no pure white. *"The evidence does not
   force the two-theme answer; it forces the don't-ship-small-text-on-dark answer"*
   [design §11.4].

---

## 7. Homeless findings

*Per [Research Standard §7](../../research/research_standard.md), a candidate with no home is
named here rather than parked elsewhere. The reviewer disposes.*

**H-1 — This repo has no planning surface for a product-direction candidate to land in.**
§7's HOME table routes phase-doc and roadmap candidates to *a planning run*, and standards
amendments to *a roadmap's "Standards-amendment candidates" section*. **This repo has no
roadmap, no phase docs, and no epic breakdown** — verified by `find docs -type f`, which returns
only `file_structure.txt` and the standards/research trees. Every Tier-2 and Tier-3 item above
is therefore a candidate whose named home does not exist. They are in
[`candidates.md`](candidates.md), which is the durable surface, but **the surface that converts
a candidate into sequenced work is missing** and no research run may create it.

**H-2 — The trajectory in §2 has nothing to be codified into.** The research workflow's own
Stage 4c refers to `problem-statement.md` as *"the thesis every other document derives from"*
and forbids research from editing it. **This repo has no `problem-statement.md`.** The pool was
commissioned precisely to supply a thesis, and there is no artifact for the operator's ruling to
land in — so the thesis would live only in a synthesis that the next cycle overwrites. This is
the gap that most threatens the value of this entire cycle.

**H-3 — The operator's objective was never specified, and it re-ranks the whole roadmap.**
Employment, clients, or neither? [signal G8] names this as the cheapest gap on its list to close
and one that materially changes the recommendation: if the goal is a job search on a deadline,
the highest-leverage artifact is a résumé and a LinkedIn profile, not an 8-section site
[structure §5.5]; if the goal is client work, a portfolio is the wrong artifact class entirely.
**No amount of further research produces this answer.** It is in [`direction.md`](direction.md)
as D-001 because it is a ruling, not a finding.

---

## 8. Action candidates

Sized for a standup. **Every one is a proposal, not a decision.** All are recorded durably in
[`candidates.md`](candidates.md) (C-NNN) with `decision` left blank — untriaged is the truth.
Belief-level items are in [`direction.md`](direction.md) (D-NNN) for the operator.

**ADOPT** — the pool supports building these
- **C-001 / C-002 / C-003** — Tier 0: correct the degree, remove the dead links and placeholder
  tile, close the two conformance defects. *Cheapest credibility available; the site's largest
  current deficit.*
- **C-004** — Run the measurement/recall backlog **before** writing any case study.
- **C-005** — Adopt the 8-section IA (§3 Tier 2).
- **C-006** — Adopt the 10-section case-study template (§3 Tier 3).
- **C-007** — Ship the MDC case study first and make one `Write-up →` link resolve.
- **C-008** — Rewrite hero + About into objective register, carrying the §2 thesis line.
- **C-009** — State the production-dependency fact plainly (what runs, for whom, since when).
- **C-010** — Add a plain-email contact affordance; ship contact, defer the pitch.
- **C-011** — Add per-project status/recency and honest maturity labels; link every project
  outward or say plainly that it's private.
- **C-012 / C-013 / C-014** — The design work: delete the gradient and move off the default font
  stack; adopt the token system (type scale, spacing scale, colour tokens, both schemes); ship
  the detail craft items (`:focus-visible`, `::selection`, print stylesheet, optical link
  details).

**CHANGE DIRECTION** — the pool contradicts the current approach
- **C-015** — Demote the project-tile grid from the site's central move to a curated support
  section. *0 of 21 respected engineer sites lead with tiles; the caveat in §1.1 applies.*
- **D-002** — The site's job is the **conversation**, not the screen. This reframes what the
  portfolio is for and is the operator's to accept or reject.

**NEW CONCEPT**
- **C-016** — A write-ups index as a first-class section (not a blog). *An abandoned blog with a
  stale last-post date is worse than no blog — this is the section most likely to rot.*
- **C-017** — Create a planning surface for this repo so direction candidates have somewhere to
  become sequenced work (H-1). *A research run may not create it.*

**NO CHANGE** — explicitly ruled correct as-is, so a later cycle doesn't re-litigate
- The footer line `"built & self-hosted on my own cloud"` — the best line on the current site.
- The absence of any claimed seniority level — correct; do not add one.
- The hero's outbound GitHub/LinkedIn links — an isolated site reads as concealment.
- The intrinsic CSS grid and the single media breakpoint — already correct.
- **The overall minimal, deliberate visual direction** — the deficit is content, not chrome.

---

## 9. What cycle 2 should cover

From [`topics.md`](topics.md), with one re-ranking this cycle's evidence forces:

| Topic | Change |
|---|---|
| **6 — Proof surfaces for infrastructure work** | Sharpen the question: every candidate asset except the public repo / CI / image digest is *authored*, so **rank by third-party attestation, not production cost** [case-study handoff]. |
| **9 — The client-facing surface** | **Promote.** [signal §12.5] finds ROI may invert toward the client and referral audiences, which makes this more decision-blocking than its current sequencing implies. |
| **7 — The site as its own artifact** | Partly pre-empted by the design paper §8; scope it to semantic structure, landmarks, heading order, alt strategy, and field CWV measurement. |
| **8 — Discoverability & distribution** | Unchanged. |
| **NEW — Channel strategy: referral vs. screen, and employer-segment targeting** | Surfaced by [signal S11/S12]: the evidence says *targeting* may be a bigger lever than *framing*. **Surfaced, not added** — cycle 2's sizing run decides whether the 9 becomes 10. |
