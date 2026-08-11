# Synthesis — Portfolio direction (product level)

> **✔ The pool has been verified.** All five input papers went through an independent critic
> pass on 2026-08-10 — four correction rounds — and each ended at PASS on its final round.
> Each now carries the header value **`Critic: PASS-WITH-FIXES — 2026-08-10`**, which records
> that defects *were* found and repaired rather than that none existed. Every correction that
> moved a load-bearing fact has been traced into this document per
> [Research Standard §4](../../research/research_standard.md), and the corrected figure is
> stated where the claim is made.
>
> **One premise did not survive that pass, and it is the one this synthesis leaned on hardest.**
> "Two real businesses run production workloads on the platform" is an **operator-supplied
> dispatch premise, not a pool finding** — the workspace's own current-state documents qualify
> it, and the case-study paper was corrected at four sites for asserting it. §1.4 states the
> evidence; the §2 thesis line is now flagged **conditional**; C-008, C-009 and the new C-018
> carry it forward.
>
> **Nothing here is binding.** Research is evidence; only human codification into a
> standard makes anything binding ([§1](../../research/research_standard.md)).

**Cycle:** 1 of 2 — 5 of 9 topics ([`topics.md`](topics.md)). **Written:** 2026-08-10.
**Rewritten against the verified pool:** 2026-08-10.

```
Critic:  PASS-WITH-FIXES — 2026-08-10, over three rounds. This synthesis was put through the
         same gate as the papers. Nothing was found fabricated and no cited section failed to
         resolve. The numeric spine reproduced under independent re-derivation with ONE
         EXCEPTION, itemised below: the spacing enumeration, the roadmap checkbox split, the
         `docs/` inventory, the corpus counts and all five input-table verdicts against the
         actual paper headers each reproduced exactly — one in-repo count did not, and this
         gate is where it was caught. What failed was this document's own handling, in three
         recurring shapes:
         COUNTS PAIRED WITH ENUMERATIONS THAT DID NOT MATCH THEM — "all five analysts flagged
         the degree" (three did), "three analysts hit HTTP 403" (two did; the third paper
         reports a different failure), five exemplars where the source names seven, "the
         string occurs twice in `index.html`" (it occurs once — `grep -c -F 'biomedical
         informatics (M.S.)' index.html` returns 1, while `grep -c biomedical index.html`
         returns 2, because the About carries DIFFERENT characters; this is a count whose
         POPULATION was mis-specified, two distinct strings counted as one, and the remedy it
         produced was unexecutable — a fix keyed on the hero wording would have left the wrong
         degree in the About), and, in the round-1 repair of the seconds bullet, a
         parenthetical that split one of the audience paper's five reasons into three and
         dropped two others. SPANS PRESENTED AS
         QUOTATIONS THAT WERE NOT — a shortened universal form of the depth/staff claim that
         appears in no paper (and was the very form §3.6 was corrected to remove), two of this
         synthesis's own state labels in quotation marks, an inner quotation restyled, and two
         complete-sentence quotes missing their terminal period. CORRECTIONS THAT REACHED THIS
         FILE BUT NOT THE DURABLE ONES — `candidates.md` is not rewritten each cycle, and
         C-004 and C-005 still carried pre-correction breadth after the synthesis had traced
         it; a 15-pattern sweep of `candidates.md` and `direction.md` closed both and the
         seven-exemplar trace was added to C-006. Also fixed: +124% cited to the section
         carrying only +27%; a vocabulary list cited to a ruling that does not contain it; a
         self-certifying quotation convention restated as permitted rather than uniformly
         applied; "no number attributed to this platform" narrowed to "no measured quantity"
         with the structural carve-out that C-018 turns on; and an absence claim ("no seconds
         figure appears anywhere in this pool") that the pool itself falsifies. The citation
         population was re-enumerated whole-file after a line-wise grep undercounted it:
         71 citations carrying an explicit paper key, 74 including bare-section forms whose
         paper is named in adjacent prose — all resolve. Two of the verifier's own framings
         did not survive re-derivation and are corrected here rather than adopted: the
         seconds-bullet defect was worse than reported (the audience paper does not merely
         omit the figure — it quotes it, marked directional, with the funder conflict stated),
         and the loose "the string occurs twice" phrasing came from the structure paper as
         well as the signal paper, not the signal paper alone. That second point is about
         where the wording ORIGINATED; the count itself was wrong in this artifact and is
         filed under COUNTS above, so neither party is mis-scored. Round 3 found its only
         defect INSIDE THIS BLOCK: the fix record asserted that every in-repo count
         reproduced, which the "occurs twice" item contradicts — the record of the failures
         had itself acquired one, and it is logged here rather than quietly absorbed. The
         value stays PASS-WITH-FIXES deliberately: the fix record above is the point, and a
         bare PASS would erase it.
```

---

## Inputs — the pool this synthesis draws on

All five papers were written this cycle. Per the computed currency table at dispatch,
**0 of 0 papers were past their revalidation window** — the pool was empty before this run,
so nothing here is stale. No paper is retired; none is excluded.

| Paper | Last validated | Revalidate | Critic verdict — and what was fixed |
|---|---|---|---|
| [`raw/portfolio-structure-and-content.md`](raw/portfolio-structure-and-content.md) | 2026-08-10 | medium — 3 months | **PASS-WITH-FIXES — 2026-08-10** (four rounds). Its own counts, not its sources: a project-entry total (17 → 14); the contact-affordance count, asserted with no criterion (4 → **3**, criterion now stated, 5-of-21 alternative disclosed); every whole-page word count demoted to APPROXIMATE; two in-repo transcription errors; and **§5.1's mischaracterisation of NN/g's own page-type list, which excluded blogs the source names**. Three of the verifier's own numbers were re-derived and *rejected*. |
| [`raw/case-study-craft-for-systems-work.md`](raw/case-study-craft-for-systems-work.md) | 2026-08-10 | medium — 3 months | **PASS-WITH-FIXES — 2026-08-10**. Nothing fabricated; 21 cited URLs all HTTP 200. Fixed: four over-promising self-certifications, two gap findings with no stated search method, five quoted spans whose characters did not match, and — **load-bearing here** — an **uncited production-status claim about the platform, corrected at all four sites that carried it** (§6.3, §7.3, §8.0, §8.1). One reported defect was rejected on re-fetch. |
| [`raw/audience-calibration-and-anti-patterns.md`](raw/audience-calibration-and-anti-patterns.md) | 2026-08-10 | medium — 2 months | **PASS-WITH-FIXES — 2026-08-10**. All 20 sources fetched; nothing fabricated, no confidence mark inflated. Fixed: a tag count, a truncated Stanford guideline-9 quote (with A9/C3/P11/**G6** weakened to match the thinner leg), a Fogg-table declaration, and **G3's population widened from six sections to all eight documents** — the zero-match result holds across all eight. A round-2 over-correction was itself repaired and logged. |
| [`raw/design-language-2026.md`](raw/design-language-2026.md) | 2026-08-10 | **high — 6 weeks** | **PASS-WITH-FIXES — 2026-08-10** (three rounds). No fabricated source; 18 contrast ratios and 15 Baseline rows re-verified. Every defect was a count or a label: the **spacing-value tally (thirteen → 20 distinct values / 24 occurrences)** and font-size tally over `style.css`, and the `color-scheme`, **hand-rolled-conformance (→ six of eight)** and heading-line-height tallies over the corpus, all re-enumerated. Round 3 corrected two false statements the paper's *own round-2 repair* had introduced. |
| [`raw/self-built-system-as-senior-signal.md`](raw/self-built-system-as-senior-signal.md) | 2026-08-10 | medium — 3 months | **PASS-WITH-FIXES — 2026-08-10**. No fabricated source, no misattribution; four of five seniority artifacts re-verified span-by-span against cloned repositories. Fixed: one quotation that had absorbed a word from the next sentence, several verification-apparatus inaccuracies, two wrong retrieval-failure diagnoses, and — **load-bearing here** — **one framework claim stated as universal that [S7] falsifies, now scoped (§3.6) with its consequences traced through §4.3 and §11**. |

**The 6-week interval on the design paper sets this synthesis's own shelf life.** That paper
marks one High-tier section (a CSS Baseline feature-availability table); the rest of its
content decays far slower. Only §4 below depends on it.

**Quotation convention in this document (§3 exactness rule).** Every span presented in quotation
marks below was matched as an exact character sequence — by `grep -F` against the pool paper, the
in-repo file, or the workspace document named alongside it, with line-wrapping whitespace
collapsed. **Two normalisations are PERMITTED, and are used only where noted rather than applied
uniformly:** (1) markdown emphasis markers (`*`, `**`) inside a quoted span may be stripped or
retained, since the sources are markdown and the markers are formatting rather than words —
§1.2's `**smaller**` retains them, most spans do not; (2) where a quoted string is the *rendered*
form of an HTML source (the footer line in §3 Tier 2.8), that is stated and the source characters
are printed alongside. **Nothing else is altered** — apostrophes, inner quotation marks,
punctuation and casing are the source's.
**Where a phrase is this synthesis's own label rather than a source's words, it carries no
quotation marks** (§9's "unread, route recorded" and §1.6's description of the superseded
universal are labels; a verifying pass found both presented as quotations and they were repaired).

---

## 1. What the pool says, in one page

Six headline findings, enumerated below as items 1–6. **"Convergence" is claimed only where it
was checked.** Items 2 and 3 are reached separately by more than one paper and that is worth more
than any single claim, because none of these analysts saw another's work. Items 1, 4, 5 and 6 are
each **one paper's finding**, carried here on that paper's own evidence and confidence marks —
they are not corroborated by the pool and are not presented as if they were.

**1. The site's current shape is the wrong shape — and this is the pool's strongest observation.**
Across 21 enumerated engineer sites, **15 lead with a reverse-chronological writing list, 6 with
a short identity block, and 0 with project tiles** — the current site's central move
([structure §2.2], definitive as an observation of that population; the generalisation is
derived). The honest caveat is in the same paper: the population self-selects for engineers who
*write*, so this is strong evidence that writing-first works for writers and only weak evidence
that tile-first fails ([structure §5.3]).

**2. The deficit is content and evidence, not chrome. Two papers state it; three more reach the
adjacent ordering claim.** Checked by grepping all five papers rather than asserted: the phrase
and the finding are the audience paper's — *"The deficit measured here is content and evidence,
not chrome."* [audience §10.7; its P10 row states the shorter form, *"the deficit is content, not
chrome."*] — and the design paper reaches the
same place from the other side, its own strongest counter-argument being that visual design is
*permissive, not productive*: bad design costs credibility, good design mostly fails to buy it,
and *"a reader who concludes "spend the effort on case-study content instead" is not misreading
the evidence"* [design §11.1]. The other three do not make the chrome claim at all; what they
each independently reach is the **ordering** claim — content and measurement gate the buildout
[case-study B1: *"the build plan sequences measurement first"*; signal §10.6: *"The first build
task implied by this paper is measurement and recall, not writing"*; structure §5.5: without the
write-ups, *"the honest structure is **smaller** than today's site, not larger"*].
The audience paper's boundary section names **four** things the current site already gets right
— short, not promotional in layout, links outward to GitHub and LinkedIn from the hero, design
deliberate rather than templated (counted off §10.7's own list) [audience §10.7].
**A redesign is not the highest-value work available.**

**3. Dead links are the highest-confidence, lowest-cost defect in the pool.** Stanford's
web-credibility guideline 10 — *"Avoid errors of all types, no matter how small they seem."* —
and NN/g's 2016 re-test both land here, and Fogg's prominence qualifier makes it *worse*, not
better: a broken link damages credibility if noticed, and these sit on the primary
call-to-action of every tile [audience §6.1 A1]. Enumerated in-repo (`grep -c 'href: "#"'
projects.js` → 3 — the source form is the JS property `href: "#"`, rendered into an `href="#"`
attribute at `projects.js:48` [signal §10.5 C5]): **3 dead depth-links, and
1 of 4 tiles is the literal placeholder** `"Add your next project"` publishing the site's own
build instructions as content.

**4. The strongest available asset is currently unstated — *and its factual precondition is an
operator-supplied premise, not a pool finding.*** Read the conditional before the claim.

*The claim, as the pool makes it:* a solo-designed, solo-operated private cloud **with two real
businesses running production workloads on it** would be close to a pure *assessment signal* in
Marlow & Dabbish's sense — costly to produce, hard to fake, checkable — sitting on a different
axis from the *conventional* signals (titles, tenures) a résumé carries. The audience paper marks
that whole section **[derived** — *"inputs: S11, S12, S13, S14, plus the dispatch's description of
the subject. No source addresses this individual."*] [audience §8]. So the production-dependency
fact enters this pool as **a premise supplied by the dispatch**, and no paper established it.

> **⚠ The in-repo evidence currently qualifies that premise.** The case-study paper was corrected
> at four sites (§6.3, §7.3, §8.0, §8.1) for asserting it uncited, and §8.1 now says plainly:
> *"Do not fill the Status slot with "in production; two businesses run on it" — the workspace's
> own current-state docs contradict both halves, and this is precisely the overstatement §6.3
> warns about."* The documents it points at, each re-verified for this synthesis:
>
> - `/opt/skyy-net/CLAUDE.md` heads its topology section **`### Three K3s Clusters (planned)`**
>   and records the control plane as running *"as K3s pods on the temporary **k3s-0** bootstrap
>   cluster (Skyy-Command VM) today"* (`grep -n`, lines 36 and 22).
> - `/opt/skyy-net/algorithm-and-sons/CLAUDE.md` line 7: *"**Repo status:** founding/planning
>   phase. Docs lead; code follows ratification."*
> - `.../algorithm-and-sons/docs/development/roadmap.md` line 3: *"**Founding DRAFT — not yet
>   ratified.**"* — with **1 checked box and 20 unchecked**, reached by enumerating every
>   `- [x]` / `- [ ]` line and counting the enumeration (checked: L38; unchecked: L39–46, L58–61,
>   L63, L80–86 = 8 + 4 + 1 + 7).
> - `.../docs/development/phase1_deploy.md` L47: a platform backup gap gates the real-books
>   cutover and *"P1 otherwise runs testing-only (synthetic data) until it lands"*; L127:
>   *"Rue onboards in P2"* — P1 stands up one business's books (HelloSky). (The
>   *"onboards as the 2nd ERPNext `Company`"* wording is `roadmap.md` L60, in its **P2** block —
>   not `phase1_deploy.md`, where the dispatch placed it.)
>
> **This synthesis does not rule on whether the businesses are in production — the operator knows
> and this pool does not.** What it rules on is that the fact was **asserted here as a finding
> when no paper established it**, and that in-repo evidence points the other way as of
> 2026-08-10. Everything below that depends on it is conditional on the operator confirming it.

*What survives unconditionally:* the site currently says only *"the businesses I run on top of my
own infrastructure"* (`grep -c -F` against `index.html` → 1) — passive, unnamed, unquantified,
and reading as hobby framing. **Naming what runs on the platform, for whom, and since when is
still the pool's single highest-value unused sentence — at whatever the true current state is.**
The case-study paper supplies that honest form: a status sentence about *the platform, not its
tenants* — what is built, what is bootstrap-temporary, what is next — which *"gets stronger, not
weaker, when the drafting date is on it"* [case-study §8.1].

**5. The evidence points the *other way* on hiring — and this reorders everything.** A field
experiment across 2,400 software engineering positions found candidates with founder experience
received **43% fewer callbacks**; a separate résumé-audit study traced the mechanism to employer
beliefs about **fit and commitment, not competence** [signal §0, definitive as to what those
studies report; the transfer to a solo operator is that paper's largest inferential leap and is
declared as gap G3]. Neither studied portfolios or infrastructure platforms. But the best
available evidence says the discount is real and operates at the screen — so **the site's job is
to win the conversation a referral grants, not to win the screen.** A paper that buried this
under framing advice would be advocacy, and the analyst said so.

**6. The claim ceiling is lower than the platform's apparent scope — on a premise now narrower
than this synthesis previously stated, and the conclusion survives the narrowing.** Read against
five published seniority frameworks (SFIA 9, Dropbox, GitLab, engineeringladders, StaffEng — all
fetched first-party), levels separate on **scope, horizon, consequence and organisational
reach**. This synthesis previously added that technical depth does not separate senior from staff,
stated without qualification — **that universal was falsifiable in one step against a framework
the paper itself quotes, and §3.6 was corrected to carry its scope on its face.** It now reads,
exactly: *"Technical depth is not what separates the senior band from the staff band — in the sources that have a staff band."* And the sources divide:

- In every source that **names** a Staff level, the senior→staff delta is reach and horizon, not
  depth (Dropbox IC4→IC5; GitLab Senior→Staff; StaffEng's organisational recognition).
- **SFIA 9 has no "Staff" level** — the word does not appear in its levels-of-responsibility text
  — so the analogous delta is **L5 → L6**, and there it is reach and horizon again.
- **engineeringladders is the genuine exception and is stated as one:** no Staff level at all
  (Developer D1–D7), plus a **dedicated five-level Technology axis that does not saturate** — its
  level 4 *"Masters"* and level 5 *"Creates"*. A solo operator **can** climb that depth axis
  [signal §3.6].

**The ceiling is unchanged, and §4.3 says why:** the structurally-unavailable set is *entirely*
organisational — influence over teams, delegation, mentorship, recognition — so a climbable depth
axis *"adds to the first bullet and takes nothing off the second"* [signal §4.3]. A solo-built
production platform genuinely evidences scope, ambiguity, complexity, horizon and system
ownership, and **cannot evidence organisational reach at all**. Claiming "staff-level" invites a
check the evidence fails in one step. The defensible move is to state the artifact and let the
reader do the rating.

### What the pool did NOT find — stated as findings, not omissions

- **No controlled study of personal engineering portfolios exists** that any analyst could
  locate (searched via targeted academic search, URL-probing of NN/g's article namespace, and
  Crossref/Semantic Scholar lookups — method stated at [structure §5.1]). **Every "therefore the
  portfolio should…" recommendation in this synthesis is derived**, not measured.
  **Correction — this synthesis previously narrowed the transfer gap the wrong way.** It said
  every NN/g finding used here was collected on page types that excluded blogs; §5.1 was
  corrected for exactly that, because the scrolling study quoted in the same sentence lists its
  own page types as *"including news, ecommerce, blogs, FAQs, and encyclopedic pages."* **Blogs
  are in that population, and 15 of the 21 sites are blogs by structure** — so the scrolling
  finding crosses no genre boundary at all. **The gap narrows; it does not close:** the study
  reports no blog-only breakdown, so how much of the 57%/74% distribution came from blog pages is
  not recoverable, and the other NN/g findings this pool leans on (homepage principles, B2B,
  About-Us) carry **no** blog population. The one-person-portfolio transfer remains inference
  [structure §5.1].
- **The "recruiters spend N seconds" statistic is unfalsifiable as published, and no
  recommendation here rests on it.** Enumerated across all five papers rather than asserted:
  **two** analysts hit **HTTP 403** on the primary vendor artifact — case-study G2 and structure
  §5.4, the latter on two independent retrieval paths — and a **third**, the audience paper,
  reports a different failure: both press releases fetched fine, and both point to "TheLadders
  Blog" for the whitepaper, which no longer resolves to the artifact [audience G2].
  **Two corrections to what this synthesis previously said here, both of which overstated the
  case:**
  - It said *three* analysts hit 403. Two did. The audience paper's only 403s are on Lindgaard
    et al., a different source [audience G4].
  - It said **no seconds figure appears anywhere in this pool**. That is false twice over. The
    audience paper **does** carry the vendor claim, quoted from the press release —
    *"recruiters spend just six seconds reviewing a resume"* — marked **[directional], and only
    just**, with **five** stated reasons to distrust it. Those five, enumerated off the paper's
    own numbered list rather than glossed: **(1)** the funder is a company selling résumé
    services and job-search subscriptions; **(2)** no sample size is stated, only "dozens";
    **(3)** no sampling frame, instrument, or analysis method is published — *one* reason, not
    three; **(4)** the underlying whitepaper is not retrievable; **(5)** the 2018 release
    attributes the 6→7.4 second change to macroeconomic conditions without presenting a design
    that could isolate it [audience §4.2, S14, S15]. *(An earlier version of this bullet split
    (3) into three and dropped (4) and (5) — pairing the count "five" with an enumeration that
    was not those five, and losing (4), which is the same unretrievability this bullet's first
    half is about.)*
    Separately, unrelated seconds figures are load-bearing elsewhere in the pool and are fine:
    NN/g's *"4.4 seconds more for each additional 100 words"* [case-study, structure] and the
    LCP threshold of 2.5s [design §8.1].
  **The correctly-scoped instruction, which is what downstream documents should carry:** *no
  recruiter-attention seconds figure may be asserted as measured fact.* If one is mentioned it
  carries the funder conflict and the missing methodology with it, as the audience paper does —
  and it carries the paper's sharper closing point too: **it is not evidence about portfolios at
  all** — *"it is about résumés"* [audience §4.2].
- **The homelab discount itself is unevidenced.** No credible primary source was found for the
  mechanism everyone assumes; the mechanism table is explicitly derived [signal §5.4, G1].
- **No study measures what engineers infer from a site's visual design.** The craft-vs-template
  distinction is folklore the analyst believes and could not evidence [design §11.2, G3].
- **A circulating "2024 Stack Overflow Developer Survey" portfolio statistic does not exist in
  that survey.** The enumeration was corrected and the population is now **the 2024 landing page
  plus every `/2024/<section>` link it carries — `ai`, `community`, `developer-profile`,
  `methodology`, `professional-developers`, `technology`, `work` — eight documents in all**, each
  fetched (HTTP 200) and grepped case-insensitively: **`portfolio_matches=0` on all eight**
  [audience G3]. The earlier "six sections" reading was short by two documents; **the negative
  finding survives the widening and is stronger for it.** Worth recording because it is this
  topic's signature contamination — a fabricated statistic circulating under a real survey's name.

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
copy into plain fact scored **+27% on its own** [audience §6.1 A3] **and +124% combined with
concision and scannability** [audience §7 item 2 — the two halves are at different sections and
this synthesis previously cited both to A3]. Words that go, each traced to the ruling that names
it: *enterprise-grade* [audience C7; signal §10.5 C2], *from scratch* [signal §11, "Weak; use at
most once"; §10.5 C3], *whole systems, not just pieces* [audience §6.1 A3's in-repo note and A14].
Words that stay: *K3s, Ceph, Temporal, ArgoCD* — precise, checkable, load-bearing [audience C7,
whose own cut list is *enterprise-grade, robust, cutting-edge*].

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

### The thesis line the site should carry — **CONDITIONAL, and the condition is factual**

> **I design, build, and operate production infrastructure end to end — and two real businesses
> run on the platform I built.**

Per-clause rationale in [signal §10.1]: *operate* is the verb nearly always missing from
self-directed work and is the one the engineeringladders System axis calls ownership;
*production* routes the artifact into the competence rubric rather than the leisure rubric; *two
real businesses* supplies consequence, external stakeholders, and the answer to "self-graded" in
one clause. It deliberately does not say *staff-level*, *principal*, *enterprise-grade*, *from
scratch*, or *homelab*.

> **The structure of this line is sound. Its factual precondition is unverified — see §1.4.**
> The second clause is exactly the kind of claim this synthesis's own first commitment says a
> reader should be able to check. If it is not true in the sense a reader would check it, then
> publishing it is **the inflation the case-study paper's §6.3 warns against**, on a site whose
> entire recommended strategy is that every surface sentence be checkable. That paper names this
> failure class directly: *"A status adjective standing in for a status date ("in production") —
> it reads as a measurement and is not one. State what runs, for whom, and as of when"*
> [case-study §6.3], and it declines to fill the slot on its own worked example for this reason
> [case-study §8.0, §8.1].
>
> **Two ways forward, and the operator picks:** (a) confirm the fact and publish the line with
> the anchor [signal §10.2] recommends — the two businesses named, then the stack; or (b) publish
> the platform-side status sentence dated to the day, per [case-study §8.1], and add the tenant
> clause when it is true. **Option (b) is not a weaker site** — a dated, specific, checkable
> status line outperforms an unfalsifiable one with every audience in this pool
> [audience §6.1 A2, C2; signal §10.5 C2].

---

## 3. The FEATURE / SECTION ROADMAP — prioritized

*Required output #1. Ordered by (evidence strength × current deficit × cost). Every item names
the paper backing it. **This ordering is derived** — it is this synthesis's inference across the
pool.*

### Tier 0 — Correctness. Nothing else is worth doing first.

| # | Build | Why — evidence |
|---|---|---|
| **0.1** | **Correct the degree — in two places, and they are not the same string.** `index.html` **L16** (hero tagline) carries `biomedical informatics (M.S.)`; **L35** (About) carries `an M.S. in biomedical informatics.` The dispatch states **M.S. Computer Science**. | **Three of the five analysts flagged it independently, unprompted** — corrected from "all five", which nothing had checked. Enumerated by grepping every paper for `biomedical` / `M.S.` / `degree` / `computer science`: **audience** [§6.1 A7], **structure** [§0, out-of-scope observation], **signal** [§10.5 C1]. The case-study and design papers do not mention it at all — expected, since neither audits page copy. Three independent flags is still the strongest agreement in the pool. It is the most checkable claim on the page, and an error there discredits the unverifiable ones. **This is NOT a single string replacement:** `grep -c biomedical index.html` returns **2**, but `grep -c -F 'biomedical informatics (M.S.)' index.html` returns **1** — the two lines carry two different strings. A fix keyed on the hero wording silently leaves the wrong degree in the About. `CLAUDE.md` makes content operator-owned — **surfaced, not edited.** |
| **0.2** | **Remove the 3 dead `href: "#"` links and the `"Add your next project"` placeholder tile.** Ship the write-up or drop the affordance — never both-and. | Highest-confidence, lowest-cost item in the pool [audience P1; structure P8; signal C5, C8]. |
| **0.3** | **Close the two live conformance defects:** `--border #262a35` at **1.34:1** is the sole boundary identifying the hero pill controls (WCAG 1.4.11 requires 3:1); `scroll-behavior: smooth` ships unconditionally with **zero** `prefers-reduced-motion` queries. | Both computed from the live `style.css`, not asserted [design §10.2, §10.4]. A site whose thesis is "I build infrastructure correctly" cannot ship a conformance defect. |

### Tier 1 — The measurement backlog. This gates the good sections.

| # | Build | Why — evidence |
|---|---|---|
| **1.1** | **Measure, then write.** Platform availability over a stated window with the instrument named; an SLO for at least one user-facing service per business; the continuous production start date; provisioning and rebuild-drill timings; declared-state coverage by enumeration. | **The strongest sections of the recommended case study require numbers that do not exist yet.** Both relevant papers left every numeric slot as an explicit `MEASURE:` placeholder and attributed **no measured quantity** to this platform — *"no timing, no uptime, no throughput, no enumerated inventory"* [case-study Read-this-first, §8.5, B1; signal §10.6, G9]. **Read the scope precisely:** the case-study paper does carry two **non-measured structural descriptors** — "three K3s clusters" and the two businesses — sourced to the operator's own in-repo content rather than asserted, with their current build status stated. The bar is *measured vs. structural*, not *number vs. no number*; "three K3s clusters" is a number, and C-018 is about exactly that clause. |
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
| **2.7** | **Contact — a plain email, not a pitch** | The pool splits these deliberately: a *contact affordance* is universally rewarded and cheap; *sales copy* is what costs peer standing — but read [audience C3] with G6's client-side counter-evidence (§5), not alone. **Know what the population does before adopting this:** only **3 of 21** sites carry a *named* contact/availability affordance on the landing page — **5 of 21** if a bare email glyph in a social-icon row counts, and the paper uses 3 throughout [structure §2.3]. The rarity is **confounded** — most of the 21 are salaried with nothing to sell [structure §5.2] — so it is a caution, not a veto. | Clients convert here |
| **2.8** | **Footer** | Keep `built & self-hosted on my own cloud` — [signal §10.5 C7] calls it **the best line on the current site**: self-demonstrating, and the page you are reading is the evidence. *(That is the **rendered** text; the source characters at `index.html:47` are `built &amp; self-hosted on my own cloud.` — the entity is unescaped in both this synthesis and the signal paper, which is a normalisation, not a byte-exact quotation.)* | — |

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
display-polarity research warns against on a dark theme) → one spacing scale replacing the
**20 distinct `px` values** in the current file → a print stylesheet → `::selection`
(hand-authored in **0 of 13** corpus sites).

**Corrected count, and it changes the proposal's shape.** The tally of *thirteen* magic numbers
this synthesis previously carried was wrong. Re-enumerated in [design §4.2] — every non-zero `px`
literal in a `padding` / `margin` / `gap` declaration, `border-radius` deliberately excluded —
`style.css` holds **24 spacing occurrences at 20 distinct values** (2, 3, 6, 8, 9, 10, 12, 14, 16,
18, 20, 22, 24, 28, 36, 40, 52, 56, 64, 96), across 20 declarations on 17 source lines. **The
nine-token scale still fits** — 4/8/12/16/24/32/48/72/96px against an observed 2–96px span — but
[design §10.3]'s re-check names the real design consequences, and they are the first thing to look
at when the change is built: `52→48` and `56→48` (footer padding, hero bottom padding), `64→72`
(mobile hero top), and — **the largest single swing, and the one the enumeration makes easy to
miss** — `40px`, the mobile hero's bottom padding, is an **exact tie**, 8px from `--s-6` (32) and
8px from `--s-7` (48), so the scale does not pick for you and either choice moves that edge by
more than the 52→48 shift. **A tenth step would remove the tie and is a defensible alternative**;
the paper chooses nine so its own read-the-stylesheet test is easier to pass, and marks the step
count **[derived]** — no source prescribes one.

**The honest counter-finding, and it matters:** `xeiaso.net` is a Tailwind build that ships
focus-visible, reduced-motion and selection styling *because the framework does*, while
**six of the eight hand-rolled corpus sites — antirez, danluu, jvns, matklad, simonwillison,
sivers — ship none of the three** (the two exceptions ship exactly one each: adactio has
`:focus-visible`, lucumr has `prefers-reduced-motion`). **A framework can out-conform a hand-built
site — so "hand-written CSS" is not itself a craft signal and the site must never claim it as
one** [design §11.3, §7; **definitive** on the per-file grep results, **derived** on the
falsification].

---

## 5. What the pool says NOT to build

Recorded because a roadmap that only says yes is not a roadmap.

- **No skills/technology grid.** No site in the 21-site population carries one; it is résumé
  furniture [structure §4.6].
- **No testimonials, no services/rates page — this cycle. And the evidence is no longer
  one-sided; read both halves before treating this as settled.** Deferred to topic 9, which has
  the diagnosis this cycle supplies.
  - *The peer side is unmeasured.* No cited source measures how a **technical peer** reads a
    **commercial surface** on an **engineer's personal site**. The inference rests on [S2]'s
    measurement of promotional *register* — not a sales *page* — and on a Stanford guideline
    whose body is chiefly about advertising. This is flagged as the audience paper's weakest
    inference and the row most likely to be overturned [audience G6, P11, §6.1 A9].
  - *The client side has a **measured cost of omission**, pointing the other way.* [S5] records a
    participant rejecting a cleaning service **in 35 seconds** specifically because it published
    no rate — *"they don’t state the rate here, they want us to actually write to them. So I feel
    they are not open enough."* — and reports a company's own **portfolio page costing it
    credibility** by showing only large clients. On testimonials it is two-sided: on-site
    testimonials are read but discounted against third-party review sites, while [S6] still
    recommends carrying honest ones and cross-referencing external sites [audience G6].
  - **All of that inherits the corporate-site caveat** (G5: corporate sites, client-side
    participants, not an engineer's personal site). **Net:** the deferral is *"a bet against
    unmeasured peer cost, taken over a measured client cost of omission"* [audience G6] — a
    legitimate bet for this cycle, not a finding that a sales surface costs you.
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
4. **Every exemplar in the case-study paper is an organisation.** All seven, enumerated from B3
   rather than sampled: Cloudflare, GitLab, Discord, Segment, Google, Oxide, Tailscale — each
   imports institutional credibility before the first sentence. **No source studies how the same
   format performs from a sole operator**, and the sections that read as *rigour* from a company
   may read as *over-formality* from an individual [case-study B3, §11 G5].
5. **Portfolios may matter less than this exercise assumes.** If the deflationary read is right
   — for infra/backend roles a portfolio is a tiebreaker, not a screen — the buildout is a
   medium-value investment for the hiring audience, concentrating its value in the peer and
   client legs. That is a legitimate reason to **cap** the effort [audience §10.6].
6. **The design direction cuts against the operator's evident preference.** The site is dark;
   the peer-reviewed polarity evidence favours positive polarity. Shipping both schemes doubles
   the theme-maintenance and contrast-audit surface. A defensible alternative is **dark-only,
   executed well** — larger base type, no small text, no pure white. Quoted exactly as the paper
   writes it — the previous rendering here silently dropped the inner quotation marks and
   hyphenated the phrase, so the span was not verbatim:
   *The evidence does not force the two-theme answer; it forces the "don't ship small text on dark" answer.*
   [design §11.4]
7. **The sales-surface deferral in §5 rests on an asymmetry, not on evidence of harm.** The
   peer-side cost of *including* a commercial surface is unmeasured; the client-side cost of
   *omitting* one is measured, on corporate sites [audience G6, §6.1 A9, P11]. A reader who
   concludes the site should carry rates and a services page **is not contradicting this pool** —
   they are weighting the measured side. This is the reading most likely to overturn §5, and
   topic 9 is where it gets decided.

---

## 7. Homeless findings

*Per [Research Standard §7](../../research/research_standard.md), a candidate with no home is
named here rather than parked elsewhere. The reviewer disposes.*

**H-1 — This repo has no planning surface for a product-direction candidate to land in.**
§7's HOME table routes phase-doc and roadmap candidates to *a planning run*, and standards
amendments to *a roadmap's "Standards-amendment candidates" section*. **This repo has no
roadmap, no phase docs, no sprint file and no epic breakdown.** Verified by enumerating
`find docs -type f` and reading the list — **14 files**, and every one is either the annotated
repo map (`docs/file_structure.txt`), the **vendored Research Standard**
(`docs/standards/research/research_standard.md` + its `README.md` — a verbatim mirror this repo
carries because the research workflow reads the artifact contract locally, per `CLAUDE.md`), or
this research tree (`docs/standards/architecture/research/`: `README.md`, `topics.md`,
`synthesis.md`, `candidates.md`, `direction.md`, five papers and a `.gitkeep` under `raw/`).
A repo-wide `find` for `*roadmap*`, `phase*`, `sprint*`, `*epic*` and `*problem-statement*`
returns **nothing**. Note what that inventory means: the only standard present is the one
governing *this* research, so there is not even a standards document for an amendment candidate
to attach to. Every Tier-2 and Tier-3 item above
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
- **C-008** — Rewrite hero + About into objective register. **The register half is unconditional;
  the thesis line's second clause is not** — see §2 and C-009.
- **C-009** — State the production-dependency fact plainly (what runs, for whom, since when).
  **BLOCKED on establishing the fact, not only on C-004's "since when".** §1.4 has the in-repo
  evidence; until the operator confirms it, the buildable form is the platform-side dated status
  sentence [case-study §8.1].
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
- **C-018 — NEW, and it is live on the site today.** Reconcile the platform copy already
  published in `projects.js` ("Proxmox + three K3s clusters…") with the workspace's own
  current-state docs, which mark that topology **`(planned)`** and record the control plane on a
  temporary bootstrap cluster. *No existing candidate owns this:* C-002 covers dead links, C-008
  covers register, C-009 covers a sentence that is not yet on the page — **this is about a
  checkable claim that is on the page now.** Evidence in §1.4. Content is operator-owned;
  surfaced, not edited.

**NO CHANGE** — explicitly ruled correct as-is, so a later cycle doesn't re-litigate
- The footer line `built & self-hosted on my own cloud` — the best line on the current site
  (rendered form; source is `built &amp; …` at `index.html:47` — see §3 Tier 2.8).
- The absence of any claimed seniority level — correct; do not add one.
- The hero's outbound GitHub/LinkedIn links — an isolated site reads as concealment.
- The intrinsic CSS grid and the single media breakpoint — already correct.
- **The overall minimal, deliberate visual direction** — the deficit is content, not chrome.

---

## 9. What cycle 2 should cover

*This is a **topic-scoping section, not a test plan**. §3 requires a test plan of each* paper *,
and each of the five carries its own — the questions research cannot settle live there, not here.
What follows is which topics cycle 2 should run and how this cycle's evidence re-ranks them.*

From [`topics.md`](topics.md), with one re-ranking this cycle's evidence forces:

| Topic | Change |
|---|---|
| **6 — Proof surfaces for infrastructure work** | Sharpen the question: every candidate asset except the public repo / CI / image digest is *authored*, so **rank by third-party attestation, not production cost** [case-study handoff]. |
| **9 — The client-facing surface** | **Promote.** [signal §12.5] finds ROI may invert toward the client and referral audiences, which makes this more decision-blocking than its current sequencing implies. |
| **7 — The site as its own artifact** | Partly pre-empted by the design paper §8; scope it to semantic structure, landmarks, heading order, alt strategy, and field CWV measurement. |
| **8 — Discoverability & distribution** | Unchanged. |
| **NEW — Channel strategy: referral vs. screen, and employer-segment targeting** | Surfaced by [signal S11/S12]: the evidence says *targeting* may be a bigger lever than *framing*. **Surfaced, not added** — cycle 2's sizing run decides whether the 9 becomes 10. |

**One gap changed character during verification and is now cheap to close.** [signal G5] — the
HBS *Hidden Workers* report — moved from unretrievable to unread-with-a-recorded-route (those are
this synthesis's state labels, not the paper's words; G5's own heading says *"the retrieval route
is now recorded"*): the
documented PDF path 404s and the bare Contentful asset URL returns HTTP 403, but the landing
page's own link carries signed `token` / `policy` parameters and with those the asset returns
**HTTP 200, `application/pdf`, 7,940,170 bytes** (verified 2026-08-10). The policy JWT expires in
roughly two days, so **the signed URL must be re-read from the landing-page HTML on each
attempt** — a copied URL is dead on arrival. **Nothing from the report is cited anywhere in this
pool and none of it was read**; a cycle-2 run can now fetch it by that route and must cite it as
newly-read material [signal G5].
