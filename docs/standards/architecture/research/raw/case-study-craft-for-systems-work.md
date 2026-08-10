# Case-study craft for complex systems / infrastructure work

```
Topic:          How should an engineering case study for invisible infrastructure work be
                shaped — outcome-first vs. stack-list, narrative frame, evidence and metrics
                at solo scale, and how the work is made legible when there is nothing to click?
Feeds:          The case-study template this portfolio builds against, and the three dead
                `Write-up →` links (href="#") in projects.js
Last validated: 2026-08-10
Revalidate:     medium — 3 months
Confidence:     Definitive on the SHAPE of admired engineering write-ups (§2, §4, §7) — every
                structural claim is quoted verbatim from a first-party published artifact.
                Definitive on metric definitions (DORA, SRE SLO). Derived (clearly marked) on
                the synthesis that produces the template in §8 and on the recruiter/peer
                tension. Unverified→DECLINED on recruiter attention timing (§11, Gap G2):
                the primary artifact was unreachable and is NOT cited. Gaps G1–G6 in §11.
Critic:         not-yet-verified — 2026-08-10
```

**Volatility map (per Research Standard §3, mixed-volatility rule).** The header carries the
highest tier present. A refresh can **skip** §§1–5, 7, 8 (Low — narrative-craft fundamentals;
the load-bearing sources are from 2007–2023 and are still the current editions of themselves).
A refresh **must** re-examine §6 (evidence/metrics conventions), §9 (audience tension, where the
hiring-signal evidence sits), and §11 (gaps) — that is the ~30% of the paper that decays.

**Read this first.** The recommendation below has a hard prerequisite the site does not yet
satisfy: *the strongest sections of the recommended template are the ones that require measured
numbers and a real named failure, and this subject has published neither.* The first build task
is therefore **measurement and incident-recall, not writing**. §8's worked outline deliberately
leaves every numeric slot as a `MEASURE:` placeholder. **No number in this paper is attributed to
the MDC platform**; inventing one would be exactly the fabrication the Research Standard forbids.

------------------------------------------------------------------------

## 1. Primer — what a "case study" is being asked to do here

A portfolio case study is a written artifact that has to survive three readings at once: a senior
peer looking for evidence of judgement, a hiring manager or recruiter looking for a fast fit
signal, and a prospective client looking for evidence that the work works. It is also a genre
where the author grades their own homework, which caps its credibility unless specific devices
are used (§7).

For **infrastructure** work the genre has an additional, structural problem: there is no artifact
to look at. A design portfolio shows the thing. A systems portfolio has to substitute *description
plus verifiable trace* for *the thing*. Everything in this paper follows from that substitution.

The useful theoretical frame comes from the hiring-signals literature. Marlow & Dabbish's CSCW
2013 interview study of GitHub-based hiring distinguishes two signal classes [S18]:

> assessment signals are thought to be more reliable indicators of the presence of a certain
> quality because they are costly to produce, whereas conventional signals are more susceptible
> to being manipulated because they are more easily faked by someone not possessing the underlying
> quality they signal.

*(Definitive as a description of the study's framing — first-party, published, peer-reviewed;
verbatim from the CMU-hosted PDF.)*

That single distinction organises the whole problem. A tech-stack list is cheap to type and
therefore a **conventional** signal. A decision record that names the three options you rejected
and what each would have cost you is expensive to fake and therefore closer to an **assessment**
signal. Section 4 and section 7 are, in effect, a hunt for the assessment signals available to a
solo operator of a private system.

The same study found that the interviewed employers treated these traces as *better* evidence than
a résumé [S18]:

> These cues were seen as more reliable indicators of technical abilities and motivation than
> information provided on a resume, because of the transparency of work actions on GitHub and
> relative difficulty of manipulating behavior traces.

*(Definitive as a finding of that study. Scope caveat, stated because it matters: n = 13
interviewees — "We conducted a series of semi-structured interviews with thirteen GitHub users"
[S18] — of whom 7 were employers; GitHub-specific; 2013. It is qualitative evidence about
mechanism, not a population estimate, and it is not evidence about **case studies** specifically.
Extrapolating it to prose write-ups is my inference and is marked *derived* wherever used.)*

------------------------------------------------------------------------

## 2. The specific models — narrative frames that exist, and where each came from

Five frames appear in the corpus of admired engineering writing. Each is described here from its
own first-party definition, not from commentary about it.

### 2.1 The decision record (ADR / RFD)

Michael Nygard's 2011 post defines the original ADR and is itself written in ADR form [S1]. Its
format has five parts — **Title, Context, Decision, Status, Consequences** — and its guidance on
each is unusually sharp. On Context [S1]:

> This section describes the forces at play, including technological, political, social, and
> project local.

On honesty in Consequences [S1]:

> All consequences should be listed here, not just the "positive" ones.

On length [S1]:

> The whole document should be one or two pages long.

And on why any of this exists [S1]:

> Nobody ever reads large documents, either.

> Bite sized pieces are easier for for all stakeholders to consume.

*(All definitive: first-party, published, editorially controlled. The doubled "for for" is in the
source; it is quoted as written. Fetched as raw HTML via `curl` and de-tagged locally, then
whitespace-normalised — see §11 on quoting method.)*

The community's consolidated ADR guidance adds three constraints that matter for a portfolio [S2]:

> Specific: Each ADR should be about one AD, not multiple ADs.

> Timestamps: Identify when each item in the ADR is written.

> Immutable: Don't alter existing information in an ADR.

*(Definitive — raw `README.md` from `raw.githubusercontent.com`. Repo `default_branch` confirmed
as `main` via the GitHub contents API before fetching, per the raw-fetch discipline.)*

MADR, the most-used modern ADR template, supplies the section list. Enumerated by grepping
`^## ` in the raw template file, it has **six** top-level sections: Context and Problem Statement,
Decision Drivers, Considered Options, Decision Outcome, Pros and Cons of the Options, More
Information — plus `### Consequences` and `### Confirmation` nested under Decision Outcome [S3].
*(Definitive; the count was reached by enumerating the headings in the raw file and counting the
enumeration, not by asking any layer for a total. Note: `adr/madr`'s `default_branch` is
`develop`, not `main` — the cited URL uses `develop`.)*

Oxide Computer's RFD process is the same idea operated in public and at company scale. RFD 1
states the purpose [S4]:

> Writing down ideas is important: it allows them to be rigorously formulated (even while
> nascent), candidly discussed and transparently shared.

and prescribes, for technical determinations [S4]:

> Document the viable options (or a subset of options if we can easily rule some out) and the
> benefits and drawbacks of each option.

> Document our reasoning including data and references wherever possible; making it easy for our
> future selves (and those who join in the future) to understand the decisions we've made and why.

*(Definitive — first-party, published, versioned, publicly readable.)*

### 2.2 The postmortem / incident report

Google's SRE book defines it [S5]:

> A postmortem is a written record of an incident, its impact, the actions taken to mitigate or
> resolve it, the root cause(s), and the follow-up actions to prevent the incident from recurring.

and sets the tone rule [S5]:

> Blameless postmortems are a tenet of SRE culture.

with the balancing clause that blameless does not mean soft [S5]:

> it should call out where and how services can be improved

*(Definitive — first-party, published book chapter. Fetched as rendered HTML from `sre.google`;
no raw form of the chapter exists, so it is de-tagged HTML rather than a raw artifact. Quotes were
verified by exact-substring match against the fetched bytes.)*

Two public examples show the shape in the wild. Cloudflare's November 2023 control-plane outage
post declares its own structure in the fourth paragraph [S7]:

> This post outlines the events that caused this incident, the architecture we had in place to
> prevent issues like this, what failed, what worked and why, and the changes we're making based
> on what we've learned over the last 36 hours.

and opens the accountability with [S7]:

> To start, this never should have happened.

GitLab's 2017 database-loss postmortem does the same move with impact stated before mechanism
[S8]:

> Losing production data is unacceptable.

> In this article we'll look at what went wrong, what we did to recover, and what we'll do to
> prevent this from happening in the future.

and quantifies the damage rather than hedging it [S8]:

> Our best estimate is that it affected roughly 5,000 projects, 5,000 comments and 700 new user
> accounts.

*(All definitive as first-party statements by the operators of the systems described.)*

### 2.3 The problem → decision → trade-off → outcome essay

This is the dominant frame for architecture write-ups. Segment's "Goodbye Microservices" is a
clean specimen: it explains why the original architecture was correct, what broke, what was
rebuilt, and then — critically — carries an explicit section headed `Trade Offs` [S9]:

> Moving from our microservice architecture to a monolith overall was huge improvement, however,
> there are trade-offs:

It also contains the single most credibility-raising sentence type available to an engineer,
the admission that a past belief was wrong [S9]:

> Recall that the original motivation for separating each destination codebase into its own repo
> was to isolate test failures. However, it turned out this was a false advantage.

and it states its outcome as evidence rather than adjective [S9]:

> The proof was in the improved velocity.

*(Definitive as first-party. Note: the post now redirects from `segment.com` to `twilio.com`;
the cited URL is the redirect target actually fetched.)*

Discord's messages-storage post is the metric-forward variant of the same frame, opening on
scale-of-problem and closing on measured deltas [S10]:

> At the beginning of 2022, it had 177 nodes with trillions of messages.

> we're going from running 177 Cassandra nodes to just 72 ScyllaDB nodes

> fetching historical messages had a p99 of between 40-125ms on Cassandra, with ScyllaDB having a
> nice and chill 15ms p99 latency

*(Definitive as first-party claims; the underlying measurements are not independently verifiable
by a reader, which is exactly the ceiling discussed in §7.)*

### 2.4 The explainer

Tailscale's "How NAT traversal works" is the frame for making an invisible mechanism legible with
no product screenshot at all. It opens by naming a concrete problem rather than a technology
[S11]:

> Let's start with a simple problem: establishing a peer-to-peer connection between two machines.

Diátaxis names this documentation type and its job [S13]:

> Explanation is a discursive treatment of a subject, that permits reflection

and prescribes its content [S13]:

> explain why things are so - design decisions, historical reasons, technical constraints

*(Definitive — both first-party published artifacts.)*

### 2.5 STAR / CAR

STAR is a hiring-interview frame, and its first-party home is employer hiring guidance rather than
engineering writing. Amazon's "Interview loop" page lists "The STAR method" among its prep topics
and spells the letters out ("S = SITUATION", "T = TASK"), with the instruction [S20]:

> Focus on what you did, and back it up with data or results if possible.

and

> Use real examples from your past

*(Definitive that Amazon publishes this guidance — first-party, published. The text lives in the
page's embedded JSON payload rather than in visible prose; it was extracted from the fetched HTML
by exact substring search. It is definitive about **Amazon's stated expectation**, not about how
any individual interviewer behaves.)*

------------------------------------------------------------------------

## 3. Comparative landscape — which frame fits systems work

| Frame | Unit it fits | Fits a systems case study? | Why / why not |
|---|---|---|---|
| **Problem → decision → trade-off → outcome** | The whole study | **Yes — as the spine** | Every long-form exemplar fetched here uses it [S7][S8][S9][S10]. It has a slot for constraints (which is where infrastructure work is actually hard) and a slot for what it cost. |
| **ADR / RFD** | One decision | **Yes — as sub-units, never the whole** | The ADR corpus is explicit that one record = one decision [S2]; a whole platform is dozens. Embedding 3–5 compressed decision records inside the spine gives the peer audience what it reads for without turning the page into a decision log. |
| **Postmortem** | One failure | **Yes — as exactly one section** | It is the highest-credibility section available to a self-assessor (§7), because it is self-incriminating. As a *whole-study* frame it fails: it presumes an incident is the subject, and most of this subject's work is construction, not recovery. |
| **Explainer** | One mechanism | **Partly — as an optional deep-dive layer** | Excellent for "how the VM reconciler converges" [S11][S13]. But an explainer has no slot for *your* judgement, so on its own it demonstrates knowledge, not engineering. |
| **STAR / CAR** | One spoken answer | **No at page scale; yes at tile scale** | It has no Considered-Options slot and no Trade-offs slot — the two things the peer audience reads for. *(Derived from: MADR's section list [S3] and Oxide's options requirement [S4] both make alternatives a first-class element, and STAR has no equivalent; Amazon's own STAR guidance is oriented at "what you did" [S20].)* Its compression is genuinely useful for the ~40-word project tile and for the interview that a good tile produces. |

**Derived conclusion (inputs: the table above; NN/g reading data in §5):** the frames are not
competitors, they are *altitudes*. STAR compresses to the tile, the problem→trade-off spine carries
the page, ADR-shaped blocks carry the decisions inside the page, the postmortem carries one
section, and the explainer becomes a linked deep-dive. This is the direct argument for a layered
artifact rather than a choice of frame.

------------------------------------------------------------------------

## 4. Outcome-first vs. tech-stack list

**The evidence for outcome-first is strong and comes from two independent directions.**

*Direction 1 — reading behaviour.* NN/g's inverted-pyramid guidance defines the pattern as one
where [S15]:

> the most important information (or what might even be considered the conclusion) is presented
> first

with the payoff [S15]:

> Readers can stop reading at any point on the page and still come away with the main point.

Nielsen's 2008 measurement study puts numbers on why this matters [S16]:

> On the average Web page, users have time to read at most 28% of the words during an average
> visit; 20% is more likely.

and

> 4.4 seconds more for each additional 100 words

*(Definitive that NN/g published these; the 2008 study's own limitations are stated in the source
— an instrumented sample of 25 users, later filtered to 45,237 page views, skewed toward
high-literacy users. **Vintage caveat, marked directional for present-day application:** this is
2008 data about general web content, not 2026 data about hiring artifacts. It is the best
measured evidence located; §11 G1 records that no better one was found.)*

*Direction 2 — what admired write-ups actually do.* Every exemplar fetched leads with impact or
problem, not with tooling. Cloudflare's opening paragraph states the outage window and the
customer-facing scope before naming a single technology [S7]. GitLab states the data loss and its
magnitude in the first three paragraphs [S8]. Discord opens on the operational pain — a high-toil
system with unpredictable latency — and introduces ScyllaDB only after the problem is established
[S10]. Segment's title itself is the outcome. *(Definitive as observations of the fetched texts.)*

**Where a stack list belongs.** Three places, and no others:

1. **As scannable metadata on the tile.** The portfolio already does this — `projects.js` carries a
   `tags` array per project. That is the correct home: it is keyword surface for the recruiter
   read and it costs the reader nothing.
2. **Attached to the constraint that chose it,** inside the decisions section: "K3s rather than
   managed Kubernetes, because <constraint>." The technology name is then evidence of judgement,
   not of exposure.
3. **In a terminal "Stack" appendix** for the reader who wants to confirm coverage.

**Derived claim (inputs: [S18] signal classes; [S4] options requirement; [S9] trade-offs section):**
a bare stack list is a textbook **conventional** signal — costless to produce and trivially faked
by anyone who has read a tutorial — whereas a decision paragraph naming rejected alternatives and
their costs is closer to an **assessment** signal, because producing it requires having actually
weighed them. This is the mechanism by which "outcome-first, stack-in-context" outperforms
"stack-list-first", and it is my inference across those sources, not a claim any of them makes.

------------------------------------------------------------------------

## 5. Length and layering

Nielsen's information-foraging analysis of article length concludes [S17]:

> A mixed diet that combines brief overviews and comprehensive coverage is often best.

and its closing section is headed "Hypertext to the Rescue" [S17] — i.e. the resolution to the
long-vs-short tension is linking, not compromise. Nygard independently reaches the small-document
conclusion for decision records, capping an ADR at "one or two pages" and observing that "Nobody
ever reads large documents, either" [S1]. Diátaxis's whole premise is that different reader needs
want structurally different documents rather than one blended one [S13]. C4 makes the same move
for pictures: hierarchical levels of zoom, used selectively [S12].

**Derived recommendation (inputs: [S15][S16][S17][S1][S13][S12]):** three layers.

| Layer | Artifact | Budget | Job |
|---|---|---|---|
| **L0** | The tile in `projects.js` | ~30–45 words + tags | Outcome sentence. Must stand alone; most readers see only this. |
| **L1** | The case-study page | **1,200–2,000 words**, front-loaded | The full spine (§8). A reader who stops after the At-a-glance box still has the point [S15]. |
| **L2** | Deep dives, linked from L1's decision blocks | Unbounded | Explainers, full ADRs, incident detail. Written on demand, not up front. |

The 1,200–2,000 figure is **derived, not measured**: it is the range in which NN/g's cost model
(≈4.4s per extra 100 words [S16]) keeps a motivated reader's cost under ~5–8 minutes while leaving
room for the six spine sections in §8. §11 G4 records that no measured optimum for engineering
case studies was found; §12 T3 makes it a test rather than a claim.

**Publish L1 for all three projects before writing any L2.** *(Derived: three dead `href="#"` links
are three broken promises; one deep essay plus two dead links is strictly worse than three
complete short studies, because the dead link is itself a negative signal about follow-through.)*

------------------------------------------------------------------------

## 6. Evidence and metrics when the numbers are small

This is where a self-hosted platform is most exposed and where most portfolios inflate.

### 6.1 What the standards actually say

DORA defines its metrics precisely, which is what makes them quotable at any scale [S14]:

> Change lead time : The amount of time it takes for a change to go from committed to version
> control to deployed in production.

and names the failure modes directly. Two of its listed pitfalls apply to a portfolio verbatim
[S14]:

> Setting metrics as a goal.

> Context matters.

*(Definitive — first-party. Also definitive from the same page: DORA's current model is **five**
metrics, not four — the page states the shift "from the original four keys to the current
five-metric model", and names change lead time, deployment frequency, failed deployment recovery
time, change fail rate, and deployment rework rate. Counted by enumerating the five named metrics
in the fetched text. A portfolio that cites "the four DORA metrics" in 2026 is citing a superseded
model.)*

The SRE Workbook supplies the honesty rule for availability claims [S6]:

> Our experience has shown that 100% reliability is the wrong target

*(Definitive.)* The operative consequence for a case study: an uptime number without a stated SLI
definition and measurement window is not a measurement, it is an adjective.

### 6.2 Metrics that are real and defensible at this scale

*(Derived — the selection and the defensibility ranking are my inference from [S14][S6] plus the
observed practice in [S9][S10]. The definitions are the cited sources'.)*

| Metric | Why it survives scrutiny at solo scale | Precondition before publishing |
|---|---|---|
| **Provisioning time** — declared spec → converged VM | Absolute, not comparative. Verifiable by demo. Directly evidences the reconciler's value. | Timed on a real run; state cold vs. warm cache. |
| **Rebuild-from-zero time** — bare metal → running platform | The single most persuasive number a declarative platform can produce, because it is the claim of declarativeness *tested*. | Requires an actual timed drill. |
| **Recovery time from a real failure** | Maps to DORA's failed deployment recovery time [S14]; grounded in an event that happened. | Needs the incident record from §8.7. |
| **Change lead time / deployment frequency** | Defined by a public standard [S14], so the reader can check what you mean. | Must state the scope: which app or service [S14] warns against blending across systems. |
| **Reproducibility / declarative coverage** — e.g. count of hosts under declared state, count of remaining manual steps | Enumerable from the repo, therefore checkable. | Count by enumeration from the desired-state repo, never estimated. |
| **Fleet inventory** — clusters, nodes, services, workloads | Enumerable; establishes scale honestly without a percentage. | Same. |
| **Cost** — actual monthly run cost vs. a quoted equivalent | Concrete and client-legible. | Must publish the workload assumptions and exclude your own labour explicitly, or it invites an easy rebuttal. |

### 6.3 Metrics that will read as inflated

*(Derived from [S14] pitfalls, [S6], and the contrast with how [S8][S10] present numbers.)*

- **"99.9x% uptime"** with no SLI, no window, and no error budget — [S6] is the counter-source.
- **Percentage improvements over a baseline only you ever measured** ("40% faster provisioning") —
  unfalsifiable; prefer the absolute pair ("was X min, now Y min, measured on N runs").
- **Self-classification against industry bands** ("elite DORA performer") — [S14] explicitly warns
  against disparate comparisons and metrics-as-goal.
- **Synthetic throughput** ("handles N req/s") for a system whose real load is two businesses.
- **Aggregate counts inflated by granularity** (counting every Ansible task as a "component").

**The honest move, and it is a strong one:** where a number would be inflated, state the
constraint instead. "Two businesses run on it; the acceptable maintenance window is X; the
platform has never been rebuilt without the declared state" is *specific*, checkable in principle,
and costly to fake — an assessment-signal-shaped sentence in Marlow & Dabbish's terms [S18].
*(Derived.)*

------------------------------------------------------------------------

## 7. Making the invisible visible — what the FORMAT needs

**Scope note:** pool topic 6, *Proof surfaces for infrastructure work*, owns the depth analysis of
which assets convince and what each costs to build and maintain. This section decides only what
**slots the case-study format must contain**, and hands the rest over.

### 7.1 Diagrams — two, not a gallery

C4 is the load-bearing source and it is unusually restrained about quantity [S12]:

> The different levels of zoom allow you to tell different stories to different audiences.

> you don't need to use all 4 levels of diagram

> the system context and container diagrams are sufficient for most software development teams

C4's abstraction set is stated on its home page [S12]:

> A set of hierarchical abstractions - software systems , containers , components , and code .

*(Definitive — first-party, though fetched as a rendered page; the site is small and static, and
the quoted spans were exact-matched against the fetched bytes. Spacing around punctuation is a
de-tagging artifact and is reproduced as returned.)*

**Format decision (derived from [S12]):** each case study carries **exactly two** diagrams — one
context-level ("what is this system, who and what does it touch") and one container/deployment-level
("what runs where"). A third is a deep-dive (L2) asset, not a case-study asset. Two is also the
count that the audience split supports: the context diagram is the only one a recruiter or client
will parse; the container diagram is the one a peer will actually inspect.

### 7.2 The other legibility devices — slots, with costs flagged

*(Directional on relative persuasiveness; no measured comparison of these assets was found — §11
G3. The cost column is my estimate, marked derived.)*

| Device | Slot in the format | Derived cost / maintenance risk | Handoff |
|---|---|---|---|
| **Decision records** | 3–5 compressed blocks inside the study | Low — the MDC repos already carry standards docs and rationale; this is mostly extraction | — |
| **Named constraints** | The Constraints subsection | Near-zero; highest credibility per word | — |
| **Incident narrative** | Exactly one section | Low to write, high to recall accurately | — |
| **Code excerpt** | ≤15 lines, only where it *is* the decision | Low; goes stale silently | Topic 6 |
| **Terminal / asciinema recording** | Optional inline in one section | Medium build, **high staleness risk** | **Topic 6** |
| **Live status / telemetry page** | A single link from the study | Low build, **highest ongoing risk** — a broken status page is a negative signal about the very claim it exists to support | **Topic 6** |
| **Video walkthrough** | Optional link | High build, high re-record cost on change | **Topic 6** |
| **Public repo / CI / published image digest** | The Artifacts footer | Already exists in this repo | Topic 6 |

**Derived observation worth carrying to topic 6:** every device above except the public repo is an
*authored* artifact and therefore a conventional signal in [S18]'s sense; the repo, the CI run, and
the published image digest are third-party-attested and are the only assessment signals on the
list. That asymmetry should drive topic 6's ranking.

### 7.3 The credibility ceiling of self-assessment

A case study is the author grading their own work, and no formatting fixes that. The devices that
measurably raise the ceiling, each grounded in a source:

1. **Publish the alternatives you rejected and why** — [S4] makes this a process requirement;
   [S3] makes it a template section. Costly to fake.
2. **Publish the trade-offs you accepted** — [S9]'s `Trade Offs` section is the model.
3. **Admit a wrong belief explicitly** — [S9]'s "it turned out this was a false advantage".
4. **Own a failure in postmortem form, blamelessly but concretely** — [S5], modelled by [S7]'s
   "To start, this never should have happened." and [S8]'s "Losing production data is
   unacceptable."
5. **Date everything and treat records as immutable** — [S2]'s Timestamps and Immutable rules.
6. **Link third-party-attested artifacts** — public repos, CI runs, published image digests. This
   is the only category [S18] classes as reliably hard to falsify.
7. **Quantify with defined metrics, not adjectives** — [S14][S6].

**The ceiling that cannot be removed, stated plainly (derived; this is the paper's least
comfortable finding).** Marlow & Dabbish's most reliable-rated employer signals were *community-
attested*: contributions accepted into high-status projects, described as [S18]

> An accepted commit to a high-status project (a widely-used project with many contributors and
> watchers) signaled the candidate was someone who produced quality code. This acted as a reliable
> signal because it required approval of the code by others in the community, meaning it would be
> extremely difficult to falsify.

A private cloud running two private businesses **structurally cannot generate** that class of
signal: there is no external reviewer, no merged upstream patch, no public user base. The case
study's job is therefore to get as close as the constraints allow — public repos, public CI,
published digests, named constraints, admitted failures — and the honest reading is that this
lands short of the ceiling, not at it. *(Derived from [S18]; no source was found that measures how
much short.)* The same study is also useful as a warning about the reflex substitute: employers
distrusted popularity counts —

> Employers in our sample also noted conventional signals of quality they did not trust.

> Popularity was thus to some degree viewed as a signal that developers could game.

— so stars, view counts and follower numbers are not a workaround [S18].

------------------------------------------------------------------------

## 8. The template — section by section, with the MDC study worked through

This is the deliverable. Each section names the evidence that justifies it. Target: **L1,
1,200–2,000 words**, front-loaded per [S15].

### 8.0 Title
Short noun phrase naming the system **and** the outcome. Source: [S1] ("These documents have names
that are short noun phrases"), [S3] ("short title, representative of solved problem and found
solution").
*MDC:* "MDC Private Cloud Platform — a declarative private cloud that two businesses run on."

### 8.1 At a glance (5 lines, above the fold)
Fixed labels: **What it is / Why it exists / My role / Scale & constraints / Status**.
Source: inverted pyramid [S15]; the stop-reading-anywhere property [S15]; reading-volume data
[S16].
*MDC:* What — a foundation-up private cloud (Proxmox, three K3s clusters, Django/Temporal control
plane, Ceph, ArgoCD, Ansible). Why — `MEASURE:` the operating need that forced it, stated as a
constraint not a preference. Role — sole architect and operator. Scale — `MEASURE:` node/cluster/
service counts by enumeration from the desired-state repo. Status — in production; two businesses
(property management; an ERPNext-based business-ops suite) run on it.

### 8.2 The problem and the constraints
Value-neutral statement of forces, per [S1]: "This section describes the forces at play, including
technological, political, social, and project local." Constraints are the section that makes
infrastructure legible, because in infrastructure the constraints *are* the difficulty.
*MDC:* single operator; real customer workloads with no maintenance window generosity; hardware
budget; no vendor lock-in; everything must be reconstructible from git. `MEASURE:` state the
acceptable downtime and the actual budget rather than asserting "enterprise-grade".

### 8.3 What I built — with two diagrams
One C4 context diagram, one container/deployment diagram. No more [S12].
*MDC:* Context — the MDC as one system, its VLANs, the isolated SkyyGate edge, the tailnet, the
two customer businesses as external actors. Container — Proxmox hosts, the three K3s clusters and
what each owns, Ceph, the Django/Temporal control plane, ArgoCD's reconciliation path.

### 8.4 Key decisions (3–5 compressed decision blocks)
Each block: **Decision — Options considered — Why this one — What it cost.** One decision per
block [S2]; options are mandatory [S4][S3]; the cost line is [S1]'s "All consequences should be
listed here, not just the 'positive' ones."
*MDC candidates:* (a) three K3s clusters rather than one — isolation vs. operational overhead;
(b) SkyyGate physically excluded from the clusters — attack surface vs. uniformity; (c) 1Password
SDK direct rather than 1Password Connect — the alternative was evaluated and rejected, which is
precisely the material [S4] asks for; (d) Temporal + Ansible for infra, ArgoCD for K8s resources —
two execution paths deliberately, and what that split costs.

### 8.5 Evidence it works
A small table: metric — definition — measurement window — value. Definitions cited to [S14];
availability claims constrained by [S6].
*MDC:* `MEASURE:` provisioning time; `MEASURE:` rebuild-from-zero drill time; `MEASURE:` declared-
state coverage by enumeration; `MEASURE:` change lead time for one named service. **Publish none of
these until measured.**

### 8.6 What went wrong — one incident, postmortem-shaped
Impact → timeline → contributing cause → what changed. Blameless but concrete [S5]; modelled on
[S7] and [S8], including their willingness to state magnitude ([S8]: "Our best estimate is that it
affected roughly 5,000 projects…").
*MDC:* one real event — `MEASURE:` recall it accurately, with dates and duration. This section is
optional in the sense that you may not have one worth telling; it is **not** optional in the sense
of being replaceable by a hypothetical.

### 8.7 Trade-offs and what I'd do differently
Modelled directly on [S9]'s `Trade Offs` section, including at least one belief that turned out
wrong ([S9]: "it turned out this was a false advantage").
*MDC:* the cost of three clusters at one-operator scale; where declarative-everything slowed
incident response; what the ERPNext workload exposed.

### 8.8 Current status and what's next
Dated. Immutability rule from [S2] applies: amend rather than silently rewrite, so a returning
reader can see the platform moved.

### 8.9 Artifacts
Public repos, CI runs, published image digests, standards documents, deep-dive links. The only
third-party-attested items on the page [S18]; they belong at the bottom (assessment signals for
the reader who got that far) **and** as one inline link near the top (for the peer who skipped).

### 8.10 What the other two studies inherit
The same ten sections. *Declarative VM Orchestrator* is the study where §8.5 is strongest — a
reconciler produces convergence timings naturally, and its §8.4 has an obvious "why not Terraform
alone / why not Ansible alone" block. *Deploy-A-Saurus* is the study where §8.4 is strongest — a
recipe-driven pipeline with a dev → main → tag promotion flow is a chain of decisions, and this
portfolio repo's own `verify → build` gate is a live, third-party-attested artifact for §8.9.

------------------------------------------------------------------------

## 9. The three-audience tension, stated where the evidence shows it

The dispatch requires this be surfaced rather than smoothed. Where the evidence is thin, it is
labelled thin.

| Section | Peer | Hiring manager / recruiter | Client |
|---|---|---|---|
| At a glance (8.1) | Skims | **The whole read, often** | **The whole read, often** |
| Constraints (8.2) | High value | Low | **High** — clients buy constraint-handling |
| Diagrams (8.3) | Container diagram | Context diagram only | Context diagram only |
| Decisions (8.4) | **Highest value** | Low — likely skipped | Medium |
| Metrics (8.5) | Medium — checks definitions | **High** | **Highest** |
| Incident (8.6) | **Highest value** | Ambiguous | **Ambiguous — possibly negative** |
| Trade-offs (8.7) | **Highest value** | Low | Ambiguous |
| Artifacts (8.9) | High | Medium | Low |

The row-by-row split above is **derived** — it is my inference from each section's evidentiary
purpose in §§2–7, not a measured readership study (§11 G1, G5). Its one first-party anchor is the
technical-writing principle that audience is defined by *role* and by the gap between what a reader
needs and already knows — Google's technical-writing course states the rule as an equation, "good
documentation = knowledge and skills your audience needs to do a task − your audience's current
knowledge and skills", and instructs writers to "Begin by identifying your audience's role (s)."
[S19] *(definitive as first-party published guidance; the "(s)" spacing is a de-tagging artifact of
the fetched page).* Applied here, the three audiences differ chiefly in *prior knowledge*, which is
why the same facts can serve all three at different altitudes and why the split above is by
section rather than by site.

**Two honest tensions, not resolved by this paper:**

1. **The incident section is the peer audience's strongest credibility device and a possible client
   liability.** [S5] and the practice of [S7][S8] establish its value inside engineering culture;
   nothing located establishes how a prospective *client* reads a public failure story from a
   sole operator. This is a genuine gap (§11 G5) and a test (§12 T5) — not something to guess.
2. **Layering mitigates the peer/recruiter split but does not remove it.** The recruiter-facing
   compression and the peer-facing expansion are the same facts at two altitudes (§3), which is
   why one site can serve both. But the middle layer — the L1 page — still has to pick an order,
   and the order that serves the skimmer (metrics early) is not the order that serves the peer
   (decisions early). The template resolves this by front-loading a *summary of* the outcome
   (8.1) and placing decisions before metrics, on the derived reasoning that a skimmer who
   reaches 8.5 was already going to read further. That is a judgement call, not a finding.

Pool topics 3 (audience calibration) and 5 (self-built as senior signal) own this ground; this
section stops at the point where the case-study *format* is decided.

------------------------------------------------------------------------

## 10. Honest boundary analysis — where this fails, and when a case study is the wrong artifact

**B1. The template's two best sections require inputs this subject does not yet have.** §8.5
needs measured numbers and §8.6 needs a real remembered incident. Without them the study degrades
to constraints + decisions + diagrams — still worth publishing, but noticeably thinner than the
exemplars it is modelled on. Stated plainly so the build plan sequences measurement first.

**B2. Outcome-first fails when there is no completed outcome.** A platform in continuous
construction has no "before/after" of the Discord kind [S10]. Leading with an outcome you cannot
evidence is exactly the inflation §6.3 warns against. For in-flight work the defensible opening is
the *constraint satisfied*, not the outcome achieved.

**B3. Every exemplar in this paper is an organisation writing about production systems at scale.**
Cloudflare, GitLab, Discord, Segment, Google, Oxide, Tailscale — all have institutional
credibility the reader imports before the first sentence. **No source was located that studies
how the same format performs when the author is a sole operator with no institutional backing**
(§11 G5). The transfer of these structures to solo scale is my inference and could be wrong in a
specific way: the sections that read as *rigour* from a company may read as *over-formality* from
an individual.

**B4. The self-assessment ceiling is real and partly unremovable** (§7.3). A private platform
cannot generate community-attested signals [S18]. A reader determined to discount self-report can
do so, and no formatting choice prevents that.

**B5. A case study is the wrong artifact when:**
- the reader is doing keyword screening — the tile and the résumé carry that load, not the study;
- the work cannot be described without disclosing a client's operational detail (property
  management and business-ops data both raise this);
- the artifact would go stale faster than it can be maintained. [S2]'s immutability rule and a
  living platform are in real tension; a case study describing a superseded architecture is a
  negative signal. A dated, amended study is the mitigation, not a cure;
- the work has no decision in it. Pure execution ("I installed and configured X") has nothing for
  §8.4, and a study with an empty decisions section actively advertises that;
- the reader wants price and timeline. That is a services page, which pool topic 9 owns.

**B6. The reading-behaviour evidence is old and off-target.** [S16] is 2008 and [S17] is 2007, both
about general web content, neither about hiring artifacts. They are the best located measurements
(§11 G1) and they are used here for *direction* (front-load; layer) rather than for any specific
threshold. The 1,200–2,000-word budget in §5 is derived, not measured.

**B7. The strongest counter-case to this whole paper.** [S18]'s employers preferred *activity
traces* over authored self-description — code, commits, accepted contributions — precisely because
authored material is manipulable. A case study is authored material. It is therefore possible that
for the peer and hiring-manager audiences, effort spent on public repos and public CI dominates
effort spent on prose. The paper's position is that the three dead `href="#"` links make the prose
non-optional *now* (a broken promise is a live negative), and that §8.9 is the bridge to the
trace-based evidence — but a reader who concludes "publish the repos first, write second" is
making an argument this paper's own strongest source supports.

------------------------------------------------------------------------

## 11. Gaps — declared findings, with search methods

**G1. No peer-reviewed measurement of how technical hiring managers consume engineering case
studies was located.** Method: arXiv API queries (`all:"software engineer" AND all:portfolio AND
all:hiring`; `all:"technical portfolio" AND all:hiring`; `all:"case study" AND all:"software
engineer" AND all:"hiring manager"`) each returned **0 entries** (counted by enumerating `<title>`
elements in the API response and subtracting the feed title); Semantic Scholar Graph API search
returned **HTTP 429** on all six attempts made, across three backoff intervals (2s, 3s, 25s), so
that avenue is *untried* rather than *empty*; general web search surfaced only vendor and commentary material. **Stated as
a gap; not filled.**

**G2. The widely-repeated "recruiters spend ~6–7 seconds on a résumé" figure is NOT cited in this
paper.** Method: the primary artifact (`theladders.com/static/images/basicSite/pdfs/
TheLadders-EyeTracking-StudyC2.pdf`) was fetched directly and returned **HTTP 403** with a
Cloudflare interstitial rather than the PDF. Every accessible restatement is a secondary summary
of a vendor white paper. Per the sourcing rules, an uninspected primary plus secondary summaries
is not a citable claim. If this number matters to a downstream decision, it needs to be obtained
from the primary artifact first.

**G3. No comparative measurement of proof-asset persuasiveness** (diagram vs. terminal recording
vs. live telemetry vs. video) was located. The cost/risk column in §7.2 is my estimate, marked
derived. **Handed to pool topic 6**, which owns this question.

**G4. No measured optimum length for engineering case studies.** [S16][S17] measure general web
content in 2007–2008. The §5 budget is derived from their cost model, not observed.

**G5. No source located on how a *sole operator*'s case study is received differently from an
organisation's**, and none on how a *client* audience reads a published failure narrative. Both are
load-bearing for §9 and are stated as unknown rather than guessed. Method: the searches in G1, plus
targeted reading of the fetched hiring-signals literature [S18], which studies GitHub traces rather
than authored write-ups.

**G6. First-party Google hiring guidance could not be read.** Method: `google.com/about/careers/
applications/how-we-hire` and `.../interview-tips` were fetched and returned only navigation and
EEO boilerplate — the substantive content is client-rendered. No Google claim is made in this
paper. Amazon's equivalent page *was* readable and is cited [S20]; the resulting evidence base for
"what employers ask for" is therefore one company, not two, and §2.5 is scoped accordingly.

------------------------------------------------------------------------

## 12. Test plan — what research cannot settle

| # | Question | Cheapest experiment | Decides |
|---|---|---|---|
| **T1** | Does the At-a-glance box actually carry the point for a skimmer? | Show 8.1 alone to 3 peers, 2 recruiters, 1 client contact; ask each to state what the system is and why it exists. Pass = 5/6 correct. | Whether the L0/L1 split is real or theatre |
| **T2** | Does an incident section help or hurt with the client audience? (§9 tension 1, gap G5) | Two variants of the MDC study, with and without §8.6, shown to 3 prospective-client-profile readers. Ask: more or less likely to engage? | Whether §8.6 is public or moved to L2 |
| **T3** | Is 1,200–2,000 words right? (gap G4) | Instrument scroll depth on the published pages; compare completion against word count across the three studies. | The L1 budget |
| **T4** | Which metrics can this platform actually produce? | Run the measurements in §8.5 before writing: time a provisioning run, time a rebuild-from-zero drill, enumerate declared-state coverage from the desired-state repo. | Whether §8.5 exists at all |
| **T5** | Do two diagrams suffice, or does the container diagram need a third? (§7.1) | Give peers the two diagrams and ask them to describe the failure domains. Gaps in their answers name the missing diagram. | Diagram count per study |
| **T6** | Does "sole operator" read as senior or as hobbyist? | Out of scope here — **pool topic 5** owns it. Sequence topic 5 before finalising 8.1's "My role" line. | The framing of §8.1 |
| **T7** | Which proof assets earn their maintenance cost? (gap G3) | Out of scope here — **pool topic 6** owns it. | Whether L1 links telemetry/recordings at all |
| **T8** | Does publishing repos beat publishing prose? (§10 B7) | Publish L1 for all three projects with §8.9 populated; track whether inbound contact references the write-ups or the repos. | Where the next effort goes |

------------------------------------------------------------------------

## 13. Citations

Quoting method, stated so the quotes are checkable: every span presented as a quotation was
obtained by fetching the source with `curl`/`urllib` (not through a summarising layer), stripping
HTML tags locally where the source was HTML, normalising runs of whitespace to single spaces, and
then confirming the span by **exact substring match** against the fetched bytes. Spans that failed
that check were rewritten or dropped. PDF text was extracted locally from the fetched file. Where
de-tagging introduced spacing artifacts (e.g. around punctuation in [S12], [S14]), the span is
reproduced as returned rather than tidied.

- **[S1]** Michael Nygard, *Documenting Architecture Decisions*, 2011-11-15 — https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions *(first-party, rendered HTML de-tagged locally)*
- **[S2]** *Architecture decision record (ADR)* — https://raw.githubusercontent.com/architecture-decision-record/architecture-decision-record/main/README.md *(raw markdown; `default_branch: main` confirmed via GitHub API; repo redirects from `joelparkerhenderson/architecture-decision-record`)*
- **[S3]** MADR ADR template — https://raw.githubusercontent.com/adr/madr/develop/template/adr-template.md *(raw markdown; `default_branch: develop`)*
- **[S4]** Oxide Computer, *RFD 1: Requests for Discussion* — https://rfd.shared.oxide.computer/rfd/0001
- **[S5]** Google, *Site Reliability Engineering*, ch. 15 "Postmortem Culture: Learning from Failure" — https://sre.google/sre-book/postmortem-culture/
- **[S6]** Google, *The Site Reliability Workbook*, ch. 2 "Implementing SLOs" — https://sre.google/workbook/implementing-slos/
- **[S7]** Matthew Prince / Cloudflare, *Post Mortem on the Cloudflare Control Plane and Analytics Outage*, 2023-11-04 — https://blog.cloudflare.com/post-mortem-on-cloudflare-control-plane-and-analytics-outage/
- **[S8]** GitLab, *Postmortem of database outage of January 31*, 2017-02-10 — https://about.gitlab.com/blog/postmortem-of-database-outage-of-january-31/
- **[S9]** Alexandra Noonan / Segment (now Twilio), *Goodbye Microservices: From 100s of problem children to 1 superstar*, 2018-07-10 — https://www.twilio.com/en-us/blog/developers/best-practices/goodbye-microservices *(fetched at the redirect target of `segment.com/blog/goodbye-microservices/`)*
- **[S10]** Bo Ingram / Discord, *How Discord Stores Trillions of Messages*, 2023-03-06 — https://discord.com/blog/how-discord-stores-trillions-of-messages
- **[S11]** Tailscale, *How NAT traversal works*, 2020-08-21 — https://tailscale.com/blog/how-nat-traversal-works
- **[S12]** Simon Brown, *The C4 model for visualising software architecture* — https://c4model.com/ and https://c4model.com/diagrams
- **[S13]** *Diátaxis — Explanation* — https://diataxis.fr/explanation/
- **[S14]** Nathen Harvey / DORA, *DORA's software delivery performance metrics* — https://dora.dev/guides/dora-metrics-four-keys/
- **[S15]** Amy Schade / Nielsen Norman Group, *Inverted Pyramid: Writing for Comprehension*, 2018-02-11 — https://www.nngroup.com/articles/inverted-pyramid/
- **[S16]** Jakob Nielsen / Nielsen Norman Group, *How Little Do Users Read?*, 2008-05-05 — https://www.nngroup.com/articles/how-little-do-users-read/
- **[S17]** Jakob Nielsen / Nielsen Norman Group, *Long vs. Short Articles as Content Strategy*, 2007-11-11 — https://www.nngroup.com/articles/content-strategy-long-vs-short/
- **[S18]** Jennifer Marlow & Laura Dabbish, *Activity Traces and Signals in Software Developer Recruitment and Hiring*, CSCW 2013, DOI 10.1145/2441776.2441794 — PDF fetched from https://www.cs.cmu.edu/~xia/resources/Documents/Marlow-cscw13.pdf *(peer-reviewed; the Semantic Scholar record for this DOI has its abstract field elided by the publisher, so the abstract quoted here comes from the PDF itself)*
- **[S19]** Google for Developers, *Technical Writing One — Audience* — https://developers.google.com/tech-writing/one/audience
- **[S20]** Amazon Jobs, *Interview loop* (STAR method guidance) — https://www.amazon.jobs/content/en/how-we-hire/interview-loop *(quoted text extracted from the page's embedded JSON payload)*

**Source count: 20**, reached by enumerating the list above and counting the entries. [S12] is one
work cited at two URLs and is counted once. Not counted as sources, and named in §11 instead: the
Ladders eye-tracking white paper (unreachable, G2) and Google's careers pages (client-rendered,
G6).

------------------------------------------------------------------------

**Feeds forward:** §8 is the template the buildout works from; §5's layer table decides what the
three `Write-up →` links point at; §7.2's handoff rows are inputs to pool topic 6; §9's unresolved
tensions are inputs to pool topics 3 and 5; §12 T4 is a prerequisite task, not a research question.
