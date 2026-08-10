# Structure & content of respected engineering portfolios

```
Topic:          Which sections do respected engineering/infrastructure portfolios actually
                carry, in what order, at what depth? What goes above the fold, what lives
                inline vs. behind a link, and what is the concrete ordered section list for
                a software-architect / infrastructure-engineer portfolio serving senior
                peers, hiring managers, and prospective clients in balance?
Feeds:          The site's information architecture — the concrete section list the
                buildout works from, replacing today's hero → one-paragraph About →
                3 project tiles → footer (index.html, 4 sections).
Last validated: 2026-08-10
Revalidate:     medium — 3 months
Confidence:     DEFINITIVE — the attention/reading/homepage findings quoted from NN/g's own
                published research articles (raw HTML fetched and de-tagged locally, so
                quoted spans are character-exact), and the bibliographic facts of the
                peer-reviewed papers cited (Crossref API). DEFINITIVE for the observed
                structure of the 21 enumerated first-party engineer sites — each was
                fetched and its markup enumerated by this analyst; every count in §2 was
                produced by listing the population and counting the list.
                DERIVED — every "therefore the portfolio should…" recommendation, including
                the entire §4.6 section list. NN/g studied corporate/e-commerce/B2B sites,
                not personal engineering portfolios; the transfer is this paper's inference
                and is labelled as such at each point.
                UNVERIFIED / EXCLUDED — the "recruiters scan for N seconds" family of
                claims. The primary artifact was unreachable by two independent retrieval
                paths (§5.4); this paper asserts no seconds figure and recommends
                downstream consumers assert none either.
                GAPS — no controlled study of *personal engineering portfolios* was found
                (§5.1); two exemplar sites were unfetchable (§2.1); the Lindgaard 50 ms
                abstract could not be retrieved (§5.4).
Critic:         not-yet-verified — 2026-08-10
```

> **Method note for the verifying pass.** Every quoted span in this paper was obtained by
> `curl` of the source URL followed by local tag-stripping, so the exact character sequence
> was returned to this analyst rather than summarized by a retrieval layer. Quoted spans are
> reproducible with: `curl -sS -L <url> | python3 -c "<strip tags>"`. The one exception is
> the Fogg 2003 PDF, whose content stream is per-glyph kerned — its finding is therefore
> **paraphrased, never quoted** (§5.4). No claim in this paper rests on a search-engine
> result summary.
>
> **One normalization applies to every quote in this paper:** sources that use typographic
> apostrophes and quotation marks are reproduced here with their ASCII equivalents. Nothing
> else differs from the fetched text — no word, number, or other punctuation mark — and a
> verifier diffing a quote should apply the same folding before calling a mismatch.

---

## 0. Bottom line, stated up front

Three findings do most of the work, and the first one contradicts the site's current shape.

1. **Zero of the 21 enumerated engineer sites lead with project tiles.** 15 lead with a
   reverse-chronological list of *writing*; 6 lead with a short identity paragraph and then
   go to writing. The project-card grid — the current site's central move — is not the
   pattern this population uses (§2.2). [definitive as an observation of the enumerated
   population; the inference that this generalizes is derived]
2. **The evidence favours short-above / deep-behind.** NN/g's own recommendation is to
   "Start with overviews and short, simplified pages. Then link to long, in-depth coverage
   on other pages" ([NN/g long-vs-short](https://www.nngroup.com/articles/content-strategy-long-vs-short/)),
   and its 2018 eyetracking data puts ~57% of viewing time above the fold and 74% in the
   first two screenfuls ([NN/g scrolling](https://www.nngroup.com/articles/scrolling-and-attention/)).
   A single deep page is the wrong shape; a shallow page with dead links (today's state) is
   also the wrong shape. [definitive as NN/g findings; the application is derived]
3. **The three audiences diverge on exactly one structural decision: the contact surface.**
   Only 4 of 21 peer-respected engineer sites carry an explicit contact/availability link on
   the landing page (§2.3) — but the client audience is the one that *converts* there, and
   NN/g's B2B research measures prospect-facing sites failing precisely at "answer my
   questions and let me act." This is the paper's central tension and §5.2 argues both sides.

**Out-of-scope observation, surfaced not researched:** `index.html` line 17 states
`biomedical informatics (M.S.)`; the dispatch brief states **M.S. Computer Science**. One of
the two is wrong. This is a factual-accuracy issue for the operator, not a finding of this
paper — but a portfolio whose hero mis-states a degree fails the credibility bar that §1.2's
sources measure, so it belongs in front of the IA work rather than behind it.

---

## 1. Primer — what is actually being decided

### 1.1 A "portfolio" here is not a designer's portfolio

The design-portfolio literature (case-study-per-project, process-heavy, image-led) is a poor
transfer target for infrastructure work: there is nothing to screenshot, the artifact is a
running system, and the audience judges reasoning rather than visual output. The population
this paper enumerates instead is **personal sites of engineers whose reputation rests on
systems/infrastructure/backend work** — the closest available analogue to the subject.

That choice is itself a finding with a cost, stated plainly: this population is
*self-selected for people who write*. §5.3 argues the case against generalizing from it.

### 1.2 What research does establish about first screens, generally

These are established, slow-moving human-factors findings. They are about web pages in
general, **not** about portfolios; the application to a portfolio is this paper's inference.

- **Attention concentrates at the top, and did not stop doing so when pages got long.**
  NN/g's 2018 eyetracking analysis of "over 130,000 eye fixations on a 1920×1080 screen" from
  "120 participants" reports: *"In our most recent study, users spent about 57% of their
  page-viewing time above the fold. 74% of the viewing time was spent in the first two
  screenfuls, up to 2160px."* and *"More than 65% of the viewing time above the fold was
  concentrated in the top half of the viewport."*
  ([NN/g, Scrolling and Attention](https://www.nngroup.com/articles/scrolling-and-attention/))
  [definitive — NN/g's published first-party research]
- **The fold is a decision point, not a wall.** *"Users do scroll, but only if what's above
  the fold is promising enough."* and the warning about *"false floors"* that *"make users
  think they've seen the full page of content."*
  ([NN/g, The Fold Manifesto](https://www.nngroup.com/articles/page-fold-manifesto/))
  [definitive]
- **People read a fraction of what is written.** *"On the average Web page, users have time
  to read at most 28% of the words during an average visit; 20% is more likely."*, derived by
  Nielsen from a 45,237-page-view dataset (after cleaning from 59,573) instrumented by
  Weinreich et al. Adding words is cheap for you and expensive for them: *"they spend only
  4.4 seconds more for each additional 100 words."*
  ([NN/g, How Little Do Users Read?](https://www.nngroup.com/articles/how-little-do-users-read/);
  underlying study: [Weinreich et al., ACM TWEB 2(1), 2008](https://doi.org/10.1145/1326561.1326566))
  [definitive for the NN/g and TWEB findings]
- **Scanning is front-loaded within the text too.** The F-pattern article is explicit that it
  is *"Misunderstood, But Still Relevant"* and that *"Scanning on the web does not always take
  the shape of an F. There are other common scanning patterns too."* The durable part is:
  *"First lines of text on a page receive more gazes than subsequent lines of text on the same
  page."* and *"First few words on the left of each line of text receive more fixations than
  subsequent words on the same line."*
  ([NN/g, F-Shaped Pattern](https://www.nngroup.com/articles/f-shaped-pattern-reading-web-content/))
  [definitive]
- **Visual design is the single most-mentioned credibility cue.** In the Stanford Web
  Credibility study, 2,684 participants evaluated live sites and wrote comments; the paper
  reports the "design look" of the site as the most frequently mentioned area, present in
  **46.1%** of comments, ahead of information structure and information focus.
  ([Fogg et al., DUX '03](https://doi.org/10.1145/997078.997097) — read as a third-party
  mirror PDF, see §5.4) [definitive for the paper's own reported figure; paraphrased, not
  quoted, because the PDF's character stream is kerned]
- **A first impression forms faster than deliberate evaluation.** Lindgaard et al., *Attention
  web designers: You have 50 milliseconds to make a good first impression!*, *Behaviour &
  Information Technology* 25(2):115–126, March 2006 — bibliographic facts confirmed via the
  [Crossref API](https://api.crossref.org/works/10.1080/01449290500330448); 1,076 citations
  per the [Semantic Scholar API](https://api.semanticscholar.org/graph/v1/paper/DOI:10.1080/01449290500330448).
  **The abstract itself was not retrievable** (§5.4), so this paper cites the work's existence
  and title only and rests no claim on its numbers. [gap, stated as a result]

**These are volatility-LOW sections.** §1.2 and the peer-reviewed citations do not need
re-verification on a 3-month refresh; §2 does.

---

## 2. The observed model — what these sites actually do

### 2.1 The population, enumerated

23 URLs were attempted; **21 returned content and 2 did not**. Selection criteria, stated so
the bias is visible: personal sites of engineers widely cited for systems, infrastructure,
performance, distributed-systems, or backend work, chosen by this analyst from working
knowledge. This is a **convenience sample, not a random one** (§5.3).

Fetched (21): `danluu.com` · `brendangregg.com` · `jvns.ca` · `brooker.co.za/blog` ·
`simonwillison.net` · `jeffgeerling.com` · `taniarascia.com` · `xeiaso.net` ·
`vickiboykis.com` · `hillelwayne.com` · `jacobian.org` · `mtlynch.io` · `noidea.dog` ·
`fasterthanli.me` · `ciechanow.ski` · `lethain.com` · `gwern.net` · `blog.nelhage.com` ·
`tbray.org/ongoing` · `brandur.org` · `apenwarr.ca`

Not fetched (2): `rachelbythebay.com` — connection timed out at 35 s on two attempts;
`kelseyhightower.com` — DNS did not resolve from this environment. **Neither is evidence the
sites are dead**; both are recorded as retrieval failures from one host on 2026-08-10, and any
downstream claim about them would be unfounded. [gap]

### 2.2 What the landing page leads with

Counted by reading each landing page's first content block after the site title.

| Lead pattern | n | Sites |
|---|---|---|
| **Writing list first** (straight into reverse-chron posts/essays) | **15** | danluu, brendangregg, simonwillison, jeffgeerling, xeiaso, vickiboykis, hillelwayne, mtlynch, noidea.dog, ciechanow.ski, lethain, gwern, nelhage, tbray, apenwarr |
| **Short identity block, then writing** | **6** | brooker, taniarascia, jacobian, fasterthanli, brandur, jvns (one line) |
| **Project tiles / card grid first** | **0** | — |
| | **21** | |

[definitive as an observation of this enumerated population — each site was fetched and its
lead block read; the generalization beyond the population is derived]

The identity blocks are **short and concrete**, not mission statements. Character-exact
examples:

- Marc Brooker (AWS): *"My name is Marc Brooker. I like to build things that work, and do
  cool stuff. I like building big things. I also dabble in machining, welding, cooking, and
  skiing."* — followed by a second paragraph naming employer and systems worked on.
  ([brooker.co.za/blog](https://brooker.co.za/blog/))
- Amos Wenger: *"French/Swiss enby making videos about Rust, how computers work, and whatever
  strikes my fancy."* ([fasterthanli.me](https://fasterthanli.me/))
- Jacob Kaplan-Moss's landing bio is three sentences that do identity, credential, current
  role, employment history, and **two calls to action** — the anchors are literally
  `<a href=/contact/>how to get in touch</a>` and `<a href=/help/>the ways I&rsquo;m
  available to help</a>`. ([jacobian.org](https://jacobian.org/))

### 2.3 Which sections exist, counted

**About / bio reachable in one step from the landing page: 15 of 21.** 13 via an explicit
About-type link (`brendangregg` → `/blog/about.html`, `jvns` → `/about`, `simonwillison` →
`/about/`, `jeffgeerling` → `/about/`, `hillelwayne` → `/about/`, `mtlynch` → `/about/`,
`noidea.dog` → `/about`, `fasterthanli` → `/about`, `lethain` → `/about`, `gwern` → `/about`,
`brandur` → `/about`, `vickiboykis` → `/about`, `taniarascia` → `/me/` labelled "About Me"),
plus 2 that put the bio **inline on the landing page instead of behind a link** (`brooker`,
`jacobian`). The remaining 6 expose no bio in one step (`danluu`, `xeiaso`, `ciechanow.ski`,
`nelhage`, `tbray`, `apenwarr`). [definitive as an enumeration; anchor extraction was re-run
after an initial regex under-counted unquoted `href=` attributes — the corrected pass is what
these numbers come from]

**Explicit contact / availability link on the landing page: 4 of 21.** `xeiaso` ("Contact" →
`/contact/`), `hillelwayne` ("Contact via Email" → `mailto:`), `noidea.dog` ("Contact" →
`/contact`), `jacobian` (`/contact/` **and** `/help/`). `gwern.net` exposes a `/help` link
that was **not verified** to be a personal-availability page and is excluded from the count
rather than guessed at. `lethain.com` surfaces "Ways I'm available to help." only as a dated
2020 entry inside its post archive — **not** a navigation item; an earlier pass of this
analysis mis-read it as one, and the corrected reading is what is reported. [definitive as an
enumeration]

**About-page length.** Word counts of the 12 About pages that fetched, measured as whole-page
text including site chrome (so each is an **upper bound** on the prose):

| Site | words | Site | words |
|---|---|---|---|
| mtlynch | 83 | lethain | 345 |
| noidea.dog | 103 | brandur | 491 |
| vickiboykis | 194 | fasterthanli | 511 |
| jvns | 206 | taniarascia | 586 |
| jeffgeerling | 270 | brendangregg | 588 |
| hillelwayne | 339 | simonwillison | 805 |

n = 12; **median 342 words**; range 83–805; **8 of 12 at or under 500**. [definitive as an
enumeration of these 12 pages]

**Project sections, where they exist, are curated and small.**
- Xe Iaso's landing page carries a section headed "Highlighted Projects" with **6** list
  items, each a name plus one line that says what it is and who uses it — e.g. *"Anubis - A
  anti-scraper bot filter that protects git servers for GNOME, UNESCO, and many other small
  communities"*. ([xeiaso.net](https://xeiaso.net/))
- Julia Evans's `/projects/` page: **8** headed entries.
- Michael Lynch's `/projects/` page: **17** entries, grouped under **3** category headings
  ("Businesses", "Educational", "Open-Source Projects"), each entry carrying an explicit **date
  range** including end dates for retired work. ([mtlynch.io/projects](https://mtlynch.io/projects/))
- Amos Wenger's landing page leads its content with "what i'm working on" — **4** current
  items — rather than with a complete list. ([fasterthanli.me](https://fasterthanli.me/))
- `taniarascia.com/projects/` and `noidea.dog/projects` used markup my heading extractor did
  not resolve; their item counts are **not measured** rather than reported as zero. [gap]

### 2.4 The availability page as its own artifact

Two senior engineering leaders in the population converged on the same unusual artifact: a
dedicated page enumerating *what you can ask me for*. Jacob Kaplan-Moss's `/help/` (1,258
words including chrome) is structured as three headings — "Ways I'm available to help", "…
help anyone", "… help underrepresented people in tech" — and opens *"Summary: want help?
Email me: jacob@<this domain>."* Will Larson published the same genre at
`lethain.com/ways-i-help/`. [definitive that both artifacts exist and are so structured;
"converged" is derived from two instances and is **weak evidence of a pattern** — two is not a
trend, and this paper does not claim it is one]

---

## 3. Comparative landscape — four archetypes, fairly stated

| Archetype | Shape | Serves | Costs |
|---|---|---|---|
| **A. Writing-first index** (15 of 21) | Name → reverse-chron posts. Bio behind a link or absent. `danluu`, `nelhage`, `apenwarr` | **Peers**, maximally. Depth is self-evident; nothing to discount as marketing | **Recruiters** get no summary and must infer seniority from post titles. **Clients** get no offer and no path to act. Requires a real, sustained writing corpus — with 3 posts it reads as abandoned |
| **B. Identity block → writing** (6 of 21) | 1–3 sentence bio + links, then content. `brooker`, `jacobian`, `fasterthanli`, `brandur` | All three, cheaply. The bio answers "who is this" in one screenful; the content answers "are they any good" | Nothing structural. The bio must be concrete — NN/g's homepage guidance warns that generic welcomes push the actual brief below the fold |
| **C. Curated project surface** (`xeiaso`, `mtlynch`, `jvns`) | Small named set, one line each, own page for the long list | **Recruiters and clients** — scannable proof of shipped things. Peers respect it *when entries carry outcomes and users*, as Xe Iaso's do | Degenerates into a résumé restatement if entries are stack lists. A tile with a dead "Write-up →" is worse than no tile: it advertises depth and then fails to produce it — the current site's exact failure |
| **D. Explicit availability surface** (`jacobian`, `lethain`; contact links on 4 of 21) | "Ways I'm available to help" / "Contact" | **Clients**, decisively. NN/g's B2B research is a direct indictment of sites that make prospects work to act | Rare in this population. §5.2 argues whether that rarity is a warning or an artifact of who the population is |

**The archetypes compose.** `xeiaso.net` runs B+C in one page (name → Recent Articles →
Notable Publications → Highlighted Projects → Quick Links); `jacobian.org` runs B+D
(bio-with-CTAs → Writing); `taniarascia.com` runs B+C with a sectioned landing page (Hey I'm
Tania → Blog → Notes → Deep Dives → Projects). **B + C + D is an observed-compatible
combination, not an invention of this paper** — though no single site in the population runs
all three, which is stated honestly in §5.2. [derived from the enumerated structures]

---

## 4. What this provides — enumerated, citable properties

### 4.1 What to lead with

**P1. Lead with identity + thesis, not with navigation and not with project tiles.**
NN/g's homepage principles put "Communicate Who You Are and What You Do" as Principle 2 of 5,
with guideline **2.2** *"Include a tagline that explicitly conveys what your site or company
does."* and **2.3** *"Emphasize the unique value your site brings to your users, as well as
how it differentiates from competitors."*; the article warns that *"cheerful 'welcomes' on
homepages aren't helpful as they do not provide any information about your company"* and
criticises a homepage that *"showcased a generic welcome message in the hero space of its
homepage, consequently pushing the company brief below the fold."*
([NN/g, Homepage Design Principles](https://www.nngroup.com/articles/homepage-design-principles/))
[definitive as NN/g guidance for homepages; the transfer to a personal site is derived, and is
corroborated by the 6 identity-led sites in §2.2]

**P2. The first screen must carry proof, not only claim.** NN/g Principle 3 is "Reveal Content
Through Examples". Combined with the 57%/74% attention distribution (§1.2), the derived rule
is: the first screenful should contain the identity line **and at least one concrete,
verifiable artifact** — a named system with a number, or the most substantial write-up —
because a screen containing only a claim spends the highest-attention region on the least
evidential content. [derived from NN/g Principle 3 + NN/g scrolling data]

**P3. Do not build a full-viewport hero.** *"Beware of false floors, which are increasingly
common with modern minimalist designs. The illusion of completeness can interfere with
scrolling."* ([NN/g, Scrolling and Attention](https://www.nngroup.com/articles/scrolling-and-attention/)).
The derived rule: the fold should cut *through* the first real content section, so the page
visibly continues. [definitive for the NN/g warning; the "cut through content" tactic is derived]

**P4. Navigation is not a lead.** 15 of 21 sites put content, not a nav bar, in the first
content position; those with nav keep it to a single thin row (`simonwillison`: About |
Subscribe | TILs | Tools). [definitive as an observation of the population]

### 4.2 Depth, and inline vs. link-out

**P5. Overview inline, depth behind a link — this is the documented recommendation, not a
compromise.** *"On the Web, you can offer both short and long treatments within a single
hyperspace. Start with overviews and short, simplified pages. Then link to long, in-depth
coverage on other pages."* and *"the very best content strategy is one that mirrors the users'
mixed diet."* ([NN/g, Long vs. Short Articles](https://www.nngroup.com/articles/content-strategy-long-vs-short/))
[definitive as NN/g's recommendation]

**P6. The landing page is a router; the write-up is the destination.** Derived from P5 plus
the reading data: at ~20–28% of words read and 4.4 s per additional 100 words
([NN/g](https://www.nngroup.com/articles/how-little-do-users-read/)), landing-page prose past
roughly a screenful per section is being written for nobody. The depth belongs one click away,
where the reader who clicked has self-selected into wanting it. [derived]

**P7. Multi-page beats single-page here, and the population is unanimous on the mechanism.**
Every one of the 21 sites hands off to per-item pages rather than inlining everything. Note
the boundary: this is a claim about *where depth lives*, not about page count — a
single-page landing that links out to write-ups satisfies it. [definitive as an observation;
"beats" is derived]

**P8. A dead depth-link is a credibility defect, not an incomplete feature.** Derived from
Fogg et al.'s finding that design/structure signals dominate credibility judgements (§1.2) plus
NN/g's false-floor mechanism: a "Write-up →" that goes to `href="#"` (current `projects.js`)
promises the exact thing the peer audience came for and fails to deliver it, in the highest-
attention region of the page. **Ship a section with no link before shipping a link with no
page.** [derived from Fogg 46.1% + NN/g fold manifesto]

### 4.3 How many projects, and selection over enumeration

**P9. Curate to a small named set on the landing page; put the complete list elsewhere or
nowhere.** Observed: 6 highlighted (xeiaso, on the landing page), 4 current (fasterthanli, on
the landing page), 8 (jvns, on a dedicated page), 17 grouped into 3 categories (mtlynch, on a
dedicated page). No site in the population puts a long enumeration on its landing page.
[definitive as an enumeration of those four sites; the "curate" rule is derived]

**P10. Three is defensible; the failure mode is not the count but the depth behind each.**
The current site already shows 3 tiles. Nothing in the evidence says 3 is wrong — xeiaso ships
6, fasterthanli 4. What the evidence does say is that each entry needs a one-line
what-it-is-and-who-uses-it (xeiaso's pattern) and a real destination (P8). [derived]

**P11. Date and status each entry.** mtlynch's `/projects/` carries explicit ranges including
end dates for retired work. Derived value: for the subject specifically, "running in
production since <date>, N businesses on it" converts a hobby-lab reading into an
operational-track-record reading — the single highest-leverage sentence available.
[definitive that mtlynch does this; the value claim is derived]

### 4.4 The About question

**P12. Short. Median 342 words, 8 of 12 at or under 500, including page chrome (§2.3).** An
About page over ~600 words is at the top of the observed range. [definitive as an enumeration]

**P13. First person.** All 12 About pages read and all 6 landing-page identity blocks quoted in
§2.2 are first-person. Third-person appears once, in mtlynch's 83-word About ("Michael Lynch is
a developer and blogger"), which is the shortest in the set. [definitive as an observation of
this population]

**P14. About is a *second-step* page; the landing page carries a bio *line*.** 13 of 21 put
About behind a link while 6 put a short bio inline; the two that put a full bio inline
(brooker, jacobian) keep it to 1–3 sentences. The derived structure: one identity line above
the fold, the fuller story one click away. [definitive as an enumeration; the structure is derived]

**P15. What the About must contain, for three audiences at once.** NN/g's About-Us research
observed *"over 70 users"* across three rounds and finds the same page serving job seekers,
prospective business partners, journalists, and investors — explicitly listing *"Professionals
who want to interact with business partners and investigate potential vendors"* and *"Job
seekers who were attracted by one of your opportunities and want to learn about the
organization before applying"*. It reports that users *"compare corporate content with
third-party reviews to form a holistic opinion"*.
([NN/g, About Us Information on Websites](https://www.nngroup.com/articles/about-us-information-on-websites/))
[definitive as NN/g's finding] Derived for this subject: the About should carry (a) what he
builds, (b) the scale and operational reality of the system, (c) credentials **stated once,
accurately**, and (d) outbound links to third-party-verifiable surfaces (GitHub, LinkedIn) —
because the research says the visitor will go looking for corroboration whether or not you
provide the path. [derived from the NN/g finding]

### 4.5 Contact and call-to-action

**P16. Put a contact affordance above the fold, and a real one at the end.** NN/g Principle 4
is "Prompt Actions and Navigations", and the scrolling article's guidance is explicit: *"Reserve
the top of the page for high-priority content: key business and user goals. The lower parts of
the page can accommodate secondary or related information. Keep major CTAs above the fold."*
([NN/g](https://www.nngroup.com/articles/scrolling-and-attention/)) [definitive as NN/g
guidance; the application to a personal site is derived and is in tension with §2.3's 4-of-21
observation — see §5.2]

**P17. For the client audience, "contact" is weaker than "what you can ask me for."** NN/g's
B2B research reports that in their testing *"B2B sites earned a mere 58% success rate (measured
as the percentage of time users accomplished their tasks on a site)"* against *"66%"* for
mainstream sites, and that most B2B sites *"fail to answer customers' main questions or
concerns, and block prospects' paths as they search for companies to place on their
shortlists."* Method, stated: 12 focus groups plus 55 business users in one-on-one testing,
mostly US with some UK sessions. ([NN/g, B2B Usability](https://www.nngroup.com/articles/b2b-usability/))
[definitive as NN/g's finding] The `/help/`-style page (§2.4) is the observed answer to this in
the engineer population — but on two instances only, so it is a **candidate**, not a
demonstrated pattern. [derived, weak]

**P18. An email address beats a form for this audience.** Observed: of the 4 contact
affordances in §2.3, hillelwayne is a bare `mailto:`, and jacobian's `/help/` opens by giving
the address in its first line. No contact **form** was observed in the population. [definitive
as an observation; note the population is small and forms may exist behind the `/contact/`
pages I did not fetch — recorded as a limit, not asserted as absence]

### 4.6 The recommended section list for this subject

Ordered. Each item names the property it rests on. **This entire section is DERIVED** — it is
this analyst's inference from the cited evidence, not a documented finding, and it should be
read as a proposal to be tested (§7), not as a result.

| # | Section | Contents | Rests on | Audience served / cost |
|---|---|---|---|---|
| 1 | **Hero — identity + thesis, ~2 lines** | Name; one line of what he builds; one line of thesis ("I design and run the infrastructure businesses depend on — including my own"). Degrees **not** in the hero. Links: GitHub, LinkedIn, email | P1 (NN/g 2.2/2.3), §2.2's 6 identity-led sites | All three. Costs nothing; the current hero already does 80% of this and needs the degree line fixed or moved |
| 2 | **Proof strip — inside the first screenful** | 3–5 concrete facts with numbers: clusters, nodes, storage, businesses running on it, years in production. Not a stack list | P2, P3 (avoid a claim-only first screen; cut the fold through content) | **Peers** get the scale immediately; **recruiters** get the summary they otherwise have to infer. Cost: risks reading as boastful if the numbers are inflated — they must be checkable |
| 3 | **The flagship system — one expanded entry, not a tile** | The private cloud, given real estate: what it is, why it was built, the two or three hardest decisions, one diagram or one honest constraint. Ends in "Read the full write-up →" that **resolves** | P5/P6 (overview inline, depth linked), P8 (no dead links), P2 | **Peers** — this is the section they read. Costs a **write-up that must exist before this ships** |
| 4 | **Selected work — 2–4 curated entries** | Property management platform; ERPNext business-ops suite; one or two others. Each: name, one line of what-it-is-and-who-uses-it, date range and status | P9, P10, P11 (xeiaso's descriptor pattern, mtlynch's dating) | **Recruiters and clients** scan this. **Peers** discount it if entries are stack lists. Cost: the biggest single risk of regressing into today's tile grid |
| 5 | **Writing / notes** | Even 2–3 real pieces. If it will not be sustained, title it "Write-ups" and let it be the case-study index rather than pretending to be a blog | §2.2 (15 of 21 lead with writing; it is the population's dominant credibility surface), P5 | **Peers**, decisively. Cost: an abandoned blog with a 2026 last-post date is worse than no blog — this is the section most likely to rot |
| 6 | **About — first person, ≤ ~400 words** | Trajectory (IE → CS, systems thinking), what he builds and why, the operator-of-real-businesses fact, credentials stated once and accurately | P12, P13, P14, P15 | All three; the **recruiter's** primary landing target after the hero. Cost: none structural |
| 7 | **Working together / contact** | Email in plain text. If client work is wanted: a short "what I can help with" list in the `/help/` genre — 3–5 bullets naming concrete engagements | P16, P17, P18 | **Clients** convert here. **Peer cost is real and argued in §5.2** |
| 8 | **Footer** | Copyright, self-hosted note, repeat of the links | §2 (universal) | — |

**Sections deliberately NOT recommended, with reasons:** a skills/technology grid (no site in
the population carries one; it is résumé furniture that P9's curation argument works against);
testimonials (none observed in the population; would import a marketing register that §5.2
argues costs peer standing); a services/pricing page (topic 9 in this pool covers it, and
§5.2's tension is unresolved without that evidence); a downloadable résumé PDF (not measured
in this population — **stated as a gap, not as a recommendation against**).

---

## 5. Honest boundary analysis — where this paper is wrong or weak

### 5.1 There is no controlled study of engineering portfolios, and this paper is not one

**Searched and not found:** no peer-reviewed or first-party study measuring how any audience
evaluates a *personal engineering portfolio* was located via (a) targeted web search for
academic PDFs on portfolio evaluation, (b) URL probing of NN/g's article namespace for
`ux-portfolios`, `portfolio-review-ux` (both HTTP 404 on 2026-08-10), (c) Crossref and Semantic
Scholar lookups on the adjacent first-impression literature. **Every NN/g finding in this paper
was collected on corporate, e-commerce, B2B, news, or encyclopedic sites** — NN/g's scrolling
study says so directly: *"including news, ecommerce, blogs, FAQs, and encyclopedic pages."*
The transfer to a one-person portfolio is this paper's inference and could be wrong in the
usual direction: a visitor to a named individual's site arrives with more intent and more
patience than a visitor to a vendor's homepage, which would *weaken* the above-the-fold
argument and *strengthen* the case for depth on the page. [gap, with method stated]

### 5.2 The central tension: the contact surface

**The case for the §4.6 item 7:** the client audience is in scope by dispatch, NN/g's B2B
research shows prospect-facing sites failing exactly at the act-now step, and NN/g's homepage
guidance says keep major CTAs above the fold.

**The case against — and it is not weak:** only **4 of 21** sites in the peer-respected
population carry a landing-page contact affordance (§2.3), and **none of the 21 runs
archetypes B, C and D together**. The composition proposed in §3 and §4.6 is therefore
*unobserved*. If the rarity reflects a real norm — that a hire-me surface reads as consulting
marketing and costs peer standing — then §4.6 item 7 is the paper's most likely error.

**What would settle it, and why this paper cannot:** the rarity is confounded. Most of the
population are salaried engineers with no client offer to make; their omission of a contact
CTA may reflect having nothing to sell rather than a judgement that selling costs standing.
The two who *do* have an offer (Kaplan-Moss, Larson — both consultants/advisors) both built
the availability page. **n = 2 supports nothing.** This is a genuine unknown and it is
routed to topics 3 and 9 of this pool, and to the test plan (§7 T3). [gap]

### 5.3 The population is self-selected for writers, which biases finding #1

The strongest observed claim in this paper — 15 of 21 lead with writing, 0 with project tiles
— rests on a sample of people who are *known because they write*. An infrastructure engineer
who is respected for shipped systems and does not blog is systematically invisible to the
selection method used. **The honest reading of the 0-of-21 is therefore weaker than it
looks**: it is strong evidence that writing-first works for people who write, and weak
evidence that tile-first fails for people who do not. §4.6 hedges this by keeping a curated
work section (item 4) rather than concluding "delete the tiles."

Second bias: the sample skews toward people at large employers, where the employer supplies
the credibility a portfolio would otherwise have to manufacture. The subject has no such
backing — which is an argument that his site must carry *more* explicit proof (item 2) than
the population does, not less.

### 5.4 Sources that could not be retrieved — stated, not guessed

- **The "recruiters spend N seconds" family: deliberately excluded, primary unreachable.**
  `theladders.com/static/images/basicSite/pdfs/TheLadders-EyeTracking-StudyC2.pdf` returned
  **HTTP 403** with a Cloudflare challenge to a direct `curl` on 2026-08-10, and a second,
  independent retrieval path against a Ladders article URL also returned **HTTP 403**. The
  study is vendor-published by a job-search company — i.e. the funder is an interested party
  — and this paper therefore **asserts no seconds figure and relies on none**. Downstream
  consumers should treat any "6 seconds" / "7.4 seconds" claim as **unverified vendor
  marketing** unless the primary artifact and its methodology are in hand. [gap; and a
  standing warning]
- **Lindgaard et al. 2006 (50 ms):** bibliographic facts confirmed via Crossref; abstract not
  present in Crossref or Semantic Scholar responses; ResearchGate returned **HTTP 403**. No
  numeric claim from this paper is used. [gap]
- **Fogg et al. 2003:** read as a third-party mirror PDF at `pureprose.wordpress.com`, not a
  first-party host; the ACM DOI is the canonical record. The PDF's text stream is per-glyph
  kerned, so its wording is **paraphrased, never quoted**, and the 46.1% figure is reported as
  the paper's own. Only the abstract page yielded extractable text. [reduced confidence noted]
- **Two exemplar sites unfetchable** (§2.1) — no claim is made about either.

### 5.5 When this recommended structure is the WRONG answer

- **If the priority is a job search on a deadline.** Then the highest-leverage artifact is a
  résumé and a LinkedIn profile, not an 8-section site. Nothing in this paper measures
  portfolio→interview conversion, and §5.1 says no such measurement was found.
- **If the write-ups will not be written.** Items 3 and 5 both assume real long-form content
  exists. Without it, the honest structure is **smaller** than today's site, not larger:
  hero + proof strip + About + contact, with no promises. A four-section site that delivers
  beats an eight-section site that gestures.
- **If the peer audience is the only one that matters.** Then archetype A — a bare writing
  index, `danluu.com`-style — is a better answer than anything in §4.6, and items 2, 4 and 7
  are pure cost. The three-audience balance is a *given* of this dispatch; change the given
  and the recommendation changes with it.
- **If the client work is the actual goal.** Then a portfolio is the wrong artifact class
  entirely and a services site is right, and §5.2's tension resolves by dropping the peer
  constraint. This paper assumes the balance holds because the dispatch says it does.

---

## 6. Citations

**Research organization — first-party published research (raw HTML fetched, tags stripped
locally; quoted spans character-exact):**

1. NN/g, *Scrolling and Attention* — https://www.nngroup.com/articles/scrolling-and-attention/
2. NN/g, *The Fold Manifesto: Why the Page Fold Still Matters* — https://www.nngroup.com/articles/page-fold-manifesto/
3. NN/g, *How Little Do Users Read?* — https://www.nngroup.com/articles/how-little-do-users-read/
4. NN/g, *F-Shaped Pattern of Reading on the Web: Misunderstood, But Still Relevant* — https://www.nngroup.com/articles/f-shaped-pattern-reading-web-content/
5. NN/g, *About Us Information on Websites* — https://www.nngroup.com/articles/about-us-information-on-websites/
6. NN/g, *Long vs. Short Articles as Content Strategy* — https://www.nngroup.com/articles/content-strategy-long-vs-short/
7. NN/g, *Homepage Design Principles* — https://www.nngroup.com/articles/homepage-design-principles/
8. NN/g, *B2B Usability* — https://www.nngroup.com/articles/b2b-usability/
9. NN/g, *First Impressions Matter: How Designers Can Support Humans' Automatic Cognitive Processing* — https://www.nngroup.com/articles/first-impressions-human-automaticity/

**Peer-reviewed / academic:**

10. Fogg, Soohoo, Danielson, Marable, Stanford, Tauber, *How do users evaluate the credibility of Web sites? A study with over 2,500 participants*, DUX '03 — https://doi.org/10.1145/997078.997097 (read via mirror PDF https://pureprose.wordpress.com/wp-content/uploads/2010/11/webcredibility.pdf)
11. Weinreich, Obendorf, Herder, Mayer, *Not Quite the Average: An Empirical Study of Web Use*, ACM TWEB 2(1), 2008 — https://doi.org/10.1145/1326561.1326566
12. Lindgaard, Fernandes, Dudek, Brown, *Attention web designers: You have 50 milliseconds to make a good first impression!*, Behaviour & Information Technology 25(2):115–126, 2006 — metadata via https://api.crossref.org/works/10.1080/01449290500330448 (abstract not retrievable; cited for existence only)
13. Tuch, Presslaber, Stöcklin, Opwis, Bargas-Avila, *The role of visual complexity and prototypicality regarding first impression of websites*, IJHCS, 2012 — metadata via https://api.crossref.org/works/10.1016/j.ijhcs.2012.06.003 (abstract not retrievable; cited for existence only)

**First-party primary artifacts — the enumerated engineer-site population (all fetched 2026-08-10):**

14. https://danluu.com/ · 15. https://www.brendangregg.com/ (+ /blog/about.html) ·
16. https://jvns.ca/ (+ /about/, /projects/) · 17. https://brooker.co.za/blog/ ·
18. https://simonwillison.net/ (+ /about/) · 19. https://www.jeffgeerling.com/ (+ /about) ·
20. https://www.taniarascia.com/ (+ /me/, /projects/) · 21. https://xeiaso.net/ ·
22. https://vickiboykis.com/ (+ /about) · 23. https://www.hillelwayne.com/ (+ /about/) ·
24. https://jacobian.org/ (+ /contact/, /help/) · 25. https://mtlynch.io/ (+ /about/, /projects/) ·
26. https://noidea.dog/ (+ /about) · 27. https://fasterthanli.me/ (+ /about) ·
28. https://ciechanow.ski/ · 29. https://lethain.com/ (+ /about/) · 30. https://gwern.net/ ·
31. https://blog.nelhage.com/ · 32. https://www.tbray.org/ongoing/ · 33. https://brandur.org/ (+ /about) ·
34. https://apenwarr.ca/

**Retrieval failures, recorded as findings (2026-08-10):** https://rachelbythebay.com/w/
(timeout ×2) · https://kelseyhightower.com/ (DNS) · theladders.com PDF and article (HTTP 403,
two paths) · researchgate.net Lindgaard PDF (HTTP 403).

**In-repo artifacts read:** `index.html`, `docs/standards/research/research_standard.md`,
`docs/standards/architecture/research/topics.md`.

---

## 7. Test plan — what research cannot settle

Each item names what would decide it, because none of these is answerable from sources.

- **T1 — Does the contact/availability section cost peer credibility?** §5.2's unresolved
  tension. **Test:** build item 7 in two variants (a bare `mailto:` line vs. a short "what I
  can help with" list) and put both in front of 5+ senior engineers who do not know the
  subject, asking them to describe the person after 60 seconds. Record whether the word
  "consultant" or "for hire" displaces "engineer" in their description.
- **T2 — Does the proof strip read as evidence or as boasting?** The numbers in item 2 are the
  paper's highest-leverage and highest-risk recommendation. **Test:** same-audience read-aloud;
  the failure signal is any reader asking "is this real?" rather than "how did you do that?"
- **T3 — Which single section do clients act from?** Not measurable before the site exists.
  **Test:** ship items 1–8, instrument nothing beyond referrer + which section the inbound
  email mentions, and read the first 10 inbound contacts.
- **T4 — Does the flagship system read as staff-level or as a home lab?** Topic 5 of this pool
  researches the framing; only a reader test decides whether the framing landed.
- **T5 — Is the writing section sustainable?** The evidence says writing is the dominant peer
  credibility surface (§2.2) and §5.5 says an abandoned one is worse than none. **Test:** a
  6-month commitment check *before* building item 5 — three write-ups drafted and dated, or the
  section becomes a case-study index instead.
- **T6 — Where does the fold actually land?** P3 says cut the fold through content. **Test:**
  mechanical — measure the first-section boundary at 1920×1080, 1440×900, and a 390 px-wide
  phone, and confirm content is visibly clipped at each.
- **T7 — How many curated work entries before scanning degrades?** §2.3 observes 4, 6, 8 and 17
  in different placements but nothing measures the threshold. **Test:** 3 vs. 6 entries in front
  of the recruiter-proxy audience, timed to first stated impression.

---

**Revalidation rationale (§5).** Set **medium — 3 months**. Per §3's mixed-volatility rule the
header takes the highest tier present. §1.2 and the peer-reviewed citations are genuinely
**low**-volatility (NN/g's own scrolling article notes *"usability guidelines rarely change
over time"*) and a refresh can skip re-verifying them. §2 is **medium**: it is a point-in-time
enumeration of 21 live sites, and a single redesign of a load-bearing exemplar (xeiaso's
highlighted-projects block; jacobian's landing CTAs) invalidates a specific count. 3 months
sits mid-band because the site layer moves slowly in practice but the counts are the paper's
load-bearing evidence — a shorter interval would be over-refresh, and 4 months risks citing
counts that a redesign has silently falsified.
