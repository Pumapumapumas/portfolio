# Audience calibration and anti-patterns

```
Topic:          What senior engineering peers, hiring managers/recruiters, and prospective
                clients each reward in a personal engineering portfolio, what each discounts,
                and what actively damages credibility with each — and how ONE site serves
                all three without splitting into three.
Feeds:          The content-prioritisation rules and the trajectory statement for the
                portfolio buildout — specifically the rule set that decides what goes on the
                surface layer, what goes one click down, and what does not go on the site.
Last validated: 2026-08-10
Revalidate:     medium — 2 months
Confidence:     Definitive: the usability/credibility research base (NN/g measured studies,
                Stanford Web Credibility Project, two CSCW peer-reviewed studies, one JAP
                meta-analysis) — all first-party published artifacts, all fetched directly.
                Directional: everything about recruiter attention economics (the only
                available data is vendor-funded eye-tracking with no published methodology)
                and everything about how a portfolio is used at each hiring stage.
                Derived: the conflict map (§5) and the ranked priorities (§9) — these are
                this paper's inferences across the cited evidence, not findings of any
                single source, and are marked as such at each claim.
                Unverified: nothing is asserted at this level; claims that would have
                landed here are declared as gaps in §11 instead.
Critic:         PASS-WITH-FIXES — 2026-08-10. All 20 sources were fetched and confirmed to
                exist, and every testable quoted span was matched as an exact character
                sequence against raw source text rather than through a summarizing layer.
                Nothing was found fabricated and no confidence mark was found inflated; the
                defects were citation precision and incomplete enumeration, not sourcing.
                Fixed: (1) §6 A4's tag count corrected — three project tiles at 6/4/4, the
                placeholder at 2, not "four tiles at 4–6"; (2) §4.3's guideline-9 quote
                restored to its full heading and re-anchored on its writing-style clause,
                with A9 / C3 / P11 / G6 each weakened to match the thinner leg; (3) §2.4's
                Fogg table declared as the top 12 of 18 rows, the remaining 6 stated, and
                row 7's label completed to "Name Recognition and Reputation"; (4) §11 G3's
                population widened to all seven sub-pages the 2024 landing page links —
                `community` and `methodology` added, and the zero-match result still holds
                across all eight documents; (5) live aggregator citation counts now carry
                their retrieval date.
                Fix (2) took a further round, and that round is part of this verdict. The
                first attempt over-corrected: it asserted in A9 that no cited source
                addressed a sales surface, which this paper's own citations refute — [S5]
                covers published rates, a portfolio page and testimonials, [S6] covers
                testimonials, [S8] is entirely about social proof. A9 now carries the
                narrower claim that is actually true and that G6 already stated: no cited
                source measures how a TECHNICAL PEER reads a commercial surface on an
                ENGINEER'S PERSONAL site. Two dependents were repaired with it — §1's
                one-line conclusion, which still read "the evidence says to defer" after
                P11 had stopped saying that, and G6/P11, which now record the one cited
                datum pointing the other way (a client in [S5] penalising rate-absence).
                Standing caution carried forward: an asserted ABSENCE is the claim class
                this paper is most likely to get wrong, because it is the one that cannot
                be checked by verifying what is cited. A dedicated sweep was therefore run
                over the whole paper: 15 absence claims enumerated, all hold, including
                A12, G1–G5, G7, the in-repo zeroes, and the [S14]/[S15] "not evidence
                about portfolios" claim (0 occurrences of "portfolio" in both releases).
                The A9 replacement was re-tested against all 20 sources: [S7] is the
                nearest miss (technical reader, commercial site, but organisational
                artifacts and jargon comprehension rather than commercial framing), with
                [S11]/[S12] next (technical peer, personal artifact, but a GitHub profile
                is neither a commercial surface nor a site) — the claim survives all three.
                Last change: §5 C3 gained a pointer to G6's client-side counter-evidence,
                so the paper's core deliverable cannot be lifted alone and read as "no
                evidence either way". The value stays PASS-WITH-FIXES deliberately — the
                fix record above is what §3 requires this field to carry, and a bare PASS
                would erase it.
```

**Volatility justification (§5).** This paper mixes two decay rates. The **craft layer** — how people read web pages, what makes a site credible, how developers form impressions from work artifacts — is Low tier: its primary sources span 1997–2016 and NN/g's own 2016 re-test found the trust factors unchanged since 1999 [S5]. The **hiring-market layer** — how portfolios are used in screening, what recruiters attend to, what the labour market rewards — is the fastest-decaying content here and sets the header. It is Medium tier by §5's rubric ("competitive positioning", "ecosystem landscape"), not High: no vendor pricing, ToS, or API surface is load-bearing. The interval takes the Medium band's **minimum (2 months)** rather than its max, because (a) the hiring-market evidence is the thinnest leg and most likely to be improved by a later sweep, and (b) AI-era screening practice is visibly in motion and directly threatens this paper's central signalling argument (§10.3).

**Sections a refresh may skip** (Low-tier, re-verify only on trigger): §2, §4.1, §6 (anti-patterns A1, A3, A6, A7, A8, A10), §7. **Sections a refresh must re-run:** §4.2, §4.3, §8, §10.3, §11.

---

## 1. Why this question, and what would make it the wrong question

The portfolio at `/opt/skyy-net/portfolio` is a 215-line static site (`index.html` 53, `style.css` 97, `projects.js` 65 — enumerated with `wc -l`) whose entire content surface is a hero, a one-paragraph About, four project tiles, and a footer. The dispatch asks it to serve three audiences *in balance*, with no audience leading.

That framing is contestable, and the strongest single source in this paper contests it. Nielsen Norman Group's plain-language research says, in the imperative: **"Avoid writing for everyone. When you write for everyone, you write for no one."** [S7] **[definitive** — first-party published research article]. So this paper cannot simply assume the balanced-site premise; it has to earn it, and §10 is where it argues against itself.

What this paper concludes, in one line: **the three audiences do not conflict on *substance*, they conflict on *depth, register, and ordering* — and all three of those are resolvable by layering rather than by splitting, with exactly one genuine exception (a sales surface), which this paper defers **for want of measurement, not because measurement showed a cost** — see §9 P11 and §11 G6, which state that limit precisely.** That conclusion is **[derived]** from the sources in §4–§7 and is the paper's own inference, not any source's finding.

---

## 2. Primer: what "reading a portfolio" actually is

Before the audiences differ, they share a substrate. Four measured facts govern every visitor regardless of why they came.

**2.1 Almost nothing gets read.** NN/g's 2008 analysis of Weinreich et al.'s real-life browsing dataset: *"On the average Web page, users have time to read at most 28% of the words during an average visit; 20% is more likely."* [S1] And the sharper number: *"On an average visit, users read half the information only on those pages with 111 words or less."* [S1] **[definitive** — published first-party analysis; note the stated limitation that the underlying sample skewed high-literacy, which the article itself flags]. The current site's hero + About is roughly 90 words — which is, by this measure, the one part of the site with a realistic chance of being read in full.

**2.2 Reading is scanning in a fixed shape.** NN/g's eyetracking: *"Eyetracking visualizations show that users often read Web pages in an F-shaped pattern: two horizontal stripes followed by a vertical stripe."* [S4] Methodology as stated by the source: *"In our new eyetracking study, we recorded how 232 users looked at thousands of Web pages."* [S4] **[definitive]**. Consequence: the first line of each block and the left edge carry disproportionate load.

**2.3 Register measurably changes usability and credibility.** The Morkes & Nielsen study remains the cleanest experiment on this: 51 users, five between-subjects conditions, one site rewritten five ways. The reported result: *"a sample Web site scored 58% higher in measured usability when it was written concisely, 47% higher when the text was scannable, and 27% higher when it was written in an objective style instead of the promotional style used in the control condition and many current Web pages"*, and combining all three produced *"124% higher measured usability"* [S2] **[definitive** — first-party published study with stated design; caveat: n=51, 1997, general-purpose site, not a portfolio]. The control condition is described as writing that *"contained exaggeration, subjective claims, and boasting, rather than just simple facts"* [S2]. The authors' proposed mechanism is directly about credibility: *"Web users wonder about credibility, and questioning the credibility of promotional statements may distract users from processing the meaning."* [S2]

**2.4 Design look is the single most-mentioned credibility cue.** The Stanford Web Credibility Project's large study, with Consumer WebWatch (a project of Consumers Union, publisher of *Consumer Reports*) as partner and sponsor: *"In this study, 2,684 people evaluated the credibility of two live Web sites on a similar topic (such as health or news)."* [S10] Of 2,440 coded comments, the **top 12 of Table 1's 18 rows** were Design Look 46.1%, Information Design/Structure 28.5%, Information Focus 25.1%, Company Motive 15.5%, Information Usefulness 14.8%, Information Accuracy 14.3%, Name Recognition and Reputation 14.1%, Advertising 13.8%, Information Bias 11.6%, Writing Tone 9.0%, Identity of Site Operator 8.8%, Site Functionality 8.6% [S10, Table 1]. The six rows below those, stated here so the enumeration is complete rather than a silent head: Customer Service 6.4%, Past Experience with Site 4.6%, Information Clarity 3.7%, Performance on Test by User 3.6%, Readability 3.6%, Affiliations 3.4% — and the table's own scope note, *"(Categories with less than 3% incidence are not in this table.)"* — i.e. 18 rows is the whole table, and categories under 3% were excluded from it by the authors, so this list is complete as against Table 1 but not as against the coding scheme [S10, Table 1] **[definitive** — the figures are the report's own table (which introduces itself as showing *"18 types of comments"*), reproduced from a direct fetch of the report PDF]. The report states that *"participants commented on the design look of the site more often than any other Web site feature, with 46.1% of the comments addressing the design look in some way"* [S10]. **Age caveat:** this is 2002 data. NN/g re-tested the underlying trust factors in 2016 and reported them stable [S5], which is corroboration of the *factor*, not of the *percentage*.

A closely-related peer-reviewed claim — that visual appeal is judged within ~50 ms — is carried by Lindgaard et al. (2006), *Behaviour & Information Technology* 25(2), 115–126, cited 1,076 times per the Semantic Scholar API **as of 2026-08-10** [S18] (an aggregator value that mutates continuously — the date is part of the claim). **I could not retrieve the full text** (ResearchGate 403, Taylor & Francis 403, Semantic Scholar abstract elided by publisher). Metadata is **[definitive]**; the 50 ms figure itself is **[directional]** here, sourced only from the paper's own title, with methodology unverified. It is not load-bearing for anything in §9.

---

## 3. The specific model this paper proposes

Three audiences, one substrate, resolved on three axes rather than by three sites:

| Axis | Mechanism | Source basis |
|---|---|---|
| **Depth** | Progressive disclosure: surface layer short and factual; mechanism and reasoning one click down; raw artifacts (repos, configs, diagrams) one click below that | [S3] as the pattern; [S1] for why the surface must be short |
| **Register** | Objective throughout — concrete nouns, verifiable statements, no superlatives — which is the one register no audience penalises | [S2] measured; [S6][S7] corroborating for the client/expert cases |
| **Ordering** | Outcome and artifact first, stack second, biography third — because the F-pattern and the 111-word budget spend attention top-down | [S1][S4] |

The claim that these three axes are *sufficient* to reconcile the audiences is **[derived]** (inputs: S1, S2, S3, S4, S7, S11, S12) and is the paper's central thesis. §10 states the case against it.

---

## 4. The three audiences, separately

### 4.1 Senior engineering peers — the audience with the strongest evidence base

Two peer-reviewed CSCW studies, both from the CMU group, are the best available evidence on how technical people form judgments of other technical people from online work artifacts.

**How impressions form.** Marlow, Dabbish & Herbsleb interviewed 18 GitHub users (17 male; 12 US, 6 Europe; 30–60 minute Skype interviews with screen sharing, semi-structured, think-aloud while assessing profiles of people they did and did not know) [S11] **[definitive** as to the study's design and reported findings; **the findings themselves are qualitative and small-n**, which is a real limit on generalisation]. Reported findings, paraphrased (the PDF's text layer mangles curly punctuation, so these are **paraphrases, not quotations** — see §12):

- Interviewees inferred **general coding ability** from amount of activity, commit frequency, ratio of owned to forked projects, time on the site, and languages used.
- They inferred **project-relevant skills** from the *type* of visible activity (coding versus discussing) and the specific languages.
- They inferred **personality and interaction style** from past discussion threads.
- **Empty profiles** produced actively negative inferences — that the person was not a committed member, or complained without contributing.
- Impressions of expertise were built on a history of activity *across* projects and on collaboration with high-status projects, and those impressions changed how receptive owners were to that person's code.

The operational read for a portfolio: peers do not primarily read your description of your work, they read *traces* of it, and they read absence as information. **[derived** from S11].

**Why traces beat descriptions — the signalling frame.** Marlow & Dabbish interviewed 7 employers who used GitHub to evaluate candidates and 6 job seekers who used GitHub to supplement applications (13 total, recruited from a screening questionnaire sent to 200 GitHub members with public email addresses) [S12] **[definitive** as to design; **n=13 qualitative, 2013** — this is a small, old, self-selected sample and every claim built on it inherits that]. The paper interprets its results through signalling theory, distinguishing **assessment signals** — reliable because they are *costly to produce* — from **conventional signals**, which are cheap and therefore easy to fake by someone lacking the underlying quality. Its illustration: lifting a heavy weight is an assessment signal of strength; wearing a gym t-shirt is a conventional signal of it [S12].

That distinction is the single most useful idea in this paper for the subject's situation, and §7 builds on it.

The paper also reports that employers viewed profile cues as more reliable indicators of technical ability and motivation than résumé content, because work actions are transparent and behaviour traces are hard to manipulate [S12, abstract] **[definitive** that the paper reports this; **directional** as a claim about employers generally, given n=7]. The paper quotes a widely-circulated tweet by jQuery's creator — *"When it comes to hiring, I'll take a Github commit log over a resume any day."* [S12, quoting a tweet] — which is exactly the class of statement §3 of the Research Standard caps at **[directional]**: a first-party speaker, an informal artifact, no documented backing.

**What makes a peer close the tab** — assembled from the above plus §2: an empty or thin evidence trail [S11]; claims with no artifact behind them; a promotional register [S2]; and — per §6 — anything visibly unfinished.

### 4.2 Hiring managers and recruiters — two different readers, and the thinnest evidence

**These are not one audience.** A recruiter is filtering a queue against a requisition; a hiring manager is deciding whether to spend an interview loop. They read different things for different reasons, and the honest position is that **the public evidence for both is weak.**

**What the recruiter evidence actually is.** The universally-cited "recruiters spend six seconds on a résumé" claim originates with **TheLadders**, a paid job-search service. Its own press release states: *"recruiters spend just six seconds reviewing a resume before deciding if the candidate is a good fit"*, and describes the method as *"Assessing dozens of professional recruiters during a 10-week period, the first formal, quantitative study of recruiters' on-the-job behavior"* [S14]. It also reports that *"recruiters spent almost 80% of their resume-review time on the following data points, respectively: name, current title/company, previous title/company, previous position's start and end dates, current position's start and end dates, and education"* [S14]. The 2018 update, by the renamed Ladders, Inc.: *"The average initial screening time for a candidate's resume clocks in at just 7.4 seconds—an improvement on the six-second average screening time found in 2012."* [S15]

**Confidence: [directional], and only just.** Reasons, all from the primary artifacts themselves: (1) the funder is a company that sells résumé services and job-search subscriptions — the same release markets *"a unique suite of personalized products and resume services"* [S14]; (2) no sample size is stated, only "dozens"; (3) no sampling frame, instrument, or analysis method is published; (4) the underlying whitepaper is not retrievable (see §11, G2); (5) the 2018 release attributes the 6→7.4 second change to macroeconomic conditions [S15] without presenting a design that could isolate that. **It must never be cited as definitive, and it is not evidence about portfolios at all** — it is about résumés.

**What can be said about the hiring-manager side.** The best-evidenced adjacent finding is Marlow & Dabbish's: employers in that sample used the GitHub profile as a *supplement* to application materials, not a replacement, and treated it as fast-to-verify signal on qualities interviews are bad at reading — motivation, values, how someone works [S12] **[directional]**, again at n=7.

**A large methodologically-stated employer survey exists but is off-target.** NACE's Job Outlook 2026: *"Among employers participating in NACE’s Job Outlook survey, 70% report using skill-based hiring, up from 65% last year."*, with stated method — data collected 2025-08-07 to 2025-09-22, *"Of the 183 total respondents, 170 were NACE employer members, representing 22.7% of eligible member respondents"*, plus 13 non-member responses [S16] **[definitive** as a survey result, **with two heavy scope limits**: it measures *entry-level, new-graduate* hiring, and n=183 self-selected association members]. The Spring Update (n=185, 142 members = 19.9% of eligible, **sponsored by Jobscan**, a résumé-optimisation vendor) reports that employers want teamwork, problem-solving and communication evidence, and that *"more than half of respondents citing 10+ skills"* [S17]. **Sponsor disclosure matters here** and is why the skills-list content is not used as load-bearing evidence in §9.

**What I looked for and did not find** (method in §11, G1): any peer-reviewed study, or any survey with a published instrument and sampling frame, measuring whether a personal portfolio site is opened during screening for backend/infrastructure roles, at which stage, or with what effect on advancement. **This is a gap, not a null result** — but the *absence* of such evidence, combined with the fact that the one adjacent dataset [S12] describes the artifact as a supplement, supports a deflationary read: **for infra/backend hiring, the portfolio is most plausibly a tiebreaker and a confirmation surface, not a screening surface.** **[derived** — inputs: S12, S14, S16, and the enumerated absence in G1. It is an inference, and a downstream plan should treat it as one.]

**One more deflation, from the strongest methodological source in the paper.** The folk claim that work samples are the best predictor of job performance traces to Schmidt & Hunter (1998). Sackett, Zhang, Berry & Lievens (2022, *Journal of Applied Psychology* 107, 2040–2068) systematically revisit those meta-analytic estimates, conclude that common range-restriction corrections produce substantial overcorrection, and that the validity of many selection procedures has been substantially overestimated; they note that an unpublished 2016 update dropped the work-sample validity estimate from .54 to .33 on the basis of Roth et al. (2005), and place their own revised general-ability estimate at .31 [S13] **[definitive** — peer-reviewed; **paraphrased, not quoted**, because the PDF's text layer strips spaces (§12)]. Implication for a portfolio: a "here is my work" artifact is a *reasonable* signal, not a *dominant* one, and a plan that assumes the portfolio will carry the hiring decision is over-indexed.

### 4.3 Prospective clients — a different question entirely

Where peers ask *can this person build it* and hiring managers ask *will this person be effective on my team*, a buyer of engineering services asks **will I be looked after, and can I get hold of them.** The evidence base is corporate-site research rather than individual-consultant research (a limit declared in §11, G5), but it is consistent.

**What clients read for.** NN/g's About Us research — three rounds, *"we observed over 70 users, including business professionals"*, *"we tested 100 websites and reviewed an additional 65 sites"*, most recent round n=20 with technology workers deliberately screened out [S6] **[definitive** as to method and reported findings] — reports that users seek: what the organisation does, where it is, its mission and values, and **how to contact it**. The strongest reported trend: *"More than ever, users are skeptical of companies and see right through complex corporate speak, jargon, and stock photography."* [S6] And on corroboration: *"We found that reviews and recommendations from trusted peers are one of the most important criteria used when forming an impression about an organization."* [S6]

**What raises trust, structurally.** The Stanford guidelines, derived from *"three years of research that included over 4,500 people"* [S9] **[definitive** — first-party published research summary; 2002], name the client-relevant ones almost exactly:

- *"Make it easy to verify the accuracy of the information on your site."* — with the note that third-party support and links to evidence build credibility *even if people don't follow the links* [S9].
- *"Show that there's a real organization behind your site."* [S9]
- *"Highlight the expertise in your organization and in the content and services you provide."* [S9]
- *"Make it easy to contact you."* [S9]
- *"Update your site's content often (at least show it's been reviewed recently)."* [S9]
- *"Use restraint with any promotional content (e.g., ads, offers)."* [S9] — **read this one narrowly.** The guideline's body is about advertising (*"If possible, avoid having ads on your site. If you must have ads, clearly distinguish the sponsored content from your own. Avoid pop-up ads, unless you don't mind annoying users and losing credibility."* [S9]); only its final sentence addresses copy, and that sentence is the part this paper leans on: *"As for writing style, try to be clear, direct, and sincere."* [S9]. So g9 supports a **register** constraint directly, and touches a services/sales *surface* only through the word "offers" in its heading — a far weaker connection than a bare citation of the heading would suggest. Every use of `[S9 g9]` elsewhere in this paper is scoped accordingly.

**Connection to the rest of the web is itself a trust factor.** NN/g's 2016 re-test of Nielsen's 1999 four factors — *"design quality, up-front disclosure, comprehensive and current content, and connection to the rest of the web"* [S5] — found them unchanged, and states the failure mode plainly: *"An isolated website that does not link to and cannot be found on third-party review sites, social media, or news outlets appears to either have something to hide or not be a fully established, stable company."* [S5] **[definitive** as a reported qualitative finding; the study was a Singapore-based cross-cultural usability study, so the sample is small and not enumerated in the article].

Social proof is a real lever for this audience but a weak one to fabricate: NN/g's treatment frames testimonials, reviews and counts as instances of Cialdini's influence principles [S8] **[definitive** that the article makes this framing; the article is largely conceptual and is used here only as a pointer, not as measurement].

---

## 5. THE CONFLICT MAP — the core deliverable

Each row: what one audience rewards that another discounts or penalises, and what the evidence supports as a resolution. **Every "Resolution" cell is [derived]** — the conflict is read off the cited sources; the resolution is this paper's inference. Inputs are named per row.

| # | The conflict | Peers | Hiring (mgr / recruiter) | Clients | Resolution (derived) | Inputs |
|---|---|---|---|---|---|---|
| **C1** | **Depth vs. attention budget** | Reward mechanism, tradeoffs, decision reasoning; general statements are noise — *"for experts general statements get in the way of facts"* [S7] | Manager wants enough to justify a loop; recruiter will not read prose at all | Want the outcome, not the mechanism | **Progressive disclosure.** Surface ≤ ~111 words per block, factual; mechanism one click down; artifacts one click below that. *"In a system designed with progressive disclosure, the very fact that something appears on the initial display tells users that it's important."* [S3] | S1, S3, S7 |
| **C2** | **Outcome framing vs. technical specificity** | Outcome claims without mechanism read as marketing | Outcome + scope is the whole signal | Outcome is the *only* thing that matters | **Objective register dissolves this.** "Runs the production workloads of two operating businesses" is simultaneously an outcome, a fact, and checkable. Promotional framing of the same fact costs with all three [S2] | S2, S6, S12 |
| **C3** | **Sales surface vs. peer standing** | A pitch is promotional content; peers read it as a change of genre | Neutral-to-mildly-negative (signals contractor, not employee) | *Needs* it — cannot engage what has no contact path [S9 g5] | **Split the two things that get bundled.** A *contact affordance* is universally rewarded and cheap [S9 g5, S6]. *Sales copy* is what costs — measured only as a **register** effect [S2], with g9's copy-facing sentence (*"try to be clear, direct, and sincere"* [S9]) pointing the same way; **no cited source measures the cost of a sales *page*.** **Do not read that as "no evidence either way":** §11 G6 records client-side evidence pointing the *other* way — a measured cost of *omission* — under G5's corporate-site caveat. Ship contact; defer the services page (see §9 P11 and topic 9) | S2, S6, S9 |
| **C4** | **Employment history vs. artifacts** | Explicitly rate work traces above résumé content [S12] | Recruiter attention concentrates on titles, companies, dates, education [S14, directional] | Largely indifferent to employers; care about track record | **Do not fight the résumé game on the site.** LinkedIn/CV carries the conventional signals; the site carries the assessment signals. This is the subject's structural advantage, not a workaround | S12, S14 |
| **C5** | **Polish vs. "template-obvious"** | A generic template undercuts a craft claim | Neutral; polish reads as professionalism | Design look is the most-mentioned credibility cue at all [S10] | **The bar is "deliberate and working", not "expensive".** *"Of course, not all sites gain credibility by looking like IBM.com. The visual design should match the site's purpose."* [S9 g6] | S9, S10 |
| **C6** | **Breadth vs. depth of project set** | Infer from a *body* of activity across projects [S11] | Want the one project matching the req | Want the one project resembling their problem | **One flagship at full depth + a small number of genuinely complete supports.** Breadth is served by linking outward to the repo/org surface, not by adding shallow tiles | S11, S9 g1 |
| **C7** | **Jargon** | Domain nouns *are* the competence signal | Keyword-matching rewards them | Penalise them — *"see right through complex corporate speak, jargon"* [S6] | **Separate precise nouns from puffery.** Keep *K3s, Ceph, Temporal, ArgoCD* (checkable, load-bearing). Cut *enterprise-grade, robust, cutting-edge* (uncheckable, costs with everyone). Even experts penalise unexplained opaque terms — an IT manager in [S7] dismissed a page for having *"a whole lot of jargon and technical terms"* he did not know | S2, S6, S7 |
| **C8** | **Self-assessment language** | Penalises self-rating ("expert", "senior", "10x") absent evidence | Tolerates it; it is résumé convention | Mildly reassured by it | **State the artifact and let the reader do the rating.** Superlatives are the boasting register measured worst in [S2]; Stanford's remedy is verifiability [S9 g1] | S2, S9 |

**The load-bearing observation across all eight rows:** *no row is a conflict about which facts to publish.* Every conflict is about depth, register, or ordering. That is why one site is workable — and it is also precisely the claim §10 attacks.

---

## 6. ANTI-PATTERNS — first class, keyed by whom they damage

Two tiers, because they are different failures: **forgettable** costs you nothing but gains you nothing; **damaging** actively lowers standing below where you started.

### 6.1 Actively damaging

**A1 — Dead links and visible scaffolding.** *Damage: all three audiences; the highest-confidence anti-pattern in this paper.* Stanford guideline 10 is unambiguous: *"Avoid errors of all types, no matter how small they seem."* with the note *"Typographical errors and broken links hurt a site's credibility more than most people imagine."* [S9] **[definitive]**. NN/g's 2016 re-test independently corroborates: *"Typos, broken links, and other mistakes quickly degrade credibility and communicate an overall lack of attention to detail."* [S5] The Fogg report adds a real qualifier worth carrying: a broken link only damages credibility *if the visitor notices it* — the report's prominence-interpretation framing [S10, paraphrased]. That qualifier makes this **worse** for the current site, not better: the dead links are on the primary call-to-action of every **real project tile** (3 of the 4 tiles; the fourth is the placeholder, which carries `links: []` and so has no dead link to notice), which is the most-noticed position.
**Present in this repo, enumerated:** `grep -c 'href: "#"' projects.js` → **3**; `grep -n 'title:' projects.js` → **4 tiles, of which one is the literal placeholder** `"Add your next project"` with the body text *"Copy any object above, change the fields, save."* — i.e. the site's build instructions are published as content.
**Remedy:** ship the write-up or delete the link; delete the placeholder tile. Never both-and.

**A2 — Overclaiming and unverifiable metrics.** *Damage: peers hardest, clients next.* An unverifiable number is a **conventional signal** in the [S12] sense — cheap to produce, therefore weakly informative, and read as such by exactly the audience you were trying to impress. The remedy is Stanford guideline 1: *"Make it easy to verify the accuracy of the information on your site."*, whose stated mechanism is that linking to evidence works *"Even if people don't follow these links"* [S9] **[definitive]**. Corroborating from a different direction: [S2] found a section heading *"Outbound Links Can Increase Credibility"*, reporting that *"Users rely on hypertext links to help assess credibility of the information contained in websites."*

**A3 — Promotional register / boasting.** *Damage: all three, measurably.* The control condition in [S2] — *"exaggeration, subjective claims, and boasting, rather than just simple facts"* — scored worst on virtually all usability measures, and the objective rewrite of the same content scored 27% higher [S2] **[definitive** for that study]. Stanford guideline 9 points the same way on register — its heading is *"Use restraint with any promotional content (e.g., ads, offers)."* and its body is mostly about advertising, but its closing sentence is squarely about copy: *"As for writing style, try to be clear, direct, and sincere."* [S9]. That sentence, not the heading, is the leg A3 stands on. NN/g's plain-language research names the belief that drives it: *"The misconceived notion that long sentences and big words make you sound smarter (or more professional) results in great sacrifices to readability and credibility."* [S7]
**Present in this repo:** the MDC tile opens *"An enterprise-grade private cloud"* and the About paragraph opens *"I'm a software architect and engineer who builds whole systems, not just pieces."* — a self-assessment before any artifact.

**A4 — Buzzword / tech-stack dumping.** *Damage: peers (reads as conventional signalling), clients (reads as jargon).* A tag list asserts familiarity at zero cost; [S12]'s framework predicts it is discounted precisely because it is costless. The peer-side evidence for what *is* read instead is [S11]: activity type, commit history, owned-vs-forked ratio — none of which a tag list conveys. **[derived** — inputs S11, S12]. The tags are not worthless: they are *navigational* and keyword-matchable [S14, directional]. The failure is tags **instead of** evidence, not tags as well.
**Present in this repo, enumerated** (`grep -n 'tags:' projects.js`, counting each array's elements): the three project tiles carry 4–6 tags each — 6 (`K3s, Temporal, Django, Ceph, ArgoCD, Ansible`), 4, 4 — and the fourth tile is the placeholder, with 2 (`edit`, `projects.js`). All four carry zero reachable evidence.

**A5 — Tutorial-grade or clone projects presented as work.** *Damage: peers, severely; it is the fastest way to invert a competence judgment.* [S11] shows peers reading the *content* of activity, not its existence. [S12] records a job seeker's own mitigation: rather than improve every repo, he wrote status descriptions marking early proofs-of-concept as such, deliberately downplaying work he was not proud of [S12, paraphrased] **[directional** — a single participant's practice, n=13 study]. That is the pattern to copy: **label maturity explicitly** rather than hoping nobody looks.

**A6 — Stale content.** *Damage: all three; clients most, because staleness reads as "no longer trading".* Stanford guideline 8: *"Update your site's content often (at least show it's been reviewed recently)."* [S9] **[definitive]**. The subject's site is especially exposed: its `year` fields are `"2025–26"`, `"2026"`, `"2025–26"` and `""` (the placeholder tile), and **no tile carries a status marker of any kind**, so the set ages into ambiguity by default.

**A7 — Factual inconsistency about yourself.** *Damage: all three, and it is the most expensive error class because it is about the one thing you are the authority on.* Covered by Stanford guideline 10 [S9].
**Observed discrepancy, stated without adjudication:** the live site says *"biomedical informatics (M.S.)"* in the hero and *"an M.S. in biomedical informatics"* in the About; the dispatch brief for this research states **M.S. Computer Science (completing 2026)**. I have no basis to decide which is correct and do not assert one — but they cannot both be right, and whichever is wrong is currently published. **This is a finding for the operator, not a content edit; `CLAUDE.md` places `index.html` under operator ownership.**

**A8 — An isolated site.** *Damage: clients most, all three somewhat.* *"An isolated website that does not link to and cannot be found on third-party review sites, social media, or news outlets appears to either have something to hide or not be a fully established, stable company."* [S5] **[definitive** as a reported finding]. The current site links to GitHub and LinkedIn from the hero — a real strength worth preserving — but zero project links out to anything.

**A9 — A sales surface that changes the site's genre.** *Damage: peer standing, hypothesised asymmetric. **This is the weakest-evidenced entry in the "actively damaging" tier** — A4 and A5 are also inferential, but each has a source addressing its subject ([S11]/[S12] for A4, a participant's own practice for A5), whereas **no cited source measures how a *technical peer* reads a commercial surface on an *engineer's personal* site** — which is the specific thing A9 claims. Sales surfaces as such are *not* unsourced here: [S5], [S6] and [S8] all address testimonials, and [S5] addresses published rates and a portfolio page directly. But every one of those is the **client** side on a **corporate** site, which is the wrong audience and the wrong artifact for A9's damage claim. Weight it accordingly against A1–A3 and A6–A10.* This is C3. Evidence is indirect and **thinner than a first read of the citations suggests**: [S2] measured the promotional *register* worst, and [S9 g9] restrains promotional content — but g9's body is about advertising (ads, pop-ups, sponsored-content labelling), and its only copy-facing clause is *"As for writing style, try to be clear, direct, and sincere."* [S9]. Neither source addresses a services surface as such; both are *general-audience* findings; and the register leg does not automatically transfer to page genre, since a services page written in objective register is not the thing [S2] measured. So the peer-specific magnitude is unmeasured **and the direction is inferred from register evidence alone.** **[derived**, and flagged in §11 (G6) as the paper's weakest inference — after this correction, weaker still.]

**A10 — No path to a human.** *Damage: clients, decisively; it converts an interested buyer into no buyer.* Stanford guidelines 4 and 5: *"Show that honest and trustworthy people stand behind your site."* and *"Make it easy to contact you."* [S9] **[definitive]**. NN/g corroborates that offering multiple channels to reach a real person was among the tactics that made organisations stand out favourably [S6].
**Present in this repo:** no email, no contact affordance of any kind. GitHub and LinkedIn are the only paths, and both are platform-mediated.

### 6.2 Forgettable (costs nothing directly, wastes the visit)

**A11 — Walls of text.** With a 20–28% read rate [S1] and F-shaped scanning [S4], a long unbroken block is read at its first line and abandoned. Concision alone measured +58% [S2].

**A12 — Template-obvious design.** [S10]'s 46.1% says design carries more credibility comment than anything else, and [S9 g6] says the target is fit-to-purpose rather than expensive. A recognisably off-the-shelf theme costs the *craft* claim specifically, which for this subject is the whole claim. **[derived** — inputs S9, S10; note that no source measured "template recognition" directly, so the magnitude is unknown.]

**A13 — Undefined opaque terms.** [S7]'s IT-manager participant dismissed a vendor page for having *"a whole lot of jargon and technical terms"* he was unaware of — an *expert* penalising *unexplained* terminology. The distinction from C7 holds: precise nouns that a peer knows and a client can look up are fine; branded or invented terms with no expansion are not.

**A14 — Generic self-description.** "I build whole systems, not just pieces" is a claim that anyone can type. [S7]: *"for experts general statements get in the way of facts"*.

---

## 7. Credibility signals that work on all three audiences

These are the highest-leverage items because they have **no offsetting cost with any audience**. Each is enumerated as a citable property a plan can rely on.

1. **A working, reachable artifact with a link to its source.** Assessment signal for peers [S12]; verifiability for clients [S9 g1]; the only thing a hiring manager can check in under a minute. Costly to fake, which is exactly why it counts [S12].
2. **Objective register.** +27% on its own, +124% combined with concision and scannability [S2]. There is no audience that prefers the promotional alternative.
3. **A short surface layer with real depth one click down.** [S1] (111-word half-read threshold), [S3] (progressive disclosure), [S7] (experts want facts, not overviews) all point the same way.
4. **Zero errors — no dead links, no typos, no placeholders.** [S9 g10], [S5]. The cheapest credibility available and the site's current largest deficit.
5. **Visible recency.** [S9 g8]. A "last updated" or per-project status line costs one line and defends against the staleness read.
6. **A real, contactable person.** [S9 g4, g5], [S6].
7. **Deliberate, purpose-matched design.** [S10] (46.1%), [S9 g6].
8. **Outbound connection — to the code, to the org, to third parties.** [S2] (outbound links raise credibility), [S5] (isolation reads as concealment), [S9 g1].

---

## 8. The subject's specific position

**[derived** throughout this section — inputs: S11, S12, S13, S14, plus the dispatch's description of the subject. No source addresses this individual.]

The subject's asset profile is unusual in a way the signalling frame reads cleanly. A self-designed, self-built private cloud — Proxmox, three K3s clusters, a Django/Temporal control plane, Ceph, ArgoCD, fully declarative — **with two real businesses running production workloads on it** is close to a pure **assessment signal** in [S12]'s sense: it is expensive to produce, hard to fake, and its existence is checkable. That is the strongest available counter to a thin employment history, because the two signals sit on different axes: employers-and-titles is a *conventional* signal (attested by a third party, cheap to state), and a running system with paying dependents is an *assessment* signal.

Three consequences follow:

- **The "real businesses run on it" fact is the single highest-value sentence available**, and it currently does not appear anywhere on the site. The About paragraph says *"the businesses I run on top of my own infrastructure"* — passive, unnamed, unquantified, and reading as a hobby framing rather than as production dependency.
- **The site should not attempt to look like a CV.** It cannot win on the axis [S14] describes (titles, companies, dates), and per C4 it does not need to — LinkedIn is already linked from the hero and can carry that load.
- **Solo-built is a liability if unaddressed and an asset if addressed.** [S12]'s own participants raise the fairness objection from the other side — one interviewee argued you cannot judge someone solely on GitHub because it depends on how much time they can donate outside work, citing a developer with a family as the example [S12, paraphrased] **[directional]**. The mirror of that objection is the one a skeptical peer will raise here: *solo means unreviewed*. The answer is not assertion; it is showing the decision record — the tradeoffs considered, what was rejected, what broke. That is a case-study concern and belongs to topic 2, not this paper.

---

## 9. What THIS site should prioritise — ranked

Ranked by (evidence strength × current deficit × cost to fix). Each item names the audience(s) and the evidence. **The ranking is [derived]**; the underlying facts are cited.

| # | Action | Serves | Evidence | Note |
|---|---|---|---|---|
| **P1** | **Remove the 3 dead `href="#"` links and the `"Add your next project"` placeholder tile.** Ship the write-up or drop the affordance. | All three | [S9 g10], [S5], [S10] | Highest-confidence, lowest-cost item in the paper. Enumerated: 3 dead links, 4 tiles / 1 placeholder. |
| **P2** | **Ship one full case study — the MDC platform — at depth, with links to real code.** | Peers primarily; managers secondarily | [S11], [S12], [S9 g1] | Converts the site from claims to artifacts. Format is topic 2's deliverable, not this paper's. |
| **P3** | **Resolve the credential inconsistency (§6 A7).** | All three | [S9 g10] | Operator decision; do not edit content to "fix" it. |
| **P4** | **Rewrite hero + About into objective register.** Delete *enterprise-grade* and every self-rating adjective; replace with checkable nouns. | All three | [S2], [S7], [S9 g9 writing-style sentence] | ~90 words is the entire budget that gets read [S1]. |
| **P5** | **State the production-dependency fact plainly** — what runs on the platform, for whom, since when. | Peers + clients | [S12] (assessment signal), [S6] (outcome + plain language) | The strongest unused fact available. |
| **P6** | **Add a contact affordance.** Email or equivalent; not a services pitch. | Clients decisively; all three mildly | [S9 g4, g5], [S6] | C3's resolution: ship the contact, defer the pitch. |
| **P7** | **Add per-project status/recency markers**, including honest maturity labels. | All three | [S9 g8], [S12] (the status-description practice) | One line per tile; defends against both staleness and A5. |
| **P8** | **Link every project outward** to its repo/org/running instance. | All three | [S2] (outbound links), [S5] (isolation), [S9 g1] | Where a repo is private, say so rather than linking nothing. |
| **P9** | **Restructure to explicit progressive disclosure**: tile (≤ ~60 words) → case study → deep appendix. | All three, differently | [S3], [S1], [S7] | This is the structural answer to C1 and the mechanism §3 rests on. |
| **P10** | **Keep the design minimal and hand-made; do not adopt a recognisable template.** | All three; peers specifically | [S10] (46.1%), [S9 g6] | The current dark minimal direction is *defensible as-is*; the deficit is content, not chrome. |
| **P11** | **Do NOT build a services/rates/testimonials surface in this pass.** | — | [S2], [S7], [S9 g9 writing-style sentence] | Deliberately deferred to topic 9, which has the diagnosis this paper supplies. **This is the weakest-supported row in the table, and it rests on absence of evidence rather than evidence of harm:** per §11 G6 and §6 A9, no cited source measures what a sales *surface* costs with peers — [S2] measured *register*, and g9's restraint clause is chiefly about advertising. Read P11 as "do not commit to an unmeasured genre change in this pass", **not** as "the evidence says a services page costs you." **And note the one cited datum pointing the opposite way:** [S5] records a client rejecting a service company for *not* publishing its rate, and reports on-site testimonials as read-but-discounted against third-party review sites (§11 G6, with G5's corporate-site caveat). So the client-side cost of *omission* is measured while the peer-side cost of *inclusion* is not — which is a reason to re-decide with topic 9's evidence, and makes P11 the recommendation most likely to be overturned there. |

---

## 10. Honest boundary analysis — the case against this paper's thesis

### 10.1 The strongest source in the paper argues for splitting, not layering

NN/g's plain-language research states the opposite of the dispatch's premise: *"Different writing strategies are required for different users. If your message must reach multiple audiences, it’s important to prioritize them. Avoid writing for everyone. When you write for everyone, you write for no one."* [S7] **[definitive** — first-party published guidance from the highest-credibility usability publisher in this paper's source set].

That is not a nuance; it is a direct contradiction of the balanced-site brief. The honest reconciliation is narrower than the thesis: **progressive disclosure resolves depth conflicts, not purpose conflicts.** A single artifact can be shallow-then-deep. It cannot simultaneously be *persuasive* (client) and *unpersuasive* (peer). If the site ever needs to sell, [S7] says it needs a prioritised primary audience, and the layering model will not save it. §9 P11's deferral is the practical expression of taking this seriously.

### 10.2 Progressive disclosure is being used outside its evidence base

[S3] formulates progressive disclosure for **application features** and information-rich sites — its worked example is a print dialog. Nothing in it addresses multiplexing *audiences*. Applying it here is an extension by analogy, marked **[derived]** in §3 and §5, and it carries a known failure mode the source itself names: *"You must get the right split between initial and secondary features."* [S3]. Get the split wrong — put the mechanism on the surface, or bury the outcome — and the pattern makes things worse for everyone rather than better for each.

### 10.3 The signalling argument may be decaying under LLMs

§8's whole case rests on [S12]'s assessment-vs-conventional distinction, which depends on artifacts being **costly to produce**. That study is from 2013. In 2026, plausible-looking code, READMEs, architecture prose and even case studies are cheap to generate — which, if peers have internalised it, moves "a well-written repo" from assessment signal toward conventional signal, and shifts the discriminating evidence toward things that are still expensive: a *running* system, third-party corroboration, and specific failure narratives. **I found no study measuring this shift** (§11 G4), so the concern is stated as **[derived, unmeasured]** — but it is the most likely way this paper goes stale, and it is why the revalidation interval is the Medium band's minimum rather than its maximum.

### 10.4 The hiring leg is thin, old, and small-n

The peer and hiring analysis leans on two 2013 qualitative CSCW studies with n=18 and n=13 [S11][S12], both GitHub-specific and both self-selected. The recruiter analysis leans on a vendor press release with no published methodology [S14][S15]. The only large methodologically-stated employer survey found is about *new-graduate* hiring, n≈183–185 self-selected association members, one wave vendor-sponsored [S16][S17]. **Anyone building a plan on §4.2 should treat it as the weakest section of the paper.**

### 10.5 The evidence base is publisher-concentrated

Enumerated by counting the source list in §12: **8 of 20 sources are Nielsen Norman Group** ([S1]–[S8]). NN/g is a credible research organisation that publishes methodology, but it is also a commercial consultancy selling training and consulting in exactly this domain, and its articles are the *rendered-page* class of source. The paper mitigates by corroborating each NN/g-sourced claim against a non-NN/g source where one exists (Stanford [S9][S10] for credibility; CSCW [S11][S12] for peer behaviour) — but the concentration is real and a critic should weigh it.

### 10.6 Portfolios may simply matter less than this exercise assumes

If §4.2's deflationary read is right — that for infra/backend roles the portfolio is a tiebreaker, not a screen — then the entire buildout is a **medium-value** investment for the hiring audience and its value concentrates in the peer and client legs. That is a legitimate reason to cap the effort, and a planner should be told it explicitly rather than discovering it after building.

### 10.7 Where the current site is already right

An honest boundary cuts both ways. The existing site does four things the evidence supports and which a redesign could easily break: it is **short** [S1], it is **not promotional in layout**, it **links outward to GitHub and LinkedIn from the hero** [S5], and its **design is deliberate rather than templated** [S9 g6]. The deficit measured here is content and evidence, not chrome.

---

## 11. Gaps — declared, with search method

Per §3, each is a stated result, not an omission.

**G1 — No credible measurement of whether portfolio sites are read in backend/infra hiring.**
*Method:* web searches for peer-reviewed and survey evidence on portfolio/personal-site effects on callbacks and screening for software/infrastructure roles; attempted retrieval of NACE's Job Outlook press artifacts (both fetched, [S16][S17]); grep of the fetched NACE pages for "portfolio" → **0 matches** on the page a search summary had attributed the claim to. Everything returned in this space was vendor content marketing or listicles with no instrument, sample, or funder disclosure. **Result: no citable evidence exists that I could find.** The deflationary inference in §4.2 is derived, not measured.

**G2 — TheLadders/Ladders eye-tracking whitepaper is not publicly retrievable.**
*Method:* fetched both primary press releases [S14][S15]; both point to "TheLadders Blog" for the whitepaper, which no longer resolves to the artifact. No sample size, sampling frame, instrument, or analysis method is published in either release. **Result: the 6-second and 7.4-second figures are unfalsifiable as published and are marked [directional] wherever used.**

**G3 — A widely-repeated "2024 Stack Overflow Developer Survey" portfolio statistic does not exist in that survey.**
*Method:* fetched the 2024 survey landing page, **enumerated every `/2024/<section>` link it carries** (`ai`, `community`, `developer-profile`, `methodology`, `professional-developers`, `technology`, `work` — seven sub-pages, counted off that list, not asked for as a total), then fetched all seven plus the landing page and grepped each for "portfolio", case-insensitively. The population is therefore **the landing page plus all six result sections and the methodology page the 2024 landing page links** — no linked section is unchecked:
```
landing                  http=200  bytes=104791   portfolio_matches=0
ai                       http=200  bytes=399496   portfolio_matches=0
community                http=200  bytes=215749   portfolio_matches=0
developer-profile        http=200  bytes=323006   portfolio_matches=0
methodology              http=200  bytes=47948    portfolio_matches=0
professional-developers  http=200  bytes=421466   portfolio_matches=0
technology               http=200  bytes=3189185  portfolio_matches=0
work                     http=200  bytes=502603   portfolio_matches=0
```
**Result: zero matches across all eight enumerated documents** [S20]. The survey's own methodology page also states respondents were recruited through Stack Overflow's owned channels, with highly-engaged users over-represented — a self-selected sample that could not support a causal callback claim in any case [S20]. **This is recorded as a finding because it is exactly the contamination class this topic is prone to:** a fabricated statistic circulating with a real, high-credibility survey's name attached.

**G4 — Two peer-reviewed papers verified only at metadata level.**
*Method:* Lindgaard et al. 2006 — ResearchGate 403, Taylor & Francis 403, Semantic Scholar abstract elided by publisher; metadata (title, venue, year, authors, 1,076 citations **as of 2026-08-10**) retrieved from the Semantic Scholar Graph API [S18]. Oppenheimer 2006 — three host attempts returned 404; Semantic Scholar abstract elided; metadata (title, author, year, 345 citations **as of 2026-08-10**) retrieved from the same API [S19]. **Both citation counts are live aggregator values and carry their retrieval date; a later refresh finding a different number is the world moving, not this paper being wrong.** **Result: neither paper's methodology or effect sizes are asserted anywhere in this paper.** Both appear only as pointers, and nothing in §9 depends on them.

**G5 — No evidence found on how clients evaluate an *individual consultant's* site.**
*Method:* the client analysis rests on NN/g's About Us corpus [S6], which tested corporate sites (large companies, government agencies, nonprofits), and on Stanford's credibility guidelines [S9], which are framed around organisations. Searches for individual-practitioner or solo-consultant equivalents returned only marketing content. **Result: §4.3 generalises from corporate-site research to a one-person site. That generalisation is unvalidated.**

**G6 — The peer-standing cost of a client-sales surface is unmeasured.**
*Method:* no study found that measures how technical evaluators react to commercial framing on an engineer's personal site; the inference in A9/C3 is assembled from two general-audience findings, and **both are narrower than they look**. [S2] measured a promotional *writing register*, not a sales *page*. [S9]'s guideline 9 — *"Use restraint with any promotional content (e.g., ads, offers)."* — elaborates almost entirely on advertising, and its single copy-facing clause is *"As for writing style, try to be clear, direct, and sincere."*; neither addresses a services surface directly. **Result: §9 P11 is the paper's lowest-confidence recommendation, and after this correction it is supported by register evidence extrapolated to page genre — not by a finding about sales surfaces.**

**And the evidence that does exist on commercial surfaces points the other way, on the client side.** [S5] records a participant rejecting a cleaning service in 35 seconds specifically because it published no rate — *"they don’t state the rate here, they want us to actually write to them. So I feel they are not open enough."* — and reports that a company's own portfolio page cost it credibility by showing only large clients: *"The Portfolio page only showed large condo complexes and office buildings, so users questioned how often the company actually worked with smaller residences."* [S5]. On testimonials it is two-sided: *"people trust testimonials from external sites more than those listed on the website itself"*, and *"while reviews and testimonials are useful, it is more important to have a presence on external review sites"* [S5]; [S6] nonetheless recommends *"including honest and balanced testimonials on your corporate website, and also cross-referencing other review sites"* [S6]. **All of this inherits G5's caveat** — corporate sites, client-side participants, not an engineer's personal site — but it means P11's deferral is a bet against *unmeasured peer cost*, taken over a *measured client cost of omission*. Topic 9 should weigh both directions, not just the one this paper started from.

**G7 — No measurement of the LLM-era decay of costly-signal reasoning (§10.3).**
*Method:* searches for post-2023 work on developer evaluation of AI-assisted portfolios/repos returned no peer-reviewed study. **Result: §10.3 is a stated risk, not a finding.**

---

## 12. Citations

**Quotation discipline used in this paper.** Every span presented as a quotation was returned as exact characters by a direct `curl` fetch of the source URL, converted from HTML with a local tag-stripping parser; HTML source line-wrapping is normalised to single spaces and nothing else is altered. **PDF sources ([S10], [S11], [S12], [S13]) mangle punctuation and word spacing in their text layers**, so the default for them is **paraphrase, explicitly labelled as paraphrase**. Five spans from PDFs are nonetheless presented as quotations, and only because each was re-verified by literal substring match against the characters extracted from the PDF's FlateDecode streams: the four [S10] spans in §2.4 (the study-population sentence, the design-look sentence, and Table 1's *"18 types of comments"* and *"(Categories with less than 3% incidence are not in this table.)"*), and the tweet quoted inside [S12] in §4.1. The two Table 1 spans were added during the 2026-08-10 critic-repair pass and were substring-matched against a fresh fetch of the PDF; the other three were verified in the original sweep and re-verified in that pass against fresh fetches of their own PDFs ([S10] and [S12]). Every other PDF-derived statement in this paper is a paraphrase. Where a source's apostrophes are typographic (U+2019), quotations reproduce them as such; this was byte-checked for the [S7], [S16] and [S5] spans (the [S5] rate quote in §11 G6 contains a U+2019 and does not match if written with an ASCII apostrophe — it was caught that way). **Match position is deliberately never cited here as corroboration:** a character offset is a property of the extractor, not of the source, so only the presence of the exact character sequence is claimed. No claim in this paper is sourced to a search-engine result summary; searches were used only to locate sources, which were then fetched.

| # | Source | Type | Used for |
|---|---|---|---|
| S1 | Nielsen, J. (2008). *How Little Do Users Read?* Nielsen Norman Group. https://www.nngroup.com/articles/how-little-do-users-read/ | First-party research article (rendered page) | 20–28% read rate; 111-word threshold |
| S2 | Morkes, J. & Nielsen, J. (1997). *Concise, SCANNABLE, and Objective: How to Write for the Web.* NN/g. https://www.nngroup.com/articles/concise-scannable-and-objective-how-to-write-for-the-web/ | First-party experimental study (n=51, 5 conditions) | Register effects; marketese; outbound links and credibility |
| S3 | Nielsen, J. (2006). *Progressive Disclosure.* NN/g. https://www.nngroup.com/articles/progressive-disclosure/ | First-party design-pattern article | The layering mechanism and its stated failure mode |
| S4 | Nielsen, J. (2006). *F-Shaped Pattern For Reading Web Content.* NN/g. https://www.nngroup.com/articles/f-shaped-pattern-reading-web-content-discovered/ | First-party eyetracking study (232 users) | Scan pattern; positional weight |
| S5 | Nielsen Norman Group (2016). *Trustworthiness in Web Design: 4 Credibility Factors.* https://www.nngroup.com/articles/trustworthy-design/ | First-party qualitative study | Typos/broken links; isolated-site failure; stability of trust factors since 1999 |
| S6 | Nielsen Norman Group. *About Us Information on Websites.* https://www.nngroup.com/articles/about-us-information-on-websites/ | First-party research (3 rounds, 70+ users, 100 sites tested + 65 reviewed) | Client-audience needs; jargon and corporate-speak; third-party reviews |
| S7 | Nielsen Norman Group. *Plain Language Is for Everyone, Even Experts.* https://www.nngroup.com/articles/plain-language-experts/ | First-party usability study with domain experts | Experts prefer plain language; the write-for-everyone counter-thesis |
| S8 | Nielsen Norman Group. *Social Proof in the User Experience.* https://www.nngroup.com/articles/social-proof-ux/ | First-party conceptual article | Social proof framing (pointer only) |
| S9 | Fogg, B.J. (2002). *Stanford Guidelines for Web Credibility.* Stanford Persuasive Technology Lab. https://credibility.stanford.edu/guidelines/index.html | First-party research summary (3 years, 4,500+ people) | The 10 guidelines; errors, contact, expertise, recency; g9's promotional restraint (scoped to ads/offers) and its writing-style clause |
| S10 | Fogg, B.J., Soohoo, C., Danielson, D., Marable, L., Stanford, J. & Tauber, E. (2002). *How Do People Evaluate a Web Site's Credibility?* Stanford Persuasive Technology Lab / Consumer WebWatch (Consumers Union). http://credibility.stanford.edu/pdf/How_Do_People_Evaluate_a_Web_Site's_Credibility_v37.pdf | Primary research report, n=2,684, 2,440 coded comments | Design-look 46.1% and the full ranked comment table; prominence-interpretation caveat |
| S11 | Marlow, J., Dabbish, L. & Herbsleb, J. (2013). *Impression Formation in Online Peer Production: Activity Traces and Personal Profiles in GitHub.* CSCW '13. https://herbsleb.org/web-pubs/pdfs/marlow-impression-2013.pdf | Peer-reviewed qualitative study, n=18 | What peers read; cue→inference mapping; empty-profile penalty |
| S12 | Marlow, J. & Dabbish, L. (2013). *Activity Traces and Signals in Software Developer Recruitment and Hiring.* CSCW '13. https://www.cs.cmu.edu/~xia/resources/Documents/Marlow-cscw13.pdf | Peer-reviewed qualitative study, n=13 (7 employers, 6 job seekers) | Assessment vs conventional signals; traces vs résumé; the free-time counter-argument |
| S13 | Sackett, P.R., Zhang, C., Berry, C.M. & Lievens, F. (2022). *Revisiting meta-analytic estimates of validity in personnel selection.* *Journal of Applied Psychology* 107, 2040–2068. DOI 10.1037/apl0000994. Retrieved from https://gwern.net/doc/statistics/meta-analysis/2021-sackett.pdf | Peer-reviewed meta-analytic revision | Work-sample validity revised .54 → .33; overcorrection thesis |
| S14 | TheLadders (2012-03-21). *TheLadders Reveals That Job Seekers Have Six Seconds To Succeed.* PR Newswire. https://www.prnewswire.com/news-releases/theladders-reveals-that-job-seekers-have-six-seconds-to-succeed-143629046.html | Vendor press release (funder = subject) | The 6-second claim, its stated method, and its commercial interest |
| S15 | Ladders, Inc. (2018-11-06). *Ladders Updates Popular Recruiter Eye-Tracking Study…* PR Newswire. https://www.prnewswire.com/news-releases/ladders-updates-popular-recruiter-eye-tracking-study-with-new-key-insights-on-how-job-seekers-can-improve-their-resumes-300744217.html | Vendor press release | The 7.4-second update |
| S16 | NACE (2026). *How New Grad Job Seekers Can Stand Out With Potential Employers.* https://www.naceweb.org/about-us/press/2026/how-new-grad-job-seekers-can-stand-out-with-potential-employers | Association survey release, methodology stated (n=183) | Skill-based hiring 70%; scope limits |
| S17 | NACE (2026). *The High-Impact Skills College Students Should Showcase on Their Resumes.* https://www.naceweb.org/about-us/press/2026/the-high-impact-skills-college-students-should-showcase-on-their-resumes | Association survey release, methodology stated (n=185, sponsored by Jobscan) | Employer skill wish-list; sponsor disclosure |
| S18 | Lindgaard, G., Fernandes, G., Dudek, C. & Brown, J. (2006). *Attention web designers: You have 50 milliseconds to make a good first impression!* *Behaviour & Information Technology* 25(2), 115–126. DOI 10.1080/01449290500330448. Metadata via Semantic Scholar Graph API. | Peer-reviewed — **metadata only, full text not retrieved** | Pointer for speed-of-visual-judgment; not load-bearing |
| S19 | Oppenheimer, D.M. (2006). *Consequences of erudite vernacular utilized irrespective of necessity.* DOI 10.1002/acp.1178. Metadata via Semantic Scholar Graph API. | Peer-reviewed — **metadata only, full text not retrieved** | Pointer for needless-complexity effects; not load-bearing |
| S20 | Stack Overflow Developer Survey 2024 — results and methodology. https://survey.stackoverflow.co/2024/ and https://survey.stackoverflow.co/2024/methodology | First-party survey (used as a **negative** finding) | G3: zero "portfolio" matches across eight enumerated documents (landing + all seven linked sub-pages); self-selected sample |

**Local artifacts** (not counted as sources; verified with `git`/`grep`/`wc` in the repo at `/opt/skyy-net/portfolio`): `index.html`, `style.css`, `projects.js` (215 lines total), `docs/standards/architecture/research/topics.md`, `CLAUDE.md`.

---

## 13. Test plan — what research cannot settle

Each item is a question this paper could not answer from evidence, framed as something the buildout can actually run.

1. **Does a peer open the code?** Instrument the case study's outbound repo links (or check GitHub traffic referrers). If peers do not click through, the deep layer is costing effort for no signal, and P2's depth budget should shrink. *Cheap; answerable in one quarter.*
2. **Where does attention stop?** Session recording or scroll-depth on the case-study page against the §3 layering model. [S3] warns the split is the hard part; this is the only way to find out whether the split is right. *Requires adding analytics — itself a decision with a privacy tradeoff worth surfacing.*
3. **Does the production-dependency sentence (P5) change anything?** A/B or before/after on the hero: with and without the named-businesses fact. This paper claims it is the single highest-value unused sentence [§8, derived] — that claim is testable.
4. **Does a contact affordance produce contact?** Ship P6, count inbound over two quarters. If zero, the client leg is theoretical and topic 9 should be re-scoped or retired.
5. **Do recruiters reach the site at all?** Compare referrer data against LinkedIn profile-view timing. Directly tests §4.2's deflationary read, which is derived, not measured (G1).
6. **Does the objective rewrite (P4) survive contact with a real reader?** Five-person read-aloud with two peers, one hiring manager, two non-technical buyers. [S2] measured register effects on a general-purpose site, not a portfolio; this is the cheapest way to check the transfer.
7. **Is "solo-built" read as a strength or a risk?** Ask three senior engineers to read the case study cold and state their reservation. §8's mitigation (show the decision record) is an untested hypothesis.
8. **Does a client surface cost peer standing?** The only honest way to settle G6 is to build it behind a separate path, show both versions to peers, and ask. Until then, P11's deferral stands on inference.
9. **Has the LLM shift devalued written artifacts as signal (§10.3)?** Ask the same senior engineers what they now discount. If "well-written repo" has moved to a conventional signal, P2's format changes materially — toward live systems, telemetry and failure narratives — and that finding belongs to topic 6 (proof surfaces).
