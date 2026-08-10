# Making a self-built system read as senior-level signal

```
Topic:          What determines whether "I designed, built, and operate a production private
                cloud, solo, with real businesses running on it" lands as staff-level evidence
                or as a hobby lab — and what specific words, claims, and artifacts move it?
Feeds:          The positioning thesis — the hero, the About, and the framing of the MDC
                Private Cloud case study (index.html, projects.js entry #1)
Last validated: 2026-08-10
Revalidate:     medium — 3 months
Confidence:     Definitive on what published seniority frameworks SAY (§3) — every level
                definition is quoted verbatim from a first-party documented artifact (SFIA 9,
                Dropbox, GitLab, engineeringladders, StaffEng). Definitive on the three
                empirical hiring findings in §5 (Botelho & Chang 2023; Kacperczyk & Younkin
                2022; Rivera 2012) as descriptions of what those studies report — with their
                scope limits stated. Derived (marked throughout) on the §4 satisfies/cannot-
                satisfy audit, the §7 credibility-device list, the §11 vocabulary rulings, and
                the §10 positioning recommendation — these are this paper's inferences across
                cited sources, not findings anyone published. Unverified→DECLINED on the
                homelab discount itself (§5.4, Gap G1): no credible primary source was found
                and none is cited. Gaps G1–G9 in §13.
Critic:         not-yet-verified — 2026-08-10
```

**Volatility map (Research Standard §3, mixed-volatility rule).** The header carries the
highest tier present. A refresh may **skip** §§2, 3, 4, 7, 8, 11 (Low — the seniority frameworks
are stable published artifacts: SFIA 9 is the current standard, the Dropbox framework's public
repo dates from 2021, the GitLab pages were last modified 2026-03-12, StaffEng's guides are the
2021 book's companion text; the credibility and vocabulary derivations rest on those). A refresh
**must** re-examine §5 (the hiring-evaluation evidence and whether newer audit studies exist),
§9 (the non-traditional-background read, which is the fastest-moving claim in the paper), §12
(boundary analysis) and §13 (gaps). That is roughly a third of the paper, which is why this is
one paper and not two — §3 says split when the fast-moving material exceeds ~a third.

**Why *medium — 3 months* and not Low (Research Standard §5).** The paper spans two volatility
tiers. The seniority-framework half is Low (fundamentals plus stable published artifacts, band
3–6 months). The hiring-evaluation half is Medium (competitive/market positioning evidence, band
2–4 months) — the audit studies are 2022–23 and the market read on self-directed work in
software hiring is actively moving. §3 binds the header to the highest tier present, so Medium;
3 months rather than 4 because the fast half is what the recommendation turns on.

---

## 0. Read this first — the finding that reorders the recommendation

The dispatch frames the question as *"which framing makes this land as staff-level rather than
hobby?"* The best available empirical evidence says the framing choice is real but is operating
downstream of a larger effect, and in the opposite direction from the one the question assumes.

**In a field experiment sending applications to 2,400 software engineering positions in the
United States, candidates with founder experience received 43% fewer callbacks than
non-founders** [S11]. A separate résumé-audit study found founding "significantly reduces the
likelihood that an employer interviews a male candidate," and traced the mechanism to employer
beliefs about **fit and commitment**, not competence [S12].

Those are the two closest available proxies for "spent the period doing his own thing rather
than holding jobs," and both measure a **penalty at the screen**, in exactly this job category.
Neither studied portfolios; neither studied infrastructure platforms. But the direction of the
best evidence available is negative, and a paper that buried it under seven sections of framing
advice would be advocacy.

Three consequences run through everything below:

1. **The site's job is not to win the screen.** It very likely cannot. Its job is to win the
   *conversation* a screen or a referral grants, and to be the artifact a referrer forwards.
   Optimise for depth-on-arrival, not for surviving a keyword filter (§9, derived).
2. **The discount to beat is about fit and commitment, not skill.** [S12] The reader's unspoken
   question is not "is he good?" — it is "will he work inside someone else's constraints, on
   someone else's priorities, for years?" Every credibility device in §7 is chosen because it
   answers *that* question, not the skill question (derived).
3. **The claim ceiling is lower than the platform's apparent scope.** Read strictly against
   published ladders, a solo-built platform can evidence the *scope, ambiguity and operational
   ownership* half of senior-to-staff and **cannot evidence the organisational half at all**
   (§4). Claiming "staff-level" outright invites a check the evidence structurally fails.

**No number in this paper is attributed to the MDC platform.** Every numeric slot the
recommendation needs is left as an explicit `MEASURE:` placeholder (§10.6). Inventing an uptime
figure, a user count, or a node count would be precisely the fabrication the Research Standard
forbids, and the subject's platform metrics were not supplied.

---

## 1. Primer — what is actually being asked of the page

A portfolio page is a **signalling device**. The useful formal frame comes from the hiring-signal
literature. Marlow & Dabbish's CSCW 2013 interview study of GitHub-based hiring (13 participants:
seven employers who reported using GitHub to evaluate candidates, six job seekers) states the
distinction that organises this entire topic [S10]:

> assessment signals are thought to be more reliable indicators of the presence of a certain
> quality because they are costly to produce, whereas conventional signals are more susceptible
> to being manipulated because they are more easily faked by someone not possessing the
> underlying quality they signal.

*(Definitive as a description of the study's framing — peer-reviewed, first-party. Quoted from
the CMU-hosted PDF; see the quotation-discipline note in §14.)*

That single distinction is the whole engineering problem of this page:

- A **tag list** — `K3s`, `Temporal`, `Django`, `Ceph`, `ArgoCD`, `Ansible`, exactly as
  `projects.js` currently renders them — costs nothing to type. It is a **conventional signal**.
  Anyone can type it. (Derived from [S10]; the local artifact is `projects.js`, verified in-repo.)
- An adjective — "enterprise-grade", "foundation-up" — costs nothing either. Also conventional.
- A **published decision record naming three rejected options and what each would have cost**, a
  **measured SLO with its window**, a **named outage with its business consequence** — each is
  expensive to fabricate and cheap for a reader to sanity-check. These are **assessment signals**.

The same study found something the design must respect: **the employers interviewed favoured
cues that took less effort to access and verify** [S10, paraphrase from the PDF]. An assessment
signal that costs the *reader* effort does not get consumed. So the target is a narrow one:
**high cost to produce, low cost to verify.**

Second frame, from the credibility literature. Fogg's *Stanford Guidelines for Web Credibility*
— summarising a Stanford Persuasive Technology Lab research programme the page itself describes
as "based on three years of research that included over 4,500 people" — opens with the guideline
that maps directly onto assessment signalling [S15]:

> 1. Make it easy to verify the accuracy of the information on your site.

with the elaboration that you build credibility "by providing third-party support (citations,
references, source material) for information you present, especially if you link to this
evidence," and that "Even if people don't follow these links, you've shown confidence in your
material." *(Definitive as to what the guideline says — first-party, published, under the lab's
editorial control. The underlying studies are 1999–2002; treat the specifics as dated, the
mechanism as durable. Quoted from the rendered page, whitespace normalised — §14.)*

The whole paper is the intersection of those two frames: **what can this subject put on a page
that is expensive to fake and cheap to check.**

---

## 2. The landscape of published seniority definitions — what exists

Four kinds of first-party documented artifact define engineering seniority publicly. All four
were fetched and quoted directly for this paper.

| Kind | Instance used | Authority | Why it is here |
|---|---|---|---|
| Vendor-neutral standards framework | **SFIA 9** (Skills Framework for the Information Age), levels of responsibility [S1] | First-party, versioned, foundation-governed | The only source here that is *not* one company's opinion; used in job architecture across industries |
| Employer ladder, published | **Dropbox Engineering Career Framework** [S2][S3][S4] | First-party, Apache-2.0, in a public repo | Names Staff/Principal explicitly and states each level's scope in one sentence |
| Employer ladder, published | **GitLab Handbook, Engineering Career Framework** [S5][S6] | First-party, public handbook, dated revisions | An all-remote company's definition — useful because remote work removes some in-person influence mechanisms |
| Community framework | **jorgef/engineeringladders** [S7] | Open-source framework, widely referenced | The only one with an explicit *System ownership* axis, which is the axis this subject's work sits on |
| Practitioner synthesis | **StaffEng / Will Larson** [S8][S9] | First-party author-published, book companion | The industry's most-cited descriptive account of what Staff-plus roles actually are |

Two authority caveats, stated up front:

- **jorgef/engineeringladders is a community framework, not an employer's ladder.** It is
  popular (the GitHub API reports `stargazers_count` 8537 for `jorgef/engineeringladders`,
  default branch `master`, retrieved 2026-08-10 — a vendor-reported metric, not an enumeration,
  and not load-bearing for any claim here). Its authority is "this is what this framework says,"
  not "this is what employers do."
- **StaffEng is first-party but is one author's synthesis of interviews.** Per Research Standard
  §3's authority/formality split, it is a *documented* artifact under the author's editorial
  control, so claims about **what StaffEng says** are definitive; claims about **what the
  industry does** derived from it are *directional*.

**A currency note worth recording.** GitLab's public competency pages now carry the line "Please
refer to Engineering Job Levels for current competencies," pointing at a Google Sheet, above the
competency text that is still rendered on the page [S5][S6]. The rendered competency lists are
therefore the handbook's published text but may not be the company's current authoritative list.
Quoted claims below are marked accordingly.

---

## 3. What "senior / staff / principal" actually means in those frameworks (definitive)

### 3.1 SFIA 9 — the vendor-neutral read

SFIA structures seven levels of responsibility against generic attributes. The framework names
them: Level 4 — *Enable*; Level 5 — *Ensure, advise*; Level 6 — *Initiate, influence*; Level 7 —
*Set strategy, inspire, mobilise* [S1].

**Level 5** (the level most job architectures map "Senior" onto) [S1]:

> Autonomy — Works under broad direction. Work is self-initiated, consistent with agreed
> operational and budgetary requirements for meeting allocated technical and/or group
> objectives. Defines tasks and delegates work to teams and individuals within area of
> responsibility.

> Influence — Influences critical decisions in their domain. Has operational level contact
> impacting execution and implementation with internal colleagues and external contacts. Has
> significant influence over the allocation and management of resources required to deliver
> projects.

> Complexity — Performs an extensive range of complex technical and/or professional work
> activities, requiring the application of fundamental principles in a range of unpredictable
> contexts.

**Level 6** [S1]:

> Autonomy — Guides high level decisions and strategies within the organisation's overall
> policies and objectives. Has defined authority and accountability for actions and decisions
> within a significant area of work, including technical, financial and quality aspects.
> Delegates responsibility for operational objectives.

> Influence — Influences the formation of strategy and the execution of business plans. Has a
> significant management level of contact with internal colleagues and external contacts. Has
> organisational leadership and influence over the appointment and management of resources
> related to the implementation of strategic initiatives.

*(Definitive — first-party, current standard version. Quoted from the rendered sfia-online.org
pages; whitespace normalised, §14.)*

### 3.2 Dropbox — the sharpest one-sentence delta

Dropbox's public framework enumerates the software-engineer track. Enumerating the repo's git
tree via the GitHub API and filtering for `software_engineer` returns exactly seven pages, which
I list rather than count-by-assertion: `ic1_software_engineer.html`, `ic2_software_engineer.html`,
`ic3_software_engineer.html`, `ic4_software_engineer.html`, `ic5_staff_software_engineer.html`,
`ic6_principal_software_engineer.html`, `ic7_senior_principal_software_engineer.html` — seven
enumerated items [S4]. The ladder therefore names **Staff at IC5, Principal at IC6, Senior
Principal at IC7**; IC4 is the level immediately below Staff and carries no seniority adjective
in its page title.

The scope statements are one sentence each, and the delta between them is the single most
useful fact in this paper [S2][S3]:

| Level | Scope statement (verbatim) |
|---|---|
| **IC4** | "I autonomously deliver ongoing business impact across a team, product capability, or technical system" |
| **IC5 (Staff)** | "I set the multi-year, multi-team technical strategy and deliver it through direct implementation or broad technical leadership" |

And under *Scope — Area of ownership and level of autonomy / ambiguity* [S2][S3]:

| Level | Scope detail (verbatim) |
|---|---|
| **IC4** | "I own and deliver semi-annual/annual goals for my team." |
| **IC5 (Staff)** | "I deliver multi-year, multi-team product or platform goals" |

*(Definitive — first-party, published in Dropbox's own Apache-2.0 repo, quoted from the raw
repo HTML. §14.)*

The delta from IC4 to IC5 is **not technical depth**. It is (a) time horizon — annual to
multi-year — and (b) organisational span — one team to multiple teams.

### 3.3 GitLab — the same delta, stated organisationally

GitLab's Staff page states [S6]:

> A staff engineer generally operates at a team level scope, serving as the technical leader for
> one or more of their team's domains of responsibility.

and lists, among the Staff leadership competencies, "Helps others across the organization
understand their team's domain and technology," "Unblocks and enables team members and
counterparts," and participation in the Architecture Design Process "as a DRI." The Senior page
states, among other things, "Able to deliver work, even when given unclear requirements, within
the context of their team," and "Acts as a Coach and Mentor to others" [S5].

*(Definitive as GitLab's published handbook text, with the §2 currency caveat: the pages
themselves say the authoritative competency list lives in a linked spreadsheet. Quoted from the
rendered handbook pages; whitespace normalised.)*

### 3.4 engineeringladders — the only explicit *system ownership* axis

This framework uses five axes — Technology, System, People, Process, Influence — and states
that the Influence axis "is orthogonal and applies to all the other axes." Seniority begins at
its Level 4 (its own table marks Level 4 and above as `Senior: Yes`) [S7].

The **System** axis, verbatim from the raw `README.md` [S7]:

> 1. **Enhances**: successfully pushes new features and bug fixes to improve and extend the system
> 2. **Designs**: designs and implements medium to large size features while reducing the system's tech debt
> 3. **Owns**: owns the production operation and monitoring of the system and is aware of its SLAs
> 4. **Evolves**: evolves the architecture to support future requirements and defines its SLAs
> 5. **Leads**: leads the technical excellence of the system and creates plans to mitigate outages

The **Influence** axis, verbatim [S7]:

> 1. **Subsystem**: makes an impact on one or more subsystems
> 2. **Team**: makes an impact on the whole team, not just on specific parts of it
> 3. **Multiple Teams**: makes an impact not only his/her team but also on other teams
> 4. **Company**: makes an impact on the whole tech organization
> 5. **Community**: makes an impact on the tech community

*(Definitive as to what the framework says — quoted verbatim from raw.githubusercontent.com.
Directional at most as to industry practice: it is a community framework.)*

This axis pair is the crux of the whole topic and §4 works through it.

### 3.5 StaffEng — the definition that includes the organisation

Larson's taxonomy names four Staff-plus archetypes — **Tech Lead**, **Architect**, **Solver**,
**Right Hand** — and describes the shared foundation across them as "setting and editing
technical direction, providing sponsorship and mentorship, injecting engineering context into
organizational decisions, exploration, and what Tanya Reilly calls being glue" [S9].

And the sentence that no framing device can route around [S8]:

> Being a Staff-engineer is not just a role. It's the intersection of the role, your behaviors,
> your impact, and the organization's recognition of all those things.

*(Definitive as StaffEng's stated position; directional as a claim about the industry. Quoted
verbatim; the apostrophes are U+2019 in the source and are reproduced as such.)*

Larson also notes, of the Architect archetype, that the title "has fallen out of style in many
companies, but the Architect role remains alive and well for folks operating at Staff-plus
levels" [S8] — relevant to §11's vocabulary rulings, since "Software architect" is the subject's
current self-title.

### 3.6 What the four agree on — derived

**Derived from [S1][S2][S3][S5][S6][S7][S8][S9].** Across a vendor-neutral standards framework,
two employer ladders, one community framework, and the leading practitioner synthesis, the axes
that separate levels are consistently:

1. **Scope of ownership** — subsystem → system → domain → multi-domain/platform.
2. **Time horizon** — sprint → annual → multi-year.
3. **Ambiguity tolerance** — defined requirements → unclear requirements → *defining* the what
   as well as the how (Dropbox IC5: "defining both the what and how of things to be done" [S3]).
4. **Blast radius / consequence** — implicit in all; explicit in Dropbox IC5's "a tight deadline
   with significant consequences of failure" [S3].
5. **Organisational reach** — self → team → multiple teams → company → community.
6. **Recognition by the organisation** — [S8] makes it constitutive, not incidental.

**Technical depth is not on the list as a level discriminator.** All four frameworks treat depth
as saturating early; every one of them distinguishes senior from staff on *reach and horizon*.
That is the single most important structural fact for this positioning problem, and it cuts
both ways: it means "he knows a lot of technologies" is not a seniority argument, and it means
"he owns a multi-year platform under real consequence" is.

---

## 4. What a solo-built production platform genuinely satisfies — and what it structurally cannot

**This section is derived** — it is this paper's audit of the subject's described work against
the framework text quoted in §3. The inputs are named per row. The frameworks did not perform
this audit; I did.

### 4.1 Genuinely satisfied (given evidence — see the evidence column)

| Framework criterion (source) | Why the platform satisfies it | Evidence the page must carry |
|---|---|---|
| **Autonomy: "Work is self-initiated"** [S1, SFIA L5] | A solo-designed platform is maximally self-initiated; there is no stronger instance of the clause | None needed — it is self-evident once the work is described |
| **Complexity: "extensive range of complex technical and/or professional work activities … in a range of unpredictable contexts"** [S1, SFIA L5] | Proxmox virtualisation + three K3s clusters + Ceph + a Django/Temporal control plane + ArgoCD + Ansible spans virtualisation, storage, orchestration, and control-plane software | The breadth must be shown as *one coherent system*, not six tags |
| **System axis 3 — "owns the production operation and monitoring of the system and is aware of its SLAs"** [S7] | Genuinely satisfiable by a solo operator: there is nobody else to own it | **Monitoring must be shown, and an SLA/SLO named.** Without those two, the axis is claimed, not evidenced |
| **System axis 4 — "evolves the architecture to support future requirements and defines its SLAs"** [S7] | The platform has documented architecture standards it is governed by | A link to, or excerpt of, the architecture standards; the SLO definition |
| **System axis 5 — "leads the technical excellence of the system and creates plans to mitigate outages"** [S7] | Satisfiable — a documented DR/backup/mitigation posture | A named mitigation plan, not an adjective |
| **Ambiguity: "expert at identifying the right solutions to solve ambiguous, open-ended problems that require tough prioritization"** [S2, Dropbox IC4] | Foundation-up design with no specification is the maximal case | Decision records showing the prioritisation, not the outcome |
| **Time horizon: "multi-year … platform goals"** [S3, Dropbox IC5] | 2025–26 and continuing, per the current `projects.js` entry | Dated history — the platform's timeline is itself an assessment signal |
| **Consequence: "significant consequences of failure"** [S3, Dropbox IC5] | Two real businesses depend on it | **This is the strongest single asset available** (§8) |

### 4.2 Structurally unavailable — and no framing closes these

| Framework criterion (source) | Why solo work cannot instantiate it |
|---|---|
| **Influence axis 2–4: Team / Multiple Teams / Company** [S7] | These are defined by their object. With no team, no other teams, and no tech organisation, levels 2, 3 and 4 are not "unproven" — they are **uninstantiable**. Only axis level 1 (Subsystem) and level 5 (Community, via publishing) are reachable |
| **"I deliver multi-year, multi-team product or platform goals"** [S3, Dropbox IC5] | The multi-team half is the defining clause of Staff at Dropbox. It is absent by construction |
| **"technical leader for one or more of their team's domains"; "Unblocks and enables team members"** [S6, GitLab Staff] | Requires team members |
| **"Defines tasks and delegates work to teams and individuals"** [S1, SFIA L5]; **"Delegates responsibility for operational objectives"** [S1, SFIA L6] | Delegation is in the *Autonomy* attribute at both L5 and L6. Solo work satisfies "self-initiated" and fails "delegates" in the same sentence |
| **Mentorship / sponsorship** [S9, Dropbox IC4's Mentorship lever, GitLab Senior's "Coach and Mentor"] | Requires people to mentor |
| **"injecting engineering context into organizational decisions"** [S9] | Requires an organisation making decisions |
| **"the organization's recognition of all those things"** [S8] | Constitutive of the Staff definition per StaffEng, and definitionally unavailable |
| **Working within externally imposed political and social forces** — Nygard's ADR *Context* section names "technological, political, social, and project local" forces [S18] | The technological forces are real; the political and social ones largely are not. This is the honest core of the homelab objection (§5.5) |

### 4.3 The derived claim ceiling

**Derived from §4.1 and §4.2.** On a strict reading of the published ladders, a solo-built
production platform can evidence:

- **Senior-level and above on scope, ambiguity, complexity, time horizon and system ownership**
  — genuinely, and in the case of system ownership ([S7] axis 3–5) more completely than most
  employed engineers can, because there is no team to share the pager with.
- **Nothing at all on organisational reach, delegation, mentorship, or recognition** — four to
  six of the criteria the same frameworks use to separate Senior from Staff.

**Therefore the defensible claim is a compound one, and it must be compound to survive a
check:** *architectural scope and operational ownership at a level published ladders describe
at Staff, evidenced without the organisational scope those ladders also require.* Stating the
missing half is not a weakness in the pitch. It is the thing that makes the stated half
believable — and §7 explains why in signalling terms.

**A bare "staff-level" or "principal-level" self-label is not supported by this evidence and
should not appear on the page.** A reader holding any of the four frameworks in §3 can falsify
it in one step, and a falsified claim damages every neighbouring claim [S15, guideline 1's
inverse].

---

## 5. The discount — what the evidence actually says, and what it does not

### 5.1 The direct evidence: self-directed work is penalised at the screen (definitive as to what the studies report)

**Botelho & Chang (2023), *Organization Science* 34(1):484–508** — a field experiment. From the
published abstract [S11]:

> We sent applications varying the candidate's founder experience to 2,400 software engineering
> positions in the United States at random. We find that former founders received 43% fewer
> callbacks than nonfounders and that this difference is driven by older hiring firms. Further,
> this founder penalty is greatest for former successful founders, who received 33% fewer
> callbacks than former failed founders.

*(Definitive as a description of the study's reported findings. Method: field experiment,
n=2,400 job postings, software engineering roles, US. Retrieved from the RePEc/IDEAS record,
which reproduces the publisher's abstract verbatim — the INFORMS publisher page returned an
empty body to a direct fetch (§13, G6), so the retrieval host is a secondary one and this is
noted rather than hidden. Funder: not stated in the abstract; the authors are academics at Yale
SOM.)*

Two details matter more than the headline. **The penalty is greatest for successful founders** —
which rules out "they think you failed" as the mechanism. And it **is driven by older hiring
firms** — which means the penalty is not uniform across employers, and the subject's target
employer segment is a real variable (§10, §15).

**Kacperczyk & Younkin (2022), *Organization Science* 33(2):716–745** — a résumé-based audit
plus an experimental survey. From the published abstract [S12]:

> We propose that employers penalize job candidates with a history of founding a new venture
> because they believe them to be worse fits and less committed employees than comparable
> candidates without founding experience.

> We test our proposition using a résumé-based audit and an experimental survey. The audit
> reveals that founding significantly reduces the likelihood that an employer interviews a male
> candidate, but there is no comparable penalty for female ex-founders.

*(Definitive as a description of the study's reported findings and proposed mechanism. Retrieved
from the RePEc/IDEAS record; the accepted manuscript is also hosted by LBS Research Online.
Scope: the audit is not software-engineering-specific.)*

**The mechanism finding is the actionable one.** Both studies point at *fit and commitment*,
not competence. **Derived from [S11][S12]:** every hour spent making the page prove technical
excellence is spent on a question the evidence says is not the one being asked. The page's
hardest job is to answer *will he operate inside someone else's constraints, and will he stay*.

### 5.2 The adjacent evidence: outside pursuits are used for fit-sorting

**Rivera (2012), *American Sociological Review* 77(6):999–1022** — 120 interviews with employers
plus participant observation of a hiring committee, at elite professional service firms (law,
banking, consulting). From the abstract [S13]:

> Employers sought candidates who were not only competent but also culturally similar to
> themselves in terms of leisure pursuits, experiences, and self-presentation styles. Concerns
> about shared culture were highly salient to employers and often outweighed concerns about
> absolute productivity.

And from the findings [S13]:

> Evaluators described fit as being one of the three most important criteria they used to assess
> candidates in job interviews; more than half reported it was the most important criterion at
> the job interview stage, rating fit over analytical thinking and communication skills.

*(Definitive as a description of what Rivera reports. **Scope limit, stated plainly: this is
elite professional services, not software engineering.** The transfer to software hiring is
*derived*, not demonstrated, and a reader should discount it accordingly. Quoted from the
ASA-hosted PDF; PDF-derived spans were checked for extraction artifacts before quoting, §14.)*

Rivera also reports an evaluator at one law firm explaining that they take a pass on candidates
who show a strong passion for something outside work, because it signals a poor fit with that
firm's culture *(paraphrase from the PDF — the original span contains extraction artifacts and
is not presented as a quotation)* [S13].

**Derived from [S13] + [S12]:** the "homelab" reading and the "platform" reading are not two
descriptions of the same evidence — they route the artifact into two different evaluative
categories. A *leisure pursuit* is scored on cultural fit. A *system under production ownership*
is scored on competence and consequence. The vocabulary rulings in §11 are downstream of exactly
this: the words decide which scoring rubric the reader picks up.

### 5.3 The counter-evidence: self-directed work is also read positively

The same GitHub-hiring study that supplies the assessment/conventional distinction found
employers reading side projects favourably [S10]:

> For employers this meant a potential employee who would spend their free time working, and
> show initiative and entrepreneurship in their work.

and, on continuous activity history [S10]:

> This kind of historical signal would be extremely costly to fake, making it a more reliable
> indicator of investment.

*(Definitive as a description of what the study reports. Sample: 13 interviewees — seven
employers, six job seekers — recruited from a survey of GitHub users; US-based software
organisations. **Age caveat: 2013.** Its "GitHub is your new resume" context predates both the
current hiring market and LLM-assisted code generation, which plausibly cheapens some of the
signals it describes. Treat as directional for 2026.)*

**Derived from [S10] + [S11] + [S12] + [S13]:** the evidence is genuinely two-directional and it
resolves by *evaluator segment*, not by truth. Employers who screen on résumé pattern-match
penalise self-direction [S11][S12]. Individuals who read the actual work reward it [S10]. Since
the site is only ever read by the second group — nobody reads a portfolio during an ATS pass —
**the site should be built entirely for the second group**, and the first group should be
addressed by a different instrument (a conventional résumé, and referrals). That is a positioning
finding, and §10 acts on it.

### 5.4 Gap: the homelab discount itself is not evidenced (finding, not omission)

The dispatch asks for evidence on what specifically causes evaluators to discount self-directed
infrastructure work: absence of external constraint, no other stakeholders, no scale, no
adversity, self-graded outcomes.

**No credible primary source was found for any of those mechanisms as applied to homelabs or
self-built infrastructure.** Search method:

- Web search for peer-reviewed or first-party employer-documented work on homelab/home-lab
  experience in hiring evaluation. Returned only SEO content-marketing blog posts from résumé
  vendors and IT-staffing sites, plus one undated vendor forum thread. **None is citable** under
  the Research Standard's credibility bar, and none is cited here.
- Web search for peer-reviewed empirical work on side projects / personal projects in software
  résumé screening. Returned no study of the evaluation question; the nearest hits were the
  *résumé-driven development* line of work (about technology choice by developers, not about
  evaluator behaviour) and technical-interview-experience studies.
- Targeted probe of arXiv cs.SE hiring literature (fetched abstracts). The most recent relevant
  item found (Feb 2026) studies *candidate experience* of recruitment processes, not evaluator
  discounting of self-directed work.

**Therefore the mechanisms in §5.5 below are derived, not cited.** They are constructed from
[S1][S3][S6][S7][S8][S12][S13][S18] and are labelled as inference throughout. A downstream
consumer must not treat them as findings.

### 5.5 The discount mechanisms — derived, and named as derived

**Derived from [S7] (Influence axis), [S3][S6] (multi-team/team-leader clauses), [S8]
(organisational recognition), [S12] (fit-and-commitment mechanism), [S13] (cultural-fit
sorting), [S18] (political/social forces in decision context).** Each row states which framework
text it is inferred from, so a critic can check the inference rather than the assertion.

| Mechanism | Inferred from | The remedy it implies |
|---|---|---|
| **No externally imposed constraint** — you chose the requirements, so meeting them proves nothing | [S18]'s Context section explicitly includes "political, social, and project local" forces alongside technological ones; a solo project has few of the first two | Surface constraints you did **not** choose: hardware you already owned, a business that could not take downtime, a standard you bound yourself to and then could not escape (§7 D1) |
| **No other stakeholders** — no one to negotiate with, no one to say no | [S6]'s Staff competencies are largely other-people verbs ("Helps others…", "Unblocks and enables…"); [S8] makes recognition constitutive | Substitute the **users of the businesses** as the stakeholders whose needs constrained the design (§8) |
| **Self-graded outcomes** — you define success and then declare it | [S12]'s fit/commitment mechanism; a self-graded artifact carries no independent grade | Substitute an instrument for the grade: SLO + measurement window ([S17]), incident record, backup restore test |
| **No adversity** — nothing went wrong, or nothing is admitted to | [S18]: "All consequences should be listed here, not just the 'positive' ones" | Publish one real failure with its cost (§7 D5) |
| **Uninstantiable influence** — the axis literally cannot be climbed | [S7] Influence 2–4 | State the boundary rather than let the reader find it (§4.3); reach for axis 5 (Community) via published writing, the only reachable rung |
| **Category error at first read** — the artifact is filed as a leisure pursuit | [S13]'s leisure-pursuit fit-sorting | Vocabulary (§11): never let the first noun the reader meets be a hobby noun |

### 5.6 One more piece of evidence that constrains what the page can hope for

Sackett, Zhang, Berry & Lievens (2022), *Journal of Applied Psychology* — a systematic revision
of meta-analytic validity estimates in personnel selection, correcting for systematic
overcorrection for range restriction. Their revised table entry for **work sample tests** draws
on Roth et al. (2005), k=54 studies, N=10,469, and reports an operational validity of **.33**,
noting that meta-analysis "rightly makes no correction" for range restriction [S14].

*(Definitive as a description of the paper's reported estimate. PDF-derived — **paraphrased, not
quoted**, because the text layer mangles punctuation; the .33 figure and the k/N values were
read directly from the extracted table row.)*

**Derived from [S14]:** if a *standardised, administered* work sample predicts job performance at
r ≈ .33, an unstandardised, self-selected, self-narrated artifact predicts less. The portfolio
should therefore not be positioned — internally or externally — as a substitute for evaluation.
Its realistic job is to make an evaluation *happen*, and to make it start from a higher floor.

---

## 6. Comparative landscape — the alternatives, fairly stated

The self-built platform is one of several instruments that can carry a seniority claim. A fair
comparison matters because the recommendation in §10 allocates effort.

| Instrument | Signal class [S10] | Strength | Honest weakness | Availability to this subject |
|---|---|---|---|---|
| **Employment history at known employers** | Conventional at the screen, assessment in reference checks | The default currency; the only one an ATS reads | Says nothing about what you actually did | Not available in the strong form; this is the premise of the topic |
| **The self-built production platform** | **Assessment**, if evidenced | The only instrument that carries architecture + operations + consequence simultaneously | Self-graded; zero organisational reach (§4.2); penalised at the screen by proxy evidence [S11][S12] | **The subject's strongest asset** |
| **Open-source contribution record** | **Assessment** — [S10] found accepted contributions to well-known projects are hard to fake and raise employer perception via affiliation | Third-party accepted; independently verifiable at near-zero reader cost | Requires sustained participation in someone else's project; slow to build | Available; not currently present |
| **M.S. Computer Science (completing 2026)** | **Assessment** — [S10] notes education is a reliable skill signal that is costly for an employer to verify | Third-party verified; passes screens; directly rebuts "self-taught tinkerer" | Says little about production judgement | **Available now, and currently mis-stated on the site (§10.5)** |
| **Public writing / talks** | Assessment if substantive | The only route to [S7]'s Influence axis level 5 (Community) — the one organisational rung a solo operator can reach | Slow; costs sustained effort | Available; not currently present |
| **Certifications (CKA, etc.)** | Unknown | — | **No credible evidence found** on their weight in senior-level software hiring (§13, G4) | Unknown |
| **Client / production references** | **Assessment** | Third-party attestation of consequence — directly attacks the self-graded objection | Requires a willing referee; opsec-sensitive | Plausibly available via the two businesses |
| **Standardised take-home / work sample** | Assessment | Validity ≈ .33 [S14] — modest but real, and it is the employer's instrument, not yours | Not under the subject's control | N/A |

**Fair statement of the competition:** for the specific job of getting past a résumé screen at a
larger employer, employment history beats everything on this list and the platform may actively
hurt [S11]. For every reading that happens *after* that point — a referral forward, a peer
skim, a founder's direct read, a client evaluation — the platform is the strongest instrument
available and nothing else on the list is close.

---

## 7. What this provides — the credibility devices, enumerated

**Each device converts a conventional signal into an assessment signal** by making it expensive
to fake and cheap to verify [S10]. Devices are ordered by leverage-per-effort. Sourcing per row;
where a row is derived, it says so and names its inputs.

**D1 — Externally imposed constraints, named as external.** *(Derived from [S18]'s Context
section; [S12]'s fit mechanism.)* A constraint you chose proves nothing; a constraint imposed on
you proves you can work inside one. This repo already contains a clean example: the `portfolio`
namespace on `k3s-w1` enforces Pod Security Admission `restricted`, so the image must run as
uid 101 on :8080 or it is rejected at admission — not degraded, **rejected** (local artifact:
`CLAUDE.md`, verified in-repo). That is a constraint with teeth that the operator did not get to
negotiate. Every such constraint on the platform is worth naming.

**D2 — A named SLO with its measurement window.** *(Definitive framing from [S17].)* The Google
SRE book defines the instrument: an SLO is "a target value or range of values for a service
level that is measured by an SLI," and notes that "Choosing and publishing SLOs to users sets
expectations about how a service will perform." A published SLO plus a measured attainment
figure replaces the self-grade with an instrument reading. It is also the exact wording
engineeringladders uses to define system ownership at levels 3 and 4 — "is aware of its SLAs",
"defines its SLAs" [S7]. **`MEASURE:` required — see §10.6.**

**D3 — The production-readiness axes as the case study's spine.** *(Definitive as to what the
SRE book lists [S16].)* The book states that "SRE seeks production responsibility for important
services for which it can make concrete contributions to reliability" and enumerates the aspects
collectively called *production*:

> System architecture and interservice dependencies
> Instrumentation, metrics, and monitoring
> Emergency response
> Capacity planning
> Change management
> Performance: availability, latency, and efficiency

**Derived:** those six lines are a ready-made outline for the MDC case study, and they are
Google's list, not the subject's — which is precisely why a reader trusts an artifact organised
against them. A case study that answers all six *is* a production-readiness review, and a
platform that passes one is not a homelab by anybody's definition.

**D4 — Decision records that publish rejected options and negative consequences.**
*(Definitive as to the ADR format [S18].)* Nygard's original definition specifies the format —
Title, Context, Decision, Status, Consequences — and is explicit about the last one:

> Consequences This section describes the resulting context, after applying the decision. All
> consequences should be listed here, not just the "positive" ones. A particular decision may
> have positive, negative, and neutral consequences, but all of them affect the team and project
> in the future.

He also specifies the Context section covers "the forces at play, including technological,
political, social, and project local," in "value-neutral" language. **Derived:** a published ADR
set with genuine negative consequences is among the most expensive-to-fake artifacts available
to a solo engineer, because fabricating a plausible cost you paid requires having paid one. The
subject's platform is described as standards-governed with its own documented architecture
standards — that corpus is already most of the way to this device.

**D5 — One named failure with its cost.** *(Derived from [S18]'s consequences rule and [S10]'s
costly-to-fake criterion.)* An incident, what it broke, how long, what it cost the business, what
changed afterward. This is the single highest-credibility paragraph available and the one most
likely to be omitted. **Nothing about the subject's incident history was supplied; §10.6 leaves
it as a `RECALL:` item.**

**D6 — Scope honestly bounded: the things deliberately not built.** *(Derived from §4.3 and
[S15] guideline 1.)* "No multi-region. No customer-facing SLA. One operator, so the bus factor
is one, and here is what mitigates it." A bounded claim is checkable; an unbounded one is not,
and an unbounded claim that a reader can falsify anywhere damages the rest [S15].

**D7 — Third-party verifiable anchors.** *(Definitive as to the guideline [S15].)* Stanford's
guideline 1 asks you to make accuracy easy to verify, guideline 3 to "Highlight the expertise
in your organization and in the content and services you provide," and guideline 5 to "Make it
easy to contact you." For this page that means: the degree stated correctly and verifiably; a
live URL for anything claimed to be running; a repository link for anything claimed to be built;
a working contact affordance.

**D8 — Continuous, dated history.** *(Definitive as to the study's finding [S10]: a history of
effort over time "would be extremely costly to fake.")* Dated milestones over 2025–26 turn a
snapshot into a trace.

**D9 — Real users with recourse.** *(Derived from [S3]'s "significant consequences of failure"
and §5.1's fit-and-commitment mechanism.)* The strongest available answer to "would he survive
real constraints" is "he already does, and other people's livelihoods depend on it."

---

## 8. The "real businesses on it" asset — how to use it without overclaiming

This is, on this paper's reading, the subject's single strongest differentiator, because it is
the only element that simultaneously supplies the *consequence* dimension that Dropbox IC5 names
[S3] and the *external stakeholder* that solo work otherwise lacks [S6][S8].

### 8.1 What makes a production claim believable — derived from [S10][S15][S17]

A production claim is believed when it is **falsifiable and cheap to check**. Ranked by the
credibility each buys per word:

1. **Naming what the businesses are, by function.** "A property-management business" and "a
   business-ops suite built on ERPNext" are specific, checkable-in-principle, and immediately
   convey that these are operational systems with users, not demos. This costs almost nothing
   in opsec and buys most of the credibility.
2. **Naming what breaks when the platform breaks.** "If Ceph loses quorum, tenants can't submit
   maintenance requests" is a sentence a fabricator would not think to write. It is the
   consequence dimension in one line.
3. **One measured reliability figure with its window and its instrument.** `MEASURE:` — see
   §10.6. Not "highly available." A number, a window, and the thing that measured it [S17].
4. **A dated operating history.** "In production since <date>" [S10, D8].
5. **A third-party attestation**, if one of the businesses has a non-subject stakeholder willing
   to be named [S15, guideline 1].

### 8.2 Where the line is — derived

**Evidence** looks like: *"Two businesses run on it in production — a property-management
business and an ERPNext-based business-ops suite. When the platform is down, they are down."*
Specific, bounded, falsifiable, and it names the consequence rather than asserting a quality.

**Puffery** looks like: *"Enterprise-grade infrastructure powering multiple businesses at scale."*
Every word of that is an adjective with no instrument behind it. "Enterprise-grade" is a claim
about a category, not a property. "At scale" without a number is the tell. **Derived from [S10]:
these are conventional signals — free to type, therefore worth nothing.**

**The failure mode worse than puffery** is a *specific* claim you cannot support — an uptime
percentage with no measurement window, a user count you estimated, a "99.9%" you did not
compute. It converts a credibility asset into a falsifiable liability, and [S15]'s guideline 1
works in reverse: making verification easy is only an asset when verification succeeds.

### 8.3 The opsec boundary — derived

Credibility wants concreteness; operational security wants opacity. The resolution:
**be specific about consequences, vague about topology.**

- **Publish:** what the businesses do; that they are production; what breaks when the platform
  breaks; an SLO and its attainment; the architecture at the level of named components (this is
  already public in `projects.js` and is fine — component names are not attack surface); the
  dated history; the failure story with the *engineering* detail.
- **Do not publish:** customer or tenant names; hostnames, IP ranges, or VLAN IDs; the specific
  authentication and secrets topology; backup windows and retention specifics; node counts and
  capacity headroom (they map to blast radius and to what an attacker can exhaust); anything
  that identifies a physical location.
- **Judgement call, flagged:** a live status page is the highest-credibility artifact in this
  whole paper *and* it is a continuously-published availability oracle for anyone hostile. It is
  a real trade-off, not a free win, and it belongs to the deferred proof-surfaces topic (topics.md
  #6). This paper does not recommend it either way.

### 8.4 The tone boundary — derived from [S13]

Rivera's finding that fit judgements dominate at interview [S13] implies a tone constraint that
has nothing to do with accuracy: **state the businesses once, factually, and move on.** The
difference between "runs two production businesses" as evidence and as boasting is repetition
and adjectives, not content. Said once, in a sentence that also names what breaks, it reads as a
constraint the engineer works under. Said three times with superlatives, it reads as a pitch.

---

## 9. The non-traditional-background question — the honest answer

**The question:** can a system substitute for a résumé of employers?

**The answer the evidence supports: no, not at the screen — and the best available evidence
suggests it may actively hurt there.** [S11]'s 43% callback reduction was measured on 2,400
software engineering positions, and [S12] found the penalty operates through beliefs about fit
and commitment. The subject's situation is not identical to a founder's, and neither study
examined portfolios, so the transfer is *derived* — but it is the closest measured evidence that
exists, and it points one way. Stating this softly would be the dishonest move.

**What the evidence does support:**

- **After a human is reading, self-directed work is read favourably and is hard to fake**
  [S10]. The trace, the history, and the accepted-work signals are exactly the ones employers in
  that study trusted more than a résumé.
- **The penalty is not uniform.** [S11] reports the effect "is driven by older hiring firms."
  **Derived:** employer age/segment is a targeting variable, and smaller or younger organisations
  are the segment where this asset is least discounted.
- **Hiring processes systematically exclude qualified people for structural reasons.** The HBS
  *Hidden Workers: Untapped Talent* project page states that hiring processes "are designed to
  find 'perfect' candidates in an efficient manner, but in doing so systematically exclude
  several categories of qualified workers" [S19]. *(Directional and low-specificity: this is the
  first-party project landing page. **The full report PDF was not retrievable** — the linked path
  returned 404 and the download link is JS-injected; see §13, G5. The categories the report
  enumerates and its methodology are therefore NOT cited here.)*

**Derived synthesis — the strategic consequence, and it is the most important paragraph in §9:**
the portfolio is the wrong instrument for the screen and the right instrument for everything
after it. The channel that skips the screen is **referral**, and the artifact a referrer forwards
is exactly this page. So the site should be built to be *forwardable* — to survive being sent to
a stranger with two sentences of context — rather than to be *found*. That is a different design
target from SEO or keyword coverage, and it favours depth, specificity and a single strong
top-of-page claim.

**What compensates, in descending order of evidenced strength:** the M.S. Computer Science
(third-party verified, costly, and [S10] names education as a reliable signal costly for an
employer to verify); accepted contributions to projects the subject does not own [S10];
third-party attestation from the businesses [S15]; published writing, which is also the only
reachable rung on [S7]'s Influence axis.

---

## 10. The positioning recommendation for this subject

**This entire section is derived.** Each item names the evidence it rests on. None of it is a
finding anyone published; it is this paper's inference, and a human should rule on it.

### 10.1 The thesis statement

> **I design, build, and operate production infrastructure end to end — and two real businesses
> run on the platform I built.**

Rationale per clause:

- **"design, build, and operate"** — the three verbs map onto engineeringladders' System axis
  levels 2, 3 and 4 [S7]. *Operate* is the one that is nearly always missing from self-directed
  work and is the one the axis calls ownership. Dropping it forfeits the strongest available
  claim.
- **"production"** — the word that routes the artifact into the competence rubric rather than
  the leisure rubric [S13, derived].
- **"two real businesses run on it"** — the consequence dimension [S3], the external stakeholder
  [S6][S8], and the answer to "self-graded" all in one clause.
- **What it deliberately does not say:** "staff-level," "principal," "enterprise-grade,"
  "from scratch," "homelab." §4.3, §8.2 and §11.

### 10.2 The hero

Current state (verified in `index.html`): tagline "Software architect · infrastructure engineer ·
biomedical informatics (M.S.)"; intro "I build complete systems end to end — from a self-hosted
private cloud to the businesses that run on top of it."

**Recommended shape** — three lines, in this order:

1. **Name.**
2. **Role line:** `Software architect · infrastructure engineer · M.S. Computer Science` —
   the degree corrected (§10.5), and it earns its place in the hero because it is the one
   third-party-verified credential on the page [S10][S15 guideline 3].
3. **Claim line — the thesis (§10.1), with one concrete anchor:** something in the shape of
   *"I design, build, and operate production infrastructure end to end. Two businesses — a
   property-management company and an ERPNext-based business-ops suite — run on a private cloud
   I built and operate: Proxmox, three K3s clusters, Ceph, a Django/Temporal control plane,
   ArgoCD."*

**Why the businesses go in the hero and the stack goes second in the same sentence.** The
consequence clause is the assessment signal; the stack list is the conventional one [S10].
Leading with the stack invites the hobby reading [S13, derived]; leading with the consequence
and *then* naming components lets the components read as the answer to "how," which is what they
are.

**What must come out of the hero:** the word combination "self-hosted private cloud" as the
first noun phrase a reader meets. See §11's vocabulary table.

### 10.3 The About

The About's job, given §5.1's fit-and-commitment mechanism, is **not** to restate capability. It
is to establish (a) the trajectory that explains a non-standard background, (b) the constraints
the work was done under, and (c) the boundary of the claim.

Four things it should establish, in this order:

1. **The trajectory, briefly and without apology.** B.S. Industrial Engineering → M.S. Computer
   Science (completing 2026) → designing and operating production infrastructure. Industrial
   engineering is a *systems-optimisation* discipline; stated once, it reads as coherent rather
   than as a detour. *(Derived; no source measures how background narratives are evaluated —
   §13, G7.)*
2. **What the platform is and what depends on it** — one paragraph, per §8.1.
3. **How the work is governed** — that the platform has its own documented architecture
   standards, and that changes go through a declarative, reviewed path. This is the single
   cheapest sentence that separates "engineered" from "assembled," and it is checkable if the
   standards are linkable [S15 guideline 1, S18].
4. **The boundary, stated by the subject rather than discovered by the reader** — one sentence
   naming what solo work does not give him. Something in the shape of *"It's one operator, so
   this is not evidence of leading a team — it's evidence of owning a system end to end,
   including the pager."* Per §4.3 and [S8], this converts the weakest point into the most
   credible sentence on the page, because a reader who sees you name your own gap stops hunting
   for it.

### 10.4 What the MDC case study must contain for the claim to land

**Derived from [S16] (the six production aspects), [S18] (the ADR format), [S10] (costly-to-fake),
[S17] (SLO), [S15] (verifiability).** Ordered so a reader who stops early still gets the strongest
material:

1. **The outcome and the consequence, in the first 60 words.** What runs on it; what breaks if it
   breaks.
2. **The constraint set, marked external vs chosen.** Which constraints were imposed (hardware,
   power, a business that could not take downtime, PSA `restricted`) and which were chosen. The
   external ones are the ones that answer the homelab objection [§5.5, derived].
3. **The architecture, walked at decision level, not component level.** Three K3s clusters with
   the *reason* there are three; Ceph decoupled from Proxmox and K3s with the *reason*; Temporal
   for infra and ArgoCD for K8s resources with the *boundary between them*. A component list is a
   conventional signal; a boundary rationale is an assessment signal [S10].
4. **Two to four decision records with rejected alternatives and negative consequences** [S18].
   The 1Password-Connect-evaluated-and-rejected decision is exactly this shape and already exists
   in the workspace's documented reasoning.
5. **The production-readiness section, against [S16]'s six axes verbatim** — system architecture
   and dependencies; instrumentation, metrics and monitoring; emergency response; capacity
   planning; change management; performance. Answering all six is the strongest structural claim
   available, and it is Google's checklist, not the subject's.
6. **One failure, with cost and remediation** [D5].
7. **The bounded scope** — what was deliberately not built, and why [D6].
8. **The verification affordances** — links to the repos, to the standards corpus, to anything
   live [S15].

**What the case study must NOT contain:** a technology tour; superlatives; any number without a
measurement window; the word "enterprise-grade."

### 10.5 Claims that must be evidenced or dropped — the live-site audit

| # | Current claim (verified in `index.html` / `projects.js`) | Ruling | Action |
|---|---|---|---|
| C1 | Hero tagline and About both say **"biomedical informatics (M.S.)"** | **Factually wrong** — the degree is M.S. Computer Science | **Fix first, before any other change.** [S15]'s guideline 1 cuts both ways: an error a reader can catch on the most checkable claim on the page discredits the unverifiable ones. The dispatch notes this is being handled separately; it is recorded here because it is the highest-severity item in the audit |
| C2 | `projects.js`: **"An enterprise-grade private cloud"** | **Drop or evidence** | "Enterprise-grade" is an unfalsifiable category claim [S10, conventional signal]. Replace with two demonstrated properties (e.g. the PSA `restricted` constraint, digest-pinned base images, the SLO) |
| C3 | `projects.js`: **"designed and built from scratch"**, **"foundation-up"** | **Weaken to one instance** | Reads as effort, not judgement. "From scratch" is also the phrase most associated with hobby framing [derived, §5.5]. Keep "designed, built and operate"; drop the rest |
| C4 | Hero: **"self-hosted private cloud"** | **Reframe** | See §11 vocabulary. "Self-hosted" is accurate and slightly hobbyist; "that I operate" carries the ownership claim [S7] without the connotation |
| C5 | Three `Write-up →` links, all `href="#"` | **Blocking** | A promised artifact that does not exist is a verifiability failure [S15 guideline 1] and, worse, it is where an interested reader goes to convert interest into conviction. Either ship one write-up or remove the affordance |
| C6 | Tag arrays (`K3s`, `Temporal`, `Django`, `Ceph`, `ArgoCD`, `Ansible`) | **Keep, demote** | Pure conventional signal [S10]; useful for scanning, worthless as evidence. They must not be the densest information on the card |
| C7 | Footer: **"built & self-hosted on my own cloud"** | **Keep — it is the best line on the current site** | It is a self-demonstrating claim: the page you are reading is the evidence. Cheapest assessment signal on the site [S10] |
| C8 | Placeholder tile **"Add your next project"** | **Remove before any external reader sees it** | It exposes the page as unfinished, which [S15]'s guideline set treats as a credibility hazard |
| C9 | Nothing on the page claims a seniority level | **Correct as-is — do not add one** | §4.3 |
| C10 | No contact affordance beyond GitHub/LinkedIn | **Add** | [S15] guideline 5, verbatim: "Make it easy to contact you." |

### 10.6 The measurement backlog — what must be measured before the strongest claims can be written

**None of these values was supplied and none is asserted anywhere in this paper.**

- `MEASURE:` platform availability over a stated window, with the instrument named (what
  computes it, over what period, for which service) [S17].
- `MEASURE:` the SLO itself — the target, per [S17]'s definition, for at least one user-facing
  service of each business.
- `MEASURE:` continuous production operating date — "in production since <date>" [S10, D8].
- `RECALL:` one real incident — what failed, duration, business consequence, remediation [D5].
- `RECALL:` two to four architecture decisions with the alternatives actually rejected and the
  costs actually paid [S18].
- `DECIDE:` which constraints were externally imposed vs chosen (§10.4 item 2). This is a recall
  exercise, not a measurement, and it is the cheapest high-value item on the list.

**The first build task implied by this paper is measurement and recall, not writing.** The
recommended page cannot be written honestly without the six items above.

---

## 11. Vocabulary — which words earn seniority and which forfeit it

**Derived throughout**, from [S7]'s axis wording, [S13]'s category-sorting finding, [S10]'s
signal classes, and [S16]/[S17]'s definitions of *production*. No source ranks vocabulary; these
are inferences with named inputs, and a human should rule on them.

| Word / phrase | Ruling | Why (input) | Use instead |
|---|---|---|---|
| **"homelab"** | **Never** | Routes the artifact into the leisure category evaluators use for cultural-fit sorting rather than the competence rubric [S13, derived] | "the platform"; "the private cloud I operate" |
| **"private cloud"** | Fine, with a dependant | Accurate; slightly marketing on its own | "a private cloud that runs two businesses" |
| **"platform"** | **Earns** | Matches Dropbox IC5's own noun: "multi-year, multi-team product or **platform** goals" [S3] | — |
| **"production"** | **Earns — if defined** | [S16] gives *production* a six-item operational definition; using the word and then answering the six is the strongest move available | Use it, then evidence it |
| **"enterprise-grade"** | **Forfeits** | Unfalsifiable category claim; free to type; conventional signal [S10] | Name two demonstrated properties |
| **"I built"** | Weak alone | Covers engineeringladders System axis 2 ("Designs") and stops there [S7] | — |
| **"I designed, built, and operate"** | **Earns — the key upgrade** | *Operate* is the verb in System axis 3: "owns the production operation and monitoring of the system" [S7] | — |
| **"from scratch" / "foundation-up"** | Weak; use at most once | Signals effort, not judgement; strongly associated with the hobby reading [derived] | "end to end", or state the scope boundary instead |
| **"self-hosted"** | Neutral-to-hobbyist | Describes where it runs, not who is accountable | "self-operated"; "that I operate" |
| **"architect" (as self-title)** | Acceptable, with an artifact | [S8]: the Architect title "has fallen out of style in many companies, but the Architect role remains alive and well." The title is only as good as the linked decision record | Keep the title; link the ADRs |
| **"scalable" / "highly available" / "bulletproof"** | **Forfeit** | Adjectives with no instrument [S10] | An SLO and a number [S17] |
| **"staff-level" / "principal-level"** (self-applied) | **Never** | Falsifiable in one step against §3's frameworks; §4.3 | Let the evidence imply the level |
| **A bare stack/tag list** | Keep, demote | Conventional signal [S10]; useful for scanning only | Put the boundary rationale next to it |
| **"solo" / "by myself"** | **Once, and only paired with the boundary** | Unpaired it invites the [S5.5] "nobody said no" objection; paired with the boundary sentence (§10.3 item 4) it becomes the credible admission that raises everything else | "one operator — which is why this is evidence of system ownership, not of leading a team" |
| **"real businesses"** | **Earns — the strongest two words available** | Supplies consequence [S3] and external stakeholders [S6][S8] | Name them by function (§8.1) |

**One structural rule that outranks any individual word (derived from [S13] + [S10]):** the
**first noun a reader meets decides the rubric.** If it is a hobby noun, every subsequent
technical detail is scored as enthusiasm. If it is a production noun, the same details are scored
as competence. The hero's first substantive noun phrase is therefore the highest-leverage
sequence of words on the entire site.

---

## 12. Honest boundary analysis — the strongest case against this paper's thesis

A paper with no case against itself is advocacy. Here is the real one.

### 12.1 The evidence points the other way, and it is better evidence than anything supporting the thesis

The two strongest empirical sources in this paper both cut against it. [S11] is a
2,400-application field experiment **in software engineering roles** finding a 43% callback
penalty for founder experience. [S12] is a résumé audit finding founding reduces interview
likelihood for male candidates, via fit and commitment beliefs. Nothing in this paper's support
column is remotely as strong: [S10] is n=13 and thirteen years old, and the framework sources
say what seniority *is*, not how evaluators treat self-built evidence.

**If a reader weights by evidentiary quality rather than by relevance-to-the-hope, the honest
summary is: self-directed work is discounted in software hiring, we have measured it, and the
mechanism is a belief about the person rather than about the work.** No amount of vocabulary
discipline changes a belief about commitment.

### 12.2 The organisational half of seniority is not framing-addressable

[S8] makes "the organization's recognition" part of the definition of a Staff engineer. [S7]'s
Influence axis levels 2–4 are uninstantiable solo. [S3]'s IC5 sentence has "multi-team" in it.
For an evaluator who applies their own ladder rigorously — which is exactly what a promotion
committee or a levelling interview does — **the answer is not "he needs better framing," it is
"there is no evidence at this level and there structurally cannot be."** That is a correct
conclusion, not a misreading, and this paper cannot argue it away.

### 12.3 The artifact may be scored on cultural fit no matter what it is called

[S13] found fit was the most important interview criterion for more than half of evaluators, and
that outside pursuits feed that judgement — including one evaluator who declines candidates with
strong outside passions. For that evaluator, a beautifully framed private-cloud case study is
*worse* than silence, because it makes the outside passion more visible. Vocabulary cannot fix a
rubric that is scoring a different variable.

### 12.4 The instrument is weak even at its best

[S14] revises work-sample validity to ≈ .33. A self-narrated, self-selected artifact is weaker
than an administered work sample. Expecting a portfolio to carry a hiring decision is expecting
more from the instrument class than the instrument class delivers.

### 12.5 What follows if the counter-case is right

**Derived.** If §§12.1–12.4 dominate, then the site's ROI ordering inverts from what the topic
assumed:

- **Highest ROI: the client audience.** For a prospective client, "runs two production
  businesses" is not a proxy for competence — it *is* the product, and the founder-penalty
  literature does not apply because the client is not hiring an employee.
- **Second: referral and peer credibility.** The artifact a referrer forwards; the thing a peer
  reads before an introduction. Both bypass the screen where the penalty lives.
- **Lowest: the corporate hiring screen.** Where the measured evidence says the asset may be a
  liability, and where a conventional résumé plus the M.S. does more work than any page.

That reordering, if correct, changes where effort goes — and it is a live possibility this paper
cannot rule out, because the evidence to rule it out (§15, T1–T3) does not exist yet.

### 12.6 The topic may be moot

Everything above assumes the subject is being evaluated *for employment*. If the intent is
client acquisition, or building a business, or nothing in particular, the founder-penalty
evidence is irrelevant and the whole framing question collapses into a much simpler one: does the
page make a buyer believe the system works? **This dependency was not specified in the dispatch,
and it materially changes the recommendation.** It is Gap G8 and it is the cheapest thing on the
list to resolve — the operator can answer it in one sentence.

---

## 13. Gaps — negative findings, with search method

Each states what was looked for, how, and what was concluded. None is filled with a guess.

- **G1 — The homelab discount is unevidenced.** No peer-reviewed study and no first-party
  employer-documented artifact was found on how evaluators treat homelab or self-built
  infrastructure experience. **Method:** web search on homelab-on-résumé/hiring-manager framings
  (returned only résumé-vendor and IT-staffing content marketing, plus one undated vendor forum
  thread — none citable); web search for peer-reviewed work on side/personal projects in software
  résumé screening (returned no evaluation study); probe of recent arXiv cs.SE hiring literature
  (nearest 2026 item studies candidate *experience*, not evaluator discounting). **The mechanisms
  in §5.5 are therefore derived, not cited, and are labelled as such.**

- **G2 — No study measures portfolio sites in engineering hiring.** [S10] measures GitHub
  profiles, not personal sites. Every claim in this paper about what a *portfolio page* does is
  transfer from adjacent evidence. **Method:** the same searches as G1, plus the sibling paper's
  enumerated negative finding that the Stack Overflow Developer Survey documents contain no
  "portfolio" matches.

- **G3 — The founder→solo-operator transfer is unvalidated.** [S11] and [S12] measure *founder*
  experience on a résumé. The subject is not a founder in the venture-backed sense the studies
  sampled, and the studies did not test a candidate who was simultaneously employed, studying, or
  operating small businesses. The transfer is derived and is this paper's largest single
  inferential leap.

- **G4 — Certifications are unassessed.** No credible evidence was found on the weight of
  infrastructure certifications (CKA/CKAD/RHCE) in senior software-engineering evaluation.
  **Method:** not searched exhaustively — this was out of the dispatch's scope and is recorded so
  a later cycle knows it is open, not settled.

- **G5 — The HBS *Hidden Workers* report itself was not retrieved.** The project landing page was
  fetched and is cited [S19]; the report PDF at the documented path returned 404 and the download
  link on the page is JS-injected. **No figure, category list, or methodology detail from the
  report is cited.** A refresh should retrieve the PDF before relying on it.

- **G6 — Two publisher pages were unreachable.** Direct fetches of the INFORMS DOI pages for
  [S11] and [S12] returned empty bodies (bot mitigation). The abstracts quoted are the publisher's
  text as reproduced by RePEc/IDEAS, and the [S12] accepted manuscript is additionally hosted by
  LBS Research Online. This is a retrieval-host caveat, not a content doubt — but a critic should
  know the primary host was not the one that answered.

- **G7 — Nothing measures how career-trajectory narratives are evaluated.** §10.3's advice on
  framing the B.S. Industrial Engineering → M.S. Computer Science path is derived from general
  credibility principles [S15] and from the fit/commitment mechanism [S12]. No source tested it.

- **G8 — The subject's objective was not specified.** Employment, clients, or neither materially
  changes the recommendation (§12.6). This is an input gap, not a research gap, and the operator
  can close it.

- **G9 — No platform metrics exist in this paper.** Availability, incident history, user counts,
  node counts, and operating start date were not supplied and are not asserted anywhere. §10.6
  lists them as the measurement backlog.

---

## 14. Citations

**Quotation discipline used in this paper.** Every span presented as a quotation was returned as
exact characters by a direct `curl` fetch of the source URL. HTML sources were converted with a
local tag-stripping parser; **runs of whitespace are normalised to a single space and nothing
else is altered** (tag boundaries in the source occasionally produce doubled spaces mid-sentence
— e.g. the SFIA Level 5 *Influence* text — and those are the only characters affected).
Typographic apostrophes are U+2019 in [S8] and [S6] and are reproduced as such; this was
byte-checked. **PDF sources ([S10], [S13], [S14]) have text layers that mangle punctuation,
spacing and typographic quotes**, so the default for them is **paraphrase, explicitly labelled**.
Four spans from PDFs are presented as quotations, and only because each was verified by literal
substring match against the extracted characters and inspected for extraction artifacts before
being quoted: three from [S10] (§1, §5.3 ×2) and two from [S13] (§5.2) — the [S13] spans are from
the abstract and findings text and contain no hyphenation or MacRoman artifacts. **Every
[S14]-derived statement is a paraphrase.** No claim in this paper is sourced to a search-engine
result summary; searches were used only to locate sources, which were then fetched. Where a
publisher page was unreachable, the retrieval host is named in the table (§13, G6).

| # | Source | Type | Used for |
|---|---|---|---|
| S1 | SFIA Foundation. *SFIA 9 — Levels of responsibility*, Level 5 and Level 6. https://sfia-online.org/en/sfia-9/responsibilities/level-5 · https://sfia-online.org/en/sfia-9/responsibilities/level-6 | First-party framework, current published version | Autonomy / Influence / Complexity / Knowledge attributes at L5 and L6; the delegation clause; level names |
| S2 | Dropbox, Inc. *Engineering Career Framework — IC4 Software Engineer.* https://raw.githubusercontent.com/dropbox/dbx-career-framework/main/docs/ic4_software_engineer.html | First-party employer ladder (raw repo HTML, Apache-2.0) | IC4 scope statement; ambiguity clause; mentorship lever |
| S3 | Dropbox, Inc. *Engineering Career Framework — IC5 Staff Software Engineer.* https://raw.githubusercontent.com/dropbox/dbx-career-framework/main/docs/ic5_staff_software_engineer.html | First-party employer ladder (raw repo HTML) | The Staff scope statement; "multi-year, multi-team"; "significant consequences of failure"; "defining both the what and how" |
| S4 | Dropbox, Inc. *dbx-career-framework* repo README + GitHub git-tree API (`.../git/trees/main?recursive=1`). https://github.com/dropbox/dbx-career-framework | First-party repo + authoritative API enumeration | The seven-page SWE track, **enumerated and listed** in §3.2 rather than asserted as a total; default branch `main` |
| S5 | GitLab. *Engineering Career Framework: Senior.* https://handbook.gitlab.com/handbook/engineering/careers/matrix/senior/ | First-party public handbook (last modified 2026-03-12 per the page) | Senior leadership/technical competencies; the "unclear requirements … within the context of their team" clause |
| S6 | GitLab. *Engineering Career Framework: Staff.* https://handbook.gitlab.com/handbook/engineering/careers/matrix/staff/ | First-party public handbook | The team-level-scope sentence; the other-people verbs; the currency caveat (competencies deferred to a linked spreadsheet) |
| S7 | jorgef. *Engineering Ladders* (README.md). https://raw.githubusercontent.com/jorgef/engineeringladders/master/README.md | Community open-source framework (raw markdown; default branch `master`) | The five axes; the System axis levels 1–5; the Influence axis levels 1–5; senior beginning at level 4 |
| S8 | Larson, W. *Staff archetypes.* StaffEng. https://staffeng.com/guides/staff-archetypes/ | First-party author-published (book companion) | The four archetypes; "not just a role … the organization's recognition"; the Architect-title note |
| S9 | Larson, W. *What do Staff engineers actually do?* StaffEng. https://staffeng.com/guides/what-do-staff-engineers-actually-do/ | First-party author-published | The shared foundation across archetypes (technical direction, sponsorship/mentorship, organisational context, exploration, glue) |
| S10 | Marlow, J. & Dabbish, L. (2013). *Activity Traces and Signals in Software Developer Recruitment and Hiring.* CSCW '13. https://www.cs.cmu.edu/~xia/resources/Documents/Marlow-cscw13.pdf | Peer-reviewed qualitative study, n=13 (7 employers, 6 job seekers) | Assessment vs conventional signals; free-time/initiative reading of side projects; costly-to-fake history; employers favouring cues cheap to verify |
| S11 | Botelho, T.L. & Chang, M. (2023). *The Evaluation of Founder Failure and Success by Hiring Firms: A Field Experiment.* *Organization Science* 34(1), 484–508. DOI 10.1287/orsc.2022.1592. Abstract retrieved from RePEc/IDEAS: https://ideas.repec.org/a/inm/ororsc/v34y2023i1p484-508.html | Peer-reviewed field experiment, n=2,400 SWE job postings, US | The 43% callback penalty; the 33% successful-vs-failed differential; older-firm driver |
| S12 | Kacperczyk, O. & Younkin, P. (2022). *A Founding Penalty: Evidence from an Audit Study on Gender, Entrepreneurship, and Future Employment.* *Organization Science* 33(2), 716–745. DOI 10.1287/orsc.2021.1456. Abstract via RePEc/IDEAS: https://ideas.repec.org/a/inm/ororsc/v33y2022i2p716-745.html · accepted manuscript: https://lbsresearch.london.edu/id/eprint/1659/ | Peer-reviewed résumé audit + experimental survey | The interview-likelihood reduction; the fit-and-commitment mechanism; the gender asymmetry |
| S13 | Rivera, L.A. (2012). *Hiring as Cultural Matching: The Case of Elite Professional Service Firms.* *American Sociological Review* 77(6), 999–1022. https://www.asanet.org/wp-content/uploads/savvy/journals/ASR/Dec12ASRFeature.pdf | Peer-reviewed, 120 employer interviews + participant observation. **Scope: elite professional services, NOT software** | Leisure pursuits as a sorting criterion; fit outweighing productivity; fit as most important interview criterion for >half of evaluators |
| S14 | Sackett, P.R., Zhang, C., Berry, C.M. & Lievens, F. (2022). *Revisiting Meta-Analytic Estimates of Validity in Personnel Selection.* *Journal of Applied Psychology.* Retrieved: https://gwern.net/doc/statistics/meta-analysis/2021-sackett.pdf | Peer-reviewed meta-analytic revision — **paraphrased only** | Work-sample operational validity ≈ .33 (Roth et al. 2005, k=54, N=10,469) |
| S15 | Fogg, B.J. *Stanford Guidelines for Web Credibility.* Stanford Persuasive Technology Lab. https://credibility.stanford.edu/guidelines/index.html | First-party research summary (page states: three years of research, 4,500+ people) | Guideline 1 (verifiability); guideline 3 (expertise/credentials); guideline 5 (contactability) |
| S16 | Google. *The Evolving SRE Engagement Model*, in *Site Reliability Engineering*. https://sre.google/sre-book/evolving-sre-engagement-model/ | First-party published book chapter | The definition of *production* as six aspects; the PRR framing |
| S17 | Google. *Service Level Objectives*, in *Site Reliability Engineering*. https://sre.google/sre-book/service-level-objectives/ | First-party published book chapter | SLI/SLO definitions; publishing SLOs sets expectations |
| S18 | Nygard, M. (2011-11-15). *Documenting Architecture Decisions.* Cognitect blog. https://www.cognitect.com/blog/2011/11/15/documenting-architecture-decisions | First-party, the originating definition of the ADR format | The Context/Decision/Status/Consequences format; "All consequences … not just the 'positive' ones"; political and social forces |
| S19 | Fuller, J.B., Raman, M., Sage-Gavin, E. & Hines, K. *Hidden Workers: Untapped Talent.* Harvard Business School, Managing the Future of Work. https://www.hbs.edu/managing-the-future-of-work/research/Pages/hidden-workers-untapped-talent.aspx | First-party project page — **landing page only; the report PDF was not retrieved (G5)** | The structural-exclusion framing, at low specificity. No figure or category from the report is cited |

**Local artifacts** (not counted as sources; verified with `cat`/`wc` in the repo at
`/opt/skyy-net/portfolio`): `index.html` (53 lines), `style.css` (97), `projects.js` (65),
`CLAUDE.md`, `docs/standards/architecture/research/topics.md`.

**Sibling papers in this pool that this one deliberately does not duplicate:**
`raw/portfolio-structure-and-content.md` (information architecture),
`raw/case-study-craft-for-systems-work.md` (the case-study template — §10.4 here supplies only
the *positioning-specific* contents, not the narrative craft),
`raw/audience-calibration-and-anti-patterns.md` (three-audience calibration). Where this paper
and a sibling cite the same source ([S10], [S13]-adjacent material, [S15]), the fetch and the
verbatim check were repeated independently here.

---

## 15. Test plan — what research cannot settle

Each item is a question the evidence could not answer, framed as something the buildout or the
operator can actually run.

1. **T1 — Does the founder penalty transfer to this profile?** The cleanest available test is
   also the cheapest: send the same résumé with and without the platform/businesses framing to
   comparable postings and compare callbacks. This is a real A/B the subject can run at
   near-zero marginal cost during an actual search. It directly tests §12.1, the paper's own
   strongest counter-argument, and G3.
2. **T2 — Which reading does a cold senior peer produce?** Give three senior engineers the case
   study cold and ask them for (a) the level they'd guess, and (b) their single biggest
   reservation. §4.3's claim ceiling and §11's vocabulary rulings are both hypotheses until this
   is run. If the reservation is *not* "solo, so no organisational evidence," the model in §4 is
   wrong.
3. **T3 — Does the boundary sentence help or hurt?** §10.3 item 4 recommends naming the gap
   explicitly, on derived reasoning. Two versions, same readers, ask which they trust more.
   This is the single most falsifiable recommendation in the paper.
4. **T4 — Does the businesses sentence change behaviour?** Before/after on the hero, measuring
   inbound contact. §8 claims it is the strongest available differentiator; that is testable.
5. **T5 — Which noun triggers which rubric?** §11's structural rule ("the first noun decides the
   rubric") is derived from [S13] and untested. Show two hero variants — one leading with
   "private cloud," one leading with "two businesses run on infrastructure I operate" — and ask
   readers to categorise the work.
6. **T6 — What does the employer-age variable do in practice?** [S11] reports the penalty is
   driven by older hiring firms. Segment applications by employer age/size and compare. If the
   effect holds, targeting is a bigger lever than framing.
7. **T7 — Is the operational evidence obtainable at all?** §10.6 assumes the SLO, the incident
   record and the operating history can be produced. If instrumentation does not exist, the
   recommended page cannot be written and the first task is instrumentation, not copywriting.
   Answerable in an afternoon by the operator.
8. **T8 — Does a status page cost more than it buys?** §8.3 flags the credibility/opsec tension
   and declines to rule. Belongs to topic #6 (proof surfaces); until then it is an open decision,
   not a deferral.
9. **T9 — What is the objective?** G8. Not a research question — an operator answer that
   re-weights everything in §10 and §12.5.
