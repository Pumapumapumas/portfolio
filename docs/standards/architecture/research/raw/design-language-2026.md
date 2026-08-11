# Design language for a personal engineering site, 2025–26

```
Topic:          What visual language — layout, typography, colour, spacing, motion,
                dark mode — a personal engineering site needs in 2025–26 to read as
                genuinely crafted to a discerning engineer, rather than as a template;
                and what specific, buildable direction follows for THIS site.
Feeds:          The visual direction the target style.css is built toward, and the
                look/feel half of the portfolio's trajectory statement. Directly
                constrains the rewrite of /opt/skyy-net/portfolio/style.css (97 lines).
Last validated: 2026-08-10
Revalidate:     high — 6 weeks
Confidence:     Definitive: everything normative — WCAG 2.0/2.1/2.2 success criteria
                (fetched from the W3C's own source HTML), MDN reference text (fetched
                as raw .md), the Core Web Vitals threshold NUMBERS (the web-vitals
                library's own shipped constants, raw .md), CSS Text Level 4 property
                grammar, Baseline feature status (Web Platform Status JSON API), the
                two peer-reviewed display-polarity studies (PubMed abstracts), the
                HTTP Archive Web Almanac 2025 measured statistics, and the contents
                of thirteen named, fetched stylesheets — plus every count in this
                paper computed over those thirteen files or over this repo's own
                three source files, each of which states its method at the point of
                use and is reproducible from the enumeration printed alongside it.
                NOT in this list, and deliberately: the WebAIM Million 2026 figures
                and web.dev's 75th-percentile measurement rule (see below).
                Quotation form (§3 exactness rule): spans taken from the W3C source
                HTML [S1*] and from MDN raw .md [S2]–[S6] are reproduced with HTML
                tags, markdown link syntax and emphasis markers stripped. They are
                faithful to the source's words but are NORMALISED renderings, not
                exact character sequences. [S9] (web.dev) and [S14] (WebAIM) carry
                that caveat AND exist only as rendered pages: they are definitive on
                the span and a reduced-confidence SOURCE CLASS, so a claim resting on
                them alone is marked directional in the body, while the CWV threshold
                numbers stay definitive because [S10] corroborates them from a raw
                first-party artifact. Verbatim in the strict sense — exact characters
                as returned — applies to the Tailwind theme file, the PubMed XML
                abstracts, the JSON API responses, and the stylesheet spans quoted
                in §1, §2.2 and §2.3. It does NOT apply to two sets of stylesheet
                spans, both flagged where they sit: §3.3's line-height rules, which
                are whitespace-collapsed or ellipsis-abbreviated renderings drawn
                from ten files — three there ARE exact-as-returned, each because
                its source is a single line: the sivers rule and brutalist's
                `.lh-title{line-height:1.25}` / `.lh-copy{line-height:1.5}` pair —
                and §2.2's second xeiaso block, which is an excerpt from a longer
                rule set rather than a complete rule.
                Derived: the craft-tell / template-tell reading (§7), the visual
                direction (§10), and every contrast ratio in this paper — those are
                computed by this paper from the WCAG-defined formula applied to hex
                values read out of the relevant stylesheet, not quoted from a source.
                Directional: the "current bar" characterisation (§2) — a 13-site
                convenience sample is illustrative, not representative.
                Unverified: the halation/astigmatism account of dark-mode discomfort,
                and the "#121212 not pure black" convention — both declared as gaps
                in §12 with search method, not asserted.
Critic:         PASS-WITH-FIXES — 2026-08-10, across three rounds. No source was
                fabricated and no quotation misrepresents its source. Byte-for-byte
                grep -F matches were confirmed for the Tailwind theme block, the
                web-vitals README constants, MDN's system-ui paragraph, the Web
                Almanac spans, the PubMed abstracts, and the stylesheet spans
                quoted in §1, §2.2 and §2.3; the W3C source-HTML and remaining MDN
                spans are faithful NORMALISED renderings, not exact characters, as
                the Quotation-form note above sets out — do not read this line as
                claiming otherwise. All eighteen contrast ratios recomputed
                correctly from the WCAG formula (7 in §5.1, 10 in §10.2, 1 for
                #fff-on-#000), and all fifteen §6.3 Baseline rows matched a fresh
                api.webstatus.dev query. Every defect found was a count or a label,
                never an invented fact, and this revision repairs them: the
                spacing-value and font-size tallies over style.css, and the
                color-scheme, hand-rolled-conformance and heading-line-height
                tallies over the corpus, were re-enumerated from scratch and
                restated; four prose lines that dated Baseline "widely available"
                to the newly-available day were re-queried and relabelled; two
                reformatted code spans and one abbreviated CSS rule lost their
                exact-characters marks; a smooth-scrolling claim mis-attributed to
                MDN was re-sourced to the W3C's Understanding document for SC 2.3.3;
                and several marks moved from definitive to derived or directional
                where the inference or the retrieval channel, not the file, was the
                weak link. Round 3 corrected two false statements this paper's own
                round-2 repair had introduced about xeiaso's and brutalist's
                contents (§3.3) — repairs are claims, and that one is logged rather
                than quietly absorbed.
```

**Volatility justification (§5).** This paper deliberately mixes three decay rates, and §3 binds the header to the fastest.

- **Low tier** — the typographic and reading-research substrate (§3, §4), the display-polarity evidence (§5.2), and the WCAG success criteria themselves (§5.1, §6.1, §8.2). WCAG 2.2 is a W3C Recommendation; the reading studies date to 2001–2014 and are not being overturned. A refresh may **skip §3.1–3.3, §4.1–4.2, §5.2, §8.2** and re-verify only on trigger (a new WCAG version reaching Recommendation; a new meta-analysis of display polarity).
- **Medium tier** — "what well-regarded sites currently do" (§2), the comparative landscape (§9), and the craft/template reading (§7). This is competitive positioning; it moves on a seasonal scale.
- **High tier** — **§6.3 and the Baseline table in §9.3 only.** CSS platform-feature availability is a feature inventory that changes with every browser release: at the time of writing `text-wrap: pretty` and scroll-driven animations both sit at Baseline *limited*, and either could flip within one cycle. That single table sets the header.

The interval takes the High band's **maximum (6 weeks)** rather than its minimum, because (a) the High-tier material is one table, re-verifiable with a single API call, and (b) nothing here is vendor pricing or ToS, the classes that justify a 2-week cadence. **Sections a refresh MUST re-run: §2, §6.3, §7, §9.3, §12.** Splitting the Baseline table into its own paper was considered and rejected under §3 — the fast-moving material is well under a third of this paper.

---

## 1. Is this the right question, and what would make it the wrong one

It would be dishonest to open a paper on visual design without stating the strongest case against its own relevance, so it goes first rather than being quarantined in §11.

**The case that this is a low-order variable.** One of the most-read personal engineering sites in this domain is `danluu.com`, and it has, in total, **four CSS rule blocks in one inline `<style>` element** (counted by enumerating the closing braces in the fetched inline style) — fetched 2026-08-10, the entire stylesheet is:

```css
d{width:4em}li{display:flex;margin:0 0 .9em}ul{margin:0;padding:0}.np{display:flex;flex-direction:row;justify-content:space-between;padding-bottom:.5em;font-style:italic}
```

[S19d] **[definitive** — exact characters returned by `curl https://danluu.com/`]. No max-width, no type scale, no colour system, no font-family declaration at all. The one concession to modern practice is a `<meta name=color-scheme content="light dark">` tag [S19d]. That site is widely read and cited by exactly the audience this portfolio targets — a claim I state as **[unverified]**, since I measured its stylesheet and not its readership. **Any argument that a personal engineering site *requires* a designed visual language has to survive this counterexample, and it does not survive it cleanly.** The honest reading is in §11.1.

**The case that it is not low-order.** Two things push back, and neither is aesthetic taste:

1. The subject's thesis *is* build quality. A site that fails measurable, published quality bars — WCAG contrast, focus visibility, Core Web Vitals — while claiming enterprise-grade infrastructure craft is self-refuting in a way that a *plain* site is not. Plain is a position; broken is a defect. This is the strongest argument in the paper and it is an argument about **conformance**, not about beauty.
2. The current site is not plain in the danluu sense. It has a gradient headline, hover lift transforms, a card grid, and a two-accent palette — it is *decorated*, and decoration invites the judgement that plainness sidesteps. **A site that has chosen to have a look is judged on that look.**

So the question is right, but it must be answered on the conformance-and-restraint axis rather than the visual-sophistication axis. That reframing is this paper's central claim and is **[derived]** from the danluu counterexample [S19d] plus the conformance sources in §8.

**One line of conclusion:** *the highest-return visual work on this site is not adding design, it is (a) fixing a small number of measurable conformance defects that currently exist, (b) replacing three specific tokens that are literally framework defaults, and (c) removing the two decorative gestures that are the site's only template tells — after which the site can stay as spare as it is now and read as deliberate rather than generic.*

---

## 2. The current bar: what well-regarded engineering sites actually do

### 2.1 The corpus, stated as a population

I fetched thirteen personal sites belonging to working engineers/technologists and pulled their **primary stylesheet as a raw file** (a stylesheet is a raw source; a screenshot description is not). Every fetch returned HTTP 200 on 2026-08-10. The population, enumerated:

| # | Site | Stylesheet fetched | Bytes |
|---|---|---|---|
| 1 | adactio.com (Jeremy Keith) | `/skins/default/global.css?20260115` | 19,626 |
| 2 | antirez.com (Salvatore Sanfilippo) | `/css/style.css?v=14` | 5,812 |
| 3 | brutalist-web.design | `/main.css` | 76,875 |
| 4 | danluu.com | inline `<style>` in the document | 22,070 (page) |
| 5 | ericwbailey.website | `/site.css` | 116,577 |
| 6 | fasterthanli.me (Amos Wenger) | `cdn.fasterthanli.me/dist/assets/bundle-DCh2U5HF.css` | 112,854 |
| 7 | jvns.ca (Julia Evans) | `/stylesheets/screen.css` | 15,967 |
| 8 | lucumr.pocoo.org (Armin Ronacher) | `/static/style-2025.css` | 11,548 |
| 9 | matklad.github.io (Alex Kladov) | `/css/main.css` | 7,510 |
| 10 | mtlynch.io (Michael Lynch) | `/assets/css/bundle.min.<hash>.css` | 14,972 |
| 11 | simonwillison.net | `/static/css/all.7977d7c44aeb.css` | 51,924 |
| 12 | sive.rs (Derek Sivers) | inline `<style>` in the document | 13,384 (page) |
| 13 | xeiaso.net (Xe Iaso) | `/styles.css` | 87,480 |

**This is a convenience sample, not a representative one** — selection criterion was "personal site of a widely-read engineer whose CSS is fetchable as a file," which biases toward hand-rolled static sites and against framework-built ones. Every count below is over these thirteen and nothing more. **[definitive** on what the files contain; **directional** on what "the field" does].

### 2.2 What the corpus contains — enumerated, then counted

Counts produced by `grep` over the thirteen files, then counting the named list, never by asking a layer for a total:

| Feature | Count / 13 | Files (enumerated) |
|---|---|---|
| `prefers-color-scheme: dark` block | **7** | adactio, brutalist, ericwbailey, fasterthanli, simonwillison, sivers, xeiaso |
| `prefers-reduced-motion` | **3** | ericwbailey, lucumr, xeiaso |
| `:focus-visible` | **2** | adactio, xeiaso |
| `::selection` | **1** | xeiaso |

**Three caveats that materially change the reading, all verified:**

1. **`xeiaso.net` is a Tailwind build.** Its stylesheet contains 730 occurrences of the `--tw-` custom-property prefix, and its focus/motion rules are framework utility classes. Verbatim from the fetched file, with the source's own line breaks (`styles.css:3056–3058`):

   ```css
   .focus-visible\:outline-2:focus-visible {
     outline-width: 2px;
   }
   ```

   and the reduced-motion block, which opens at `styles.css:3094` and contains several further rules (`@keyframes spin`, `.motion-reduce\:animate-\[spin_1\.5s_linear_infinite\]`, `.motion-reduce\:transition-none`, …) beyond the one excerpted here:

   ```css
   @media (prefers-reduced-motion: reduce) {

     .motion-reduce\:transform-none {
       transform: none;
     }
   ```

   [S19m] **[definitive** — exact characters, source line breaks preserved; the second block is an excerpt from a longer rule set, not a complete rule]. Its `::selection` hits are likewise vendored: all four sit at `styles.css:732–735` inside a syntax-highlighting theme, selected on `pre[class*="language-"]::selection` and `code[class*="language-"]::selection` [S19m]. **That theme is a Prism theme [derived]**, not a stated one — the string `prism` never appears in the file (`grep -oi prism` = 0 occurrences); the identification comes from the `[class*="language-"]` selector convention plus 33 occurrences of `token`, which is Prism's markup. **Its presence in all four columns above is the toolchain's care, not the author's.** Removing framework- and vendor-supplied hits, **hand-authored `::selection` in this corpus is 0/13 and hand-authored `:focus-visible` is 1/13.**
2. **Absence in the screen stylesheet is not absence from the site.** Both `jvns.ca` and `adactio.com` ship a *separate* print stylesheet linked with `media="print"` (`https://jvns.ca/stylesheets/print.css`, 480 bytes; `https://adactio.com/includes/css/print.css`, 344 bytes — both HTTP 200) [S19g, S19a]. A `@media print` count taken over screen sheets would have reported zero and been wrong. **I checked for a separate print stylesheet only on these two; the other eleven were not checked, so no print-styling tally is asserted anywhere in this paper.**
3. **Five of the thirteen appear to be minified or bundled build output** — brutalist, ericwbailey, fasterthanli, mtlynch, xeiaso, judged by hashed filenames and absent whitespace **[derived]** — so feature presence there partly reflects a generator rather than an author.

### 2.3 The two exemplars worth copying from

**Jeremy Keith (adactio.com)** — the only hand-authored `:focus-visible` in the corpus, verbatim from the fetched file:

```css
a:focus-visible {
    outline-offset: 0.25em;
    outline-width: 0.25em;
    outline-color: currentColor;
}
```

[S19a] **[definitive]**. Note what it does: it uses `currentColor` so the ring inherits the link's colour in either theme, and it offsets the ring so it does not collide with the glyphs. That is roughly six seconds of work and it is exactly the class of detail §7 argues is legible to a peer.

**Derek Sivers (sive.rs)** — the whole site is one inline stylesheet; the body rule, verbatim:

```css
body{margin:0;padding:0 20px 20px;max-width:60ch;margin-inline:auto;font-family:Georgia,serif;font-size:1.25rem;line-height:1.6;text-rendering:optimizeLegibility;-webkit-font-smoothing:antialiased;background-color:#fff1e5;color:#000;word-wrap:break-word}
```

and the link rule `a{color:#009;text-decoration-thickness:1px;text-underline-offset:3px}` [S19l] **[definitive]**. Four decisions in that block are the entire subject of §3 and §4: a real typeface rather than the UI stack, a measure expressed in `ch`, a body size well above the 16px default, and underline *offset* — an optical adjustment, not a layout one.

**Alex Kladov (matklad.github.io)**, verbatim:

```css
html {
  font-family: "EB Garamond", serif;
  font-size-adjust: ex-height 0.53;
  -webkit-text-size-adjust: 100%;
  --line-height: 1.7rem;
  line-height: var(--line-height);
}

body {
  max-width: 80ch;
  padding: 2ch;
```

[S19i] **[definitive]**. `font-size-adjust: ex-height 0.53` normalises the x-height so the fallback serif matches EB Garamond's optical size — that is a genuinely expert move and costs one line.

---

## 3. Typography — the highest-leverage variable

### 3.1 The one finding that most directly indicts the current site

The current site sets **all** its text in `--font: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif` (`style.css:16`). Two independent problems, both documented first-party.

**(a) MDN documents that the system-UI font is the wrong tool for body copy.** From MDN's `font-family` reference, fetched as raw markdown, verbatim:

> As the name implies, `system-ui` is intended to make UI elements look like native apps, and not for typesetting large paragraphs of text. It may cause the displayed typeface to be undesirable for some users—for example, the default Windows CJK font may render Latin scripts poorly, and the `lang` attribute may not affect the displayed font. Some operating systems do not allow customizing `system-ui`, while browsers generally allow customizing the `sans-serif` font family. For large paragraphs, use `sans-serif` or some other non-UI font family instead.

[S6] **[definitive** — first-party documented reference, fetched as raw `.md`]. The `-apple-system, BlinkMacSystemFont, "Segoe UI"…` stack is the hand-rolled predecessor of `system-ui` and resolves to the same faces; MDN's warning applies to the site's About paragraph and project descriptions directly.

**(b) That exact stack is a widely-deployed CSS framework's shipped default.** Tailwind CSS's `theme.css`, fetched raw from `tailwindlabs/tailwindcss` on the confirmed default branch `main`, defines:

```css
  --font-sans:
    -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', Arial,
    sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
```

[S20] **[definitive]**. The site's `--font` is the first four families of that list verbatim, then `Helvetica, Arial, sans-serif`. **The fact of the match is definitive; the inference that a peer reading the stylesheet recognises it as a framework default is [derived]** — the strength of that inference rests on how many projects ship the Tailwind theme untouched, which this paper does not measure. (The same stack is widely believed to be Bootstrap's historical `$font-family-sans-serif` as well; **I did not fetch Bootstrap's source to confirm that, so it is not asserted here.**)

### 3.2 Measure (line length) — what the evidence actually says, including where it is weaker than the folklore

The craft consensus is "45–75 characters." The evidence is more equivocal than that number's ubiquity implies, and saying so is the honest finding.

**The normative anchor.** WCAG 2.0 SC 1.4.8 *Visual Presentation* (Level AAA), from the W3C's own source HTML, verbatim:

> Width is no more than 80 characters or glyphs (40 if CJK).

and in the same criterion:

> Line spacing (leading) is at least space-and-a-half within paragraphs, and paragraph spacing is at least 1.5 times larger than the line spacing.

[S1c] **[definitive]**. Note the SC's own scoping note, verbatim: *"Content is not required to use these values. The requirement is that a mechanism is available for users to change these presentation aspects."* [S1c] — so **80ch is a documented ceiling for a AAA mechanism, not a mandate on the author's default.** Anyone citing 1.4.8 as "WCAG requires 80 characters" is misreading it.

**The empirical picture.** Mary Dyson's peer-reviewed review *How physical text layout affects reading from screen* (Behaviour & Information Technology, 2004) synthesises the line-length literature and, per its abstract, "identifies the number of characters per line as the critical variable in looking at line length" [S17]. The review reports that Dyson and Haselgrove (2001) found 55 characters per line produced better comprehension scores than 100 cpl; that in a related experiment reading was *faster* at 100 cpl than at 25 cpl; and that Bernard et al. (2002a), comparing 45, 76 and 132 cpl, "found no differences in reading times or reading efficiency" [S17]. **Confidence note:** the review was obtained as a PDF and its text layer extracted with a locally-written parser that inserts spurious intra-word spaces; the passages above are therefore reported as **normalised renderings, not verbatim quotes**, and are marked **[directional]** on wording while **[definitive]** on the existence and identity of the studies (Dyson & Haselgrove 2001 is confirmed independently via Crossref: *Int. J. Human-Computer Studies* 54, 585–612, DOI `10.1006/ijhc.2001.0458` [S18]).

**Derived conclusion:** short measure is supported for *comprehension* and preference, long measure is sometimes faster for *scanning*, and the effect sizes are small enough that studies disagree. **60–72ch for prose is a defensible default, not a scientific optimum** — and on a portfolio, where §2 of the sibling audience paper establishes that visitors scan rather than read, the case for a short measure is about *inviting* reading, not about speed. **[derived** from S1c, S17, S18].

### 3.3 Line height, scale, and hierarchy

- **Line height.** WCAG 2.1 SC 1.4.12 *Text Spacing* (AA) requires that no content or functionality is lost when a user sets "Line height (line spacing) to at least 1.5 times the font size" [S1g] **[definitive]**. The current site sets `line-height: 1.6` on `body` (`style.css:26`) — comfortably compliant, and above 1.4.8's space-and-a-half. **This is one of the current stylesheet's genuinely good decisions and should not be changed.**
- **Headings generally take a *tighter* line-height than body — enumerated over the whole corpus rather than asserted.** Method: each of the thirteen files flattened to one line, split on `}`, then every rule whose selector contains `h1`–`h6` and that declares `line-height` extracted. For the comparison value, **every** rule in the file declaring `line-height` was then listed — not just `body`/`html`, which is where the previous revision went wrong: two of the thirteen carry their prose value on a `.prose` or `.lh-copy` utility rather than on `body`. **Ten of the thirteen set an explicit heading line-height**: adactio, brutalist, ericwbailey, jvns, lucumr, matklad, mtlynch, simonwillison, sivers, xeiaso. **Three set none** (antirez [S19b] — its only `line-height` is `1.3` on `.comment pre`; danluu [S19d] — zero occurrences of the string; fasterthanli [S19f] — the file declares `line-height` in exactly four rules, none of them a heading rule: `figure.code-block code{…line-height:1.4}`, `.mathml{line-height:1.2;…}`, `.drag-handle.svelte-1ivfuwj{…line-height:1;…}`, `.editor.svelte-1lp8dgj{…line-height:1.3;…}`). **All ten set the heading value tighter than the same file's own body / prose / copy value**: adactio `h1,h2,h3,h4,h5 { line-height: 1.5; … }` vs `body { … line-height: 1.75; … }` [S19a]; ericwbailey `h1,…,h6{…line-height:var(--line-height-tighter)}` (1.2) vs `body{…line-height:var(--line-height-looser)…}` (1.6) [S19e]; jvns `article h1, … h6 { … line-height: 1.15em; }` vs `body { line-height: 1.25em; … }` [S19g]; lucumr `h1 { font-size: 52px; line-height: 56px; … }` (≈1.08) vs `div.body { … line-height: 1.7; … }` [S19h]; matklad `h1, h2, h3 { … line-height: 1em; }` vs `html { … line-height: var(--line-height); }` where `--line-height: 1.7rem` [S19i]; mtlynch `h1{…font-size:3.2rem;line-height:3.6rem;…}` (≈1.13) vs `body{…line-height:1.65em;…}` [S19j]; simonwillison `div.entry h2 { font-size: 1.4em; line-height: 1.4; … }` vs `body { … line-height: 1.45; … }` [S19k]; sivers `h1,h2,h3,h4,#articles dt,#projects dt,#topics dt,legend{line-height:1.2;font-family:v}` vs its `body` rule at `line-height:1.6` [S19l]. **The last two need a different comparison rather than a caveat, because neither file declares a `body`-element line-height at all** — the comparison is against the file's own prose/copy value instead, and both come out tighter:

  - **xeiaso** [S19m] declares `.prose { font-size: 1rem; line-height: 1.75; }` and `.prose-sm { font-size: 0.875rem; line-height: 1.7142857; }`. Every heading in both is tighter than its own root: under `.prose`, h1 `1.1111111`, h2 `1.3333333`, h3 `1.6`, h4 `1.5` — all below 1.75; under `.prose-sm`, h1 `1.2`, h2 `1.4`, h3 `1.5555556`, h4 `1.4285714` — all below 1.7142857.
  - **brutalist** [S19c] is a Tachyons build, and its heading utility has a **matched copy utility**: `.nested-headline-line-height h1,…,h6{line-height:1.25}` against `.nested-copy-line-height p,…,ul,…,ol{line-height:1.5}`, with the standalone pair `.lh-title{line-height:1.25}` / `.lh-copy{line-height:1.5}` (and `-ns`/`-m`/`-l` breakpoint variants of each) saying the same thing. 1.25 is tighter than 1.5. **What is true about brutalist is narrower than "unresolved":** the file has **no `body{line-height}` rule whatsoever** — `body` appears only inside a large reset selector list that declares no line-height — so its only root-level value is the normalize.css `html{line-height:1.15}` reset, which is *looser* than the heading utility. Compared against a reset it looks like a counterexample; compared against the file's own copy value, which is the like-for-like comparison, it is not one.

  **An earlier revision of this bullet called these two "unresolved" and asserted that neither file declared anything to compare against. Both assertions were false — `.prose{line-height:1.75}` and `.lh-copy{line-height:1.5}` are both in the files — and they carried a `[definitive]` mark, which is the worse half of the error. The corrected split is ten of ten, zero unresolved.** **Form of the CSS spans in this bullet, stated so nobody mistakes them for verbatim.** The extraction pipeline flattened each file's newlines and collapsed runs of whitespace before splitting on `}`, so the rules above are **NORMALISED renderings** — the declarations, values and selectors are the file's, the line breaks and internal spacing are not. Two examples of the difference: adactio's rule occupies four lines in the source (`global.css:201–204`), and lucumr's `h1` selector is padded out with spaces for column alignment. Spans carrying an ellipsis are additionally abbreviated. **Exactly three spans in this bullet ARE exact-characters-as-returned**, each because its source is a single line and each confirmed at `grep -F` match count 1: the sivers rule, and brutalist's `.lh-title{line-height:1.25}` and `.lh-copy{line-height:1.5}`. Every other span here should be read as a faithful summary of a rule, not a quotation of one. **The pattern is unanimous among the files that express an opinion — and the hedge belongs on different ground than an exception, because there is no exception.** What keeps this a convention rather than a rule is that **three of the thirteen set no heading line-height at all**, so the practice is not universal *in the corpus*; and that these thirteen are a convenience sample selected for fetchability (§2.1), so ten-for-ten here does not license a claim about the field. The current site never sets a heading line-height at all, so the 3.6rem hero name inherits `1.6` — **a defect at display sizes** (it will only show when the name wraps, which it does not at one line, so the impact today is latent rather than active). **[definitive** on the enumerated file contents and on the ten-set-one / three-set-none / ten-of-ten-tighter split, each reproducible from the method above; **normalised** on the CSS spans as flagged; **derived** on the convention reading and on the defect reading].
- **Modular scale.** No first-party or peer-reviewed source prescribes a ratio; this is craft convention. What *is* documented is that the current site's `clamp(2.4rem, 6vw, 3.6rem)` hero (`style.css:34`) is the only fluid step, while every other size is a fixed `rem`/unitless value — so the site has a *jump*, not a scale. **[derived** from reading `style.css`].
- **Variable fonts are now mainstream, and self-hosting is the majority practice.** The HTTP Archive Web Almanac 2025 Fonts chapter reports, in its own featured statistics, "72%" of "Websites self-hosting fonts in some capacity" and "40%" of "Websites using variable fonts" [S12] **[definitive** — measured crawl, raw `.md` from the almanac repo]. `font-variation-settings` is Baseline **newly available** since 2018-09-05 and Baseline **widely available** since 2021-03-05 [S8] (re-queried 2026-08-10: `status: widely`, `low_date: 2018-09-05`, `high_date: 2021-03-05`). The chapter also reports web fonts on "roughly 88% of websites" in 2025, with "around 12% of sites" still on system defaults [S12].

### 3.4 Font loading, if a web font is adopted

`font-display` is Baseline **widely available** since 2022-07-15 (newly available 2020-01-15) [S8] — re-queried 2026-08-10. The Almanac 2025 Fonts chapter reports `font-display: swap` "appears on about 49.6% of desktop pages and 50.1% of mobile pages in our 2025 crawl" and that "about 70% of real-world `font-display: block` usage comes from icon font styles" [S12] **[definitive]**. Sivers demonstrates the whole pattern in one line: `@font-face {font-family:'v';src:url('https://m.sive.rs/v.woff2') format('woff2');font-display: swap;}` [S19l].

---

## 4. Layout and spacing

### 4.1 Content width and the single-column question

The corpus is near-unanimous on single-column prose with an explicit cap, and the caps cluster:

| Site | Declared cap | Unit |
|---|---|---|
| matklad | `max-width: 80ch` (body), `55ch` (a narrower element) | `ch` [S19i] |
| sivers | `max-width:60ch` | `ch` [S19l] |
| xeiaso | `80ch`, `65ch`, `48rem` present | mixed [S19m] |
| jvns | `max-width: 45em` | `em` [S19g] |
| adactio | `60em`, `89em` | `em` [S19a] |
| lucumr | `max-width: 940px` | `px` [S19h] |
| danluu | none | — [S19d] |

**[definitive** on what each file declares]. Two observations that matter: (1) the sites that care most about reading express the cap in `ch` or `em`, which ties the measure to the *typeface*, not to the *viewport* — a `px` cap silently changes the measure whenever the font-size does; (2) the current site's `--maxw: 900px` (`style.css:15`) is a `px` cap, and it is applied to the *whole page container*, while the prose gets its own separate caps (`.hero__intro { max-width: 58ch }` at `style.css:43` and `.about p { max-width: 65ch }` at `style.css:58`). **The site already has the right instinct in two places and the wrong unit in the third.** **[derived]**.

### 4.2 Vertical rhythm and spacing scale

Enumerated, not estimated. Method: extract every `padding` / `margin` / `gap` declaration (including the longhand `-top`/`-bottom`/`-left`/`-right` forms) from `style.css`, take the value list of each, and pull every non-zero `px` literal — deliberately excluding `border-radius`, which is not spacing. That yields **24 spacing occurrences at 20 distinct values**:

`2px`, `3px`, `6px`, `8px`, `9px`, `10px`, `12px`, `14px`, `16px`, `18px`, `20px`, `22px`, `24px`, `28px`, `36px`, `40px`, `52px`, `56px`, `64px`, `96px`

spread across **20 declarations on 17 source lines** — `.container` `padding: 0 24px` (`style.css:29`); `.hero` `padding: 96px 0 56px` (32); `.hero__tagline` `margin-top: 10px` (42); `.hero__intro` `margin-top: 20px` (43); `.hero__links` `gap: 14px; margin-top: 28px` (44); `.hero__links a` `padding: 8px 16px` (47); `section` `padding: 36px 0` (53); `.section__title` `margin-bottom: 22px` (56); `.grid` `gap: 18px` (64); `.card` `padding: 22px` (70) and `gap: 12px` (71); `.card__head` `gap: 10px` (75); `.card__tags` `gap: 6px` (79); `.tag` `padding: 3px 9px` (83); `.card__links` `gap: 14px; margin-top: 2px` (85); `.footer` `padding: 52px 0; margin-top: 24px` (91); and the `@media` hero override `padding: 64px 0 40px` (97). **There is no scale** — twenty unrelated magic numbers. Ten of them (8, 9, 10, 12, 14, 16, 18, 20, 22, 24) form an unbroken run in which every consecutive gap is two pixels or less, and two more (2, 3) sit one pixel apart. **[definitive** on the enumeration, which is reproducible against `style.css` at `HEAD`; **derived** on "there is no scale," which is this paper's reading of the list]. Nothing normative governs this; the argument is that a peer reading `style.css` (which is the *point* of a hand-built site — the source is part of the artifact) sees either a system or a pile. This is the clearest example in the paper of a change that costs nothing and is only visible to the audience that matters.

### 4.3 Responsive strategy

Container queries reached Baseline **newly available** on 2023-02-14 and Baseline **widely available** — the milestone the API records in its `high_date` field — on 2025-08-14 [S8] **[definitive]** (re-queried 2026-08-10: `status: widely`, `low_date: 2023-02-14`, `high_date: 2025-08-14`; "widely available" and the `high_date` milestone are the same thing, and the earlier phrasing here wrongly treated them as two). So component-level responsiveness is now safe without a build step. For a single-column site with one auto-fill grid, however, the current `grid-template-columns: repeat(auto-fill, minmax(260px, 1fr))` (`style.css:63`) is already the correct intrinsic solution and needs no media query at all — the one `@media (max-width: 560px)` rule in the file (`style.css:97`) adjusts only hero padding. **This is another thing the current site gets right.** **[derived]**.

---

## 5. Colour and dark mode

### 5.1 The normative floor, and where the current palette sits

WCAG 2.0 SC 1.4.3 *Contrast (Minimum)* (AA), verbatim from the W3C source:

> The visual presentation of text and images of text has a contrast ratio of at least 4.5:1

with the documented exception that "Large-scale text and images of large-scale text have a contrast ratio of at least 3:1" [S1a] **[definitive]**. SC 1.4.11 *Non-text Contrast* (AA) extends 3:1 to "Visual information required to identify user interface components and states" [S1f] **[definitive]**.

Applying the WCAG-defined relative-luminance formula to the hex values in `style.css` — **this table is [derived]: the formula is definitive, the computation is this paper's**:

| Pair | Ratio | Verdict |
|---|---|---|
| `--text #e7e9ee` on `--bg #0e0f13` | 15.77:1 | passes AA and AAA |
| `--muted #9aa0ad` on `--bg` | 7.30:1 | passes AA and AAA |
| `--muted #9aa0ad` on `--surface #16181f` | 6.76:1 | passes AA and AAA |
| `--accent #5b8cff` on `--bg` | 6.06:1 | passes AA |
| `--accent-2 #7c5cff` on `--bg` | **4.41:1** | **fails 1.4.3 AA for normal-size text**; passes the 3:1 large-text exception |
| `.tag` accent on its composite background `rgba(91,140,255,.10)` over `--surface` | 4.90:1 | passes AA |
| `--border #262a35` on `--bg` | **1.34:1** | **fails 1.4.11 3:1** where the border is the only thing identifying a control |

The last row is a real, currently-shipping defect, not a hypothetical: `.hero__links a` (`style.css:45–49`) is a link styled as a pill button whose *only* visual boundary is `1px solid var(--border)` at 1.34:1. **[derived** — the ratio from the formula, the "only boundary" from reading the rule]. `--accent-2` is used solely inside the hero's `linear-gradient` text clip at ≥2.4rem, so it currently rides the large-text exception; the finding is that **the token is unsafe for any other use** and nothing in the stylesheet says so.

### 5.2 Dark-first is a measurably worse default for text, and this is the paper's least comfortable finding

Two peer-reviewed studies, abstracts fetched from PubMed (raw XML), both verbatim:

Buchner & Baumgartner, *Ergonomics*, 2007:

> In a series of experiments, proofreading performance was consistently better with positive polarity (dark text on light background) than with negative polarity displays (light text on dark background). This positive polarity advantage was independent of ambient lighting (darkness vs. typical office illumination) and of chromaticity (black and white vs. blue and yellow).

[S15] **[definitive** — peer-reviewed, first-party abstract, exact characters].

Piepenbrock et al., *Human Factors*, 2014:

> A positive polarity advantage was observed in proofreading performance. Importantly, the positive polarity advantage linearly increased with decreasing character size.

and the authors' own applied recommendation:

> Especially with small font sizes, negative polarity displays should be avoided.

[S16] **[definitive]**.

**What this does and does not license.** It does *not* say "don't ship dark mode" — it measures proofreading accuracy, not preference, and users demonstrably choose dark themes. What it does license, **[derived** from S15 + S16]:

1. **A dark theme must not also be a small-type theme.** The disadvantage grows linearly as characters shrink, so the current site's `0.78rem` card years, `0.72rem` tags, `0.85rem` card links and `0.85rem` footer (`style.css` lines 77, 81, 86, 92) sit exactly where the evidence says negative polarity hurts most.
2. **Respecting `prefers-color-scheme` is better-supported by evidence than picking a side.** `prefers-color-scheme` has been Baseline **widely available since 2022-07-15** (newly available 2020-01-15) [S8] — re-queried 2026-08-10 — MDN documents it as detecting "if a user has requested light or dark color themes" set "through an operating system setting (e.g., light or dark mode) or a user agent setting" [S3] **[definitive]**, and the current site honours neither direction — it is unconditionally dark.
3. **Avoid the tested extreme.** Both studies used black-on-white vs white-on-black. `#ffffff` on `#000000` computes to 21.00:1 **[derived]** — the maximum possible ratio and precisely the negative-polarity condition that lost. The current site already avoids this (`#e7e9ee` on `#0e0f13` = 15.77:1), which is correct and worth preserving as an explicit, commented decision rather than an accident.

### 5.3 `color-scheme` is the half of dark mode that people forget

MDN's `color-scheme` reference, verbatim from raw `.md`:

> The **`color-scheme`** CSS property allows an element to indicate which color schemes it can comfortably be rendered in. User agents change the following aspects of the UI chrome to match the used color scheme:
>
> - The color of the canvas surface.
> - The default colors of scrollbars and other interaction UI.
> - The default colors of form controls.
> - The default colors of other browser-provided UI, such as "spellcheck" underlines.

and, on the division of labour:

> Component authors must use the [`prefers-color-scheme`](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/At-rules/@media/prefers-color-scheme) media feature to support the color schemes on the rest of the elements.

[S4] **[definitive]**. The current site declares no `color-scheme`, which means its scrollbar and form-control chrome render light against a `#0e0f13` page.

**How rare the declaration actually is in the corpus — and a correction to the method.** An earlier pass counted this with `grep -i "color-scheme *:"`, which is wrong: that pattern is a substring of `prefers-color-scheme:`, so it conflates the CSS *property* with the *media feature* and inflates the tally. Re-run 2026-08-10 with a pattern that requires the property to be preceded by a non-hyphen, non-letter character — `grep -oiE "(^|[^-a-z])color-scheme[[:space:]]*:"` — over all thirteen files, then counting the enumerated list:

| Site | `color-scheme:` property | `prefers-color-scheme:` media feature |
|---|---|---|
| adactio | **1** | 1 |
| fasterthanli | **2** | 3 |
| lucumr | **3** | 0 |
| brutalist | 0 | 2 |
| ericwbailey | 0 | 29 |
| simonwillison | 0 | 3 |
| sivers | 0 | 1 |
| xeiaso | 0 | 4 |
| antirez, danluu, jvns, matklad, mtlynch | 0 | 0 |

**Three of the thirteen declare the `color-scheme` property** — adactio, fasterthanli, lucumr [S19a, S19f, S19h] — not eight. **A fourth site, danluu**, ships the equivalent as a `<meta name=color-scheme content="light dark">` tag with no CSS at all [S19d]. **[definitive** — enumerated per file and counted]. **The correction strengthens the finding rather than weakening it:** the half of dark mode that governs browser chrome is declared by under a quarter of this corpus, which makes it a sharper differentiator than the original tally implied, and it is why §7's craft-tell row and §10.5 item 2 rank it where they do. Note also that lucumr is the one site that declares `color-scheme` while shipping *no* `prefers-color-scheme` block at all — a reminder that the two are independent decisions.

### 5.4 What the wider web does — measured, not guessed

The Web Almanac 2025 Accessibility chapter reports `prefers-color-scheme` usage at "about 13% on both platforms" and `prefers-reduced-motion` at "about half of both desktop (49.99%) and mobile (50.55%) pages" [S11] **[definitive** — measured crawl, raw `.md`]. The chapter's own summary line: "Browsers and operating systems increasingly support light, dark, and high-contrast modes. Users have more control now. Most sites still don't respond to these preferences though." [S11]. Against that baseline, honouring both preference queries puts a site in a genuine minority.

---

## 6. Motion and interaction

### 6.1 The accessibility floor is documented, and it is not optional

MDN, verbatim from raw `.md`:

> The **`prefers-reduced-motion`** CSS media feature is used to detect if a user has enabled a setting on their device to minimize the amount of non-essential motion. The setting is used to convey to the browser on the device that the user prefers an interface that removes, reduces, or replaces motion-based animations.

and:

> Such animations can trigger discomfort for those with vestibular motion disorders. Animations such as scaling or panning large objects can be vestibular motion triggers.

[S2] **[definitive]**. WCAG 2.1 SC 2.3.3 *Animation from Interactions* (Level AAA), verbatim from the W3C source:

> Motion animation triggered by interaction can be disabled, unless the animation is essential to the functionality or the information being conveyed.

[S1h] **[definitive]**. Note the level: **AAA**, so honouring it is above the usual AA bar — which is exactly why it functions as a craft signal rather than a compliance chore.

**Where scroll-linked motion sits in the normative material — corrected sourcing.** MDN's `prefers-reduced-motion` page [S2] names exactly one trigger category ("scaling or panning large objects") and **never mentions scrolling at all**: `grep -in "scroll"` and `grep -in "smooth"` over the fetched raw `.md` both return zero hits. An earlier pass in this paper attributed a smooth-scrolling trigger claim to [S2]; that attribution was wrong and is withdrawn. The claim *does* have a first-party source, just a different one — W3C's **Understanding SC 2.3.3**, fetched as raw HTML from `w3c/wcag` and tag-stripped:

> The intent of this success criterion is to allow users to prevent animation from being displayed on web pages. Some users experience distraction or nausea from animated content. For example, if scrolling a page causes elements to move (other than the essential movement associated with scrolling) it can trigger vestibular disorders.

and, on the boundary:

> Moving new content into the viewport is essential for scrolling. The user controls the essential scrolling movement so it is allowed. Only add non-essential animation to the scrolling interaction in a responsible way.

[S1j] **[definitive** on what the document says — first-party, published, versioned; note that Understanding documents are W3C *supporting* material, non-normative, unlike the success criteria themselves]. **That `scroll-behavior: smooth` falls in the "non-essential animation added to the scrolling interaction" class is this paper's reading, not the document's words** — it animates a jump the user requested but did not themselves scroll — and is marked **[derived** from S1j]. **No source in this paper ranks motion triggers by frequency**, so the earlier "single most commonly cited motion trigger" superlative is withdrawn as unsourced rather than re-sourced.

**Current-site status, verified by grep over all three source files: `prefers-reduced-motion` appears 0 times.** The site ships `html { scroll-behavior: smooth; }` unconditionally (`style.css:21`), plus `transition` on `.hero__links a` (`.15s`), `.card` (`.15s`), and `transform: translateY(-1px)` / `translateY(-3px)` hover lifts (`style.css:48, 50, 72, 74`). **Every one of those is interaction-triggered motion with no escape hatch, which is what SC 2.3.3 [S1h] addresses regardless of severity.** On severity the paper should be honest rather than convenient: MDN's named category is "scaling or panning large objects" [S2], and a 1–3px translate on a card is at the *far mild end* of that — it is not obviously what MDN has in mind, and this paper does not claim it is. The smooth scroll is the stronger case, per §2.3.3's Understanding document [S1j]. **[definitive** on the file contents; **derived**, and deliberately hedged, on the classification].

### 6.2 What restrained motion buys and what it costs

There is no measured evidence in this paper's sources that hover micro-transitions improve any outcome; the claim that they read as polish is **[unverified]** and I am not going to launder it. What *is* documented is the cost side: every animated property is a `prefers-reduced-motion` obligation, and the Almanac's 50% adoption figure [S11] means users have a reasonable expectation that it is honoured. **[derived]**: the defensible policy is *few animated properties, all of them opacity/colour rather than transform, all of them inside a motion query* — the cheapest position that is also the most conformant.

### 6.3 Scroll-driven effects — **[HIGH-VOLATILITY SECTION, re-verify every refresh]**

Baseline status via the Web Platform Status API (`api.webstatus.dev/v1/features/<id>`), queried 2026-08-10, **[definitive** — JSON API response]:

| Feature | Baseline | Newly-available date |
|---|---|---|
| Scroll-driven animations | **limited** | — |
| `text-wrap: pretty` | **limited** | — |
| `accent-color` | **limited** | — |
| Anchor positioning | **limited** | — |
| View transitions | newly | 2025-10-14 |
| `@starting-style` | newly | 2024-08-06 |
| `text-wrap: balance` | newly | 2024-05-13 |
| `light-dark()` | newly | 2024-05-13 |
| `:has()` | widely | 2023-12-19 |
| Subgrid | widely | 2023-09-15 |
| Container queries | widely | 2023-02-14 |
| `:focus-visible` | widely | 2022-03-14 |
| `scroll-behavior` | widely | 2022-03-14 |
| `prefers-reduced-motion` / `prefers-color-scheme` | widely | 2020-01-15 |
| `font-variation-settings` | widely | 2018-09-05 |

**Read the date column carefully — this is the paper's most easily misread table.** The API returns *two* dates per feature: `low_date`, the day the last core browser shipped it, which is when the feature becomes Baseline **newly available**; and `high_date`, the field recording when it becomes Baseline **widely available**. (Note that `baseline.status` only ever reads `limited`, `newly` or `widely` — `high` is a field name in this API, never a status value, and this paper should not be read as implying a third status.) The column above is `low_date` throughout, including on rows whose current status is `widely` — so "widely | 2018-09-05" means *newly available in 2018, widely available later*, not *widely available in 2018*. Prose elsewhere in this paper that says "widely available since \<date\>" quotes the `high_date` from the same 2026-08-10 query: `font-variation-settings` 2021-03-05, `font-display` 2022-07-15, `prefers-color-scheme` and `prefers-reduced-motion` 2022-07-15, container queries 2025-08-14, `:focus-visible` 2024-09-14. **[definitive** — both fields from the same JSON responses]. (An earlier revision of this paper collapsed the two in four prose sentences, dating "widely available" to the newly-available day; those are corrected.)

**Reading:** scroll-driven animation — the single most fashionable 2025–26 effect — is *still* Baseline limited, meaning a scroll-linked design is a progressive enhancement with a mandatory static fallback, not a foundation. `text-wrap: balance` is safe for headlines; `text-wrap: pretty` is not yet. CSS Text Level 4 defines the grammar as `text-wrap-style: auto | balance | stable | pretty | avoid-orphans` and notes the property "selects between several approaches for wrapping lines, trading off between speed, quality and style of layout, or stability" [S7] **[definitive** — Editor's Draft; the spec's own status caveat applies].

---

## 7. Craft tells versus template tells

**Framing, stated honestly up front:** the *existence* of each item below is definitive (each is a documented CSS feature or a fact verified in a fetched file). The claim that a given item *reads as* craft or as template to a senior engineer is **[derived]** at best and **[unverified]** where noted — I found no study measuring what engineers infer from a site's visual design (§12, gap G3). What saves the table from being pure taste is that the left column is mostly **conformance items with published bars**, which can be checked rather than debated.

| Reads as hand-built care | Evidence class | Reads as a starter kit | Evidence class |
|---|---|---|---|
| Hand-authored `:focus-visible` with `outline-offset`, colour from `currentColor` [S19a, S5] | derived from a fetched exemplar; 1/13 in corpus | Framework default font stack shipped unchanged [S20] | **definitive that the default exists and matches**; derived that it is noticed |
| `prefers-reduced-motion` wrapping every transition [S2, S1h] | AAA success criterion — checkable | Unconditional `scroll-behavior: smooth` | derived |
| Both `prefers-color-scheme` branches genuinely designed, plus a `color-scheme` declaration [S3, S4] | definitive requirement, derived signal | One theme, no preference query — 87% of the web per [S11] | definitive baseline |
| A real print stylesheet [S19a, S19g] | verified present on 2 sites; the other 11 unchecked (§2.2 caveat 2) | Unmodified component-library spacing | derived |
| Measure expressed in `ch`/`em`, not `px` [S19i, S19l] | derived from exemplars | 20 distinct `px` spacing values with no scale | enumeration **definitive** for this site; "no scale" **derived** (§4.2) |
| Optical adjustments: `text-underline-offset`, `text-decoration-thickness`, `font-size-adjust` [S19l, S19i] | definitive that they exist; derived signal | Gradient-clipped headline text | derived; and see the contrast note in §5.1 |
| Non-text contrast honoured on control boundaries [S1f] | AA criterion — checkable | Stock glassmorphism / `backdrop-filter` panels | **unverified** — taste claim, stated as such |
| Considered empty/error states and a real 404 | **unverified** — not checked on any corpus site | Decorative AI-generated imagery | **unverified** — no source found (§12, G4) |
| `::selection` matched to the palette | 0/13 hand-authored in corpus — a genuine differentiator | Recognisable default palette tokens: Tailwind ships **26** colour families, enumerated from `theme.css` [S20] | **definitive** that they exist |

**The sharpest single tell, and it applies to this site:** its typeface *is* the framework default (§3.1) and its palette is two saturated blues in a gradient — a combination that a peer can recognise without opening devtools. **The site's plainness is not what makes it read generic; its two decorations are.** **[derived]**.

**The counter-tell that keeps this honest, enumerated rather than asserted:** `xeiaso.net`, built with Tailwind, ships focus-visible, reduced-motion and selection styling *because* the framework does. Meanwhile — taking "hand-rolled" as the thirteen minus the five build-output sites named in §2.2 caveat 3, which leaves **eight**: adactio, antirez, danluu, jvns, lucumr, matklad, simonwillison, sivers — **six of those eight ship none of `:focus-visible`, `prefers-reduced-motion` or `::selection`: antirez, danluu, jvns, matklad, simonwillison, sivers.** The two exceptions each ship exactly one: adactio has `:focus-visible`, lucumr has `prefers-reduced-motion`. (Method: `grep -o` for each of the three strings over each fetched file, listing the sites and counting the list.) **A framework build can be more conformant than a hand-built one**, and any claim that hand-built ⇒ crafted is falsified by this corpus. **[definitive** on the per-file grep results; **[derived]** on the falsification, which is this paper's inference across the thirteen files rather than a statement any of them makes].

---

## 8. Performance and accessibility as craft signals

*(Scope note: the pool's topic 7, "The site as its own artifact," owns this in depth. This section covers only the design-relevant half — the thresholds a visual decision can violate — and hands off the rest.)*

### 8.1 Core Web Vitals — the numbers a design decision can break

From the `web-vitals` library's own README (raw `.md`, first-party Google), the shipped constants, verbatim:

```ts
console.log(CLSThresholds); // [ 0.1, 0.25 ]
console.log(INPThresholds); // [ 200, 500 ]
console.log(LCPThresholds); // [ 2500, 4000 ]
```

[S10] **[definitive]**. web.dev's Core Web Vitals article states the same targets in prose — "LCP should occur within 2.5 seconds of when the page first starts loading", "pages should have a INP of 200 milliseconds or less", "pages should maintain a CLS of 0.1. or less" — and adds the measurement rule: "a good threshold to measure is the 75th percentile of page loads, segmented across mobile and desktop devices" [S9]. **Confidence, split by what corroborates what:** the three threshold *numbers* are **[definitive]**, because [S10] — the library's own shipped constants, fetched as raw `.md` from `GoogleChrome/web-vitals` — states them independently, and §3 admits a lower-confidence statement to definitive when a documented artifact corroborates it. The **75th-percentile measurement rule has no raw corroboration in this paper's sources** and rests on [S9] alone; [S9] exists only as a rendered HTML page, fetched via `curl` and tag-stripped, so it is a reduced-confidence source class under §3 and that rule is marked **[directional]** accordingly. (The tag-stripped spans do reproduce the page's characters faithfully — including its own typo, "a CLS of 0.1. or less" — but fidelity of transcription is not the same axis as reliability of the retrieval channel.)

**Design relevance, [derived]:** the only two ways this site can plausibly fail these are (a) adding a web font without `font-display` and without a metric-matched fallback → CLS and LCP, and (b) adding above-the-fold imagery without intrinsic dimensions → CLS. Both are avoidable by construction. **A 215-line no-build static site starts from a near-unbeatable position and can only lose it by adding things.**

### 8.2 Accessibility — the bars, and how rare meeting them is

WCAG 2.2 adds **nine** new success criteria, enumerated from the `guidelines/sc/22/` directory of `w3c/wcag` on the confirmed default branch `main`: `accessible-authentication-enhanced`, `accessible-authentication-minimum`, `consistent-help`, `dragging-movements`, `focus-appearance`, `focus-not-obscured-enhanced`, `focus-not-obscured-minimum`, `redundant-entry`, `target-size-minimum` [S1] **[definitive** — enumerated file list, counted]. Three bear on this site:

- **2.5.8 Target Size (Minimum), AA** — "The size of the target for pointer inputs is at least 24 by 24 CSS pixels", with an exception for targets "in a sentence or its size is otherwise constrained by the line-height of non-target text" [S1d] **[definitive]**. The hero pills are `padding: 8px 16px` on `0.95rem` text with the inherited `line-height: 1.6` (`style.css:26, 47`), computing to ≈42 CSS pixels tall (15.2 × 1.6 + 16 padding + 2 border) — comfortably above the floor **[derived]**. **The `.card__links` at `0.85rem` with no padding are the open question**: they sit in a flex row rather than "in a sentence," so it is not clear the Inline exception applies, and their height is ≈22px. **This is flagged as a check item (§13), not resolved here.**
- **2.4.11 Focus Not Obscured (Minimum), AA** — "When a user interface component receives keyboard focus, the component is not entirely hidden due to author-created content" [S1e] **[definitive]**. No sticky elements on this site, so it passes trivially — worth knowing before adding a sticky header.
- **2.4.13 Focus Appearance, AAA** — the focus indicator must be "at least as large as the area of a 2 CSS pixel thick perimeter of the unfocused component" and have "a contrast ratio of at least 3:1 between the same pixels in the focused and unfocused states" [S1i] **[definitive]**. The site defines no focus styles at all, so it inherits the UA default — which passes 2.4.7 but forfeits the AAA target and, more importantly, forfeits the *signal*.

**How rare compliance actually is** — WebAIM Million, February 2026, eighth annual run over the top 1,000,000 home pages:

> Low contrast text, below the WCAG 2 AA thresholds, was found on 83.9% of home pages, an increase from 79.1% in 2025. This was the most commonly-detected accessibility issue.

[S14] **[directional** on source class — and the reasoning matters. The transcription is not in doubt: the page was `curl`-fetched and tag-stripped, the span above re-verified byte-exact under `grep -F` on 2026-08-10, and the methodology is published on the same page: "The WAVE accessibility engine was used to analyze the rendered DOM (Document Object Model) of all pages after scripting and styles were applied" [S14]. But WebAIM publishes this figure *only* as a rendered page — there is no raw or API form of it — and unlike the CWV thresholds it has **no independent first-party corroboration** in this paper's sources. §3 says claims from a rendered page are marked at reduced confidence; with nothing to corroborate it, the 83.9% figure takes that reduction. A consumer should treat it as a well-sourced industry statistic, not as a spec-grade fact.] The Web Almanac 2025 corroborates from an independent crawl: "only 31% of mobile sites currently meet minimum color contrast requirements" [S11], and — the statistic most relevant to §7 — "In 2025, 67% of sites explicitly removed default focus outlines, up 14% from 2024", against `:focus-visible` adoption "at about one-quarter of pages (25% on desktop and 24% on mobile)" [S11] **[definitive]**.

**Derived consequence:** meeting AA contrast on every token and shipping a designed `:focus-visible` puts the site in a minority measured at roughly one-in-six and one-in-four respectively, by two independent crawls. (The one-in-six inherits [S14]'s **directional** source class; the Almanac's independently-crawled 31%-of-mobile-sites figure and the `:focus-visible` quarter are **definitive** [S11], and the conclusion survives on the Almanac alone.) **That is the cheapest available signal of care on the whole list, and it is checkable rather than arguable.**

**Handoff to topic 7 ("The site as its own artifact"):** semantic HTML structure, landmark regions, heading order, `tabindex` policy, image/alt strategy, and actual field measurement of CWV are that paper's, not this one's. This paper stops at the boundary where a *visual* decision creates a *conformance* obligation.

---

## 9. Comparative landscape — the four visual strategies available

Fairly stated, with the case FOR each.

**(A) Radical minimalism (the danluu position).** Near-zero CSS, no colour system, browser defaults. *For:* unfakeable confidence; zero maintenance; fastest possible page; immune to dating. *Against:* provides no evidence of visual judgement, and for a subject who also sells to clients (audience 3), risks reading as indifference rather than restraint **[derived]**. *Evidence:* [S19d].

**(B) Typographic minimalism (the sivers / matklad position).** One good typeface, one measure, one accent, essentially no components. *For:* every corpus site that reads as expert is here; achievable in ~120 lines of hand-written CSS; ages extremely well; the source itself is the craft artifact. *Against:* looks similar to every other site in this class; offers little differentiation. *Evidence:* [S19l, S19i].

**(C) Systematised restraint (the adactio / ericwbailey position).** A token system, both colour schemes, designed focus and print styles, a few components. *For:* the only strategy where the conformance signal in §8.2 is fully realised; supports growth to case-study pages. *Against:* more code; more places to be inconsistent. *Evidence:* [S19a, S19e].

**(D) Designed product surface (framework/template territory).** Component library, motion system, scroll effects, imagery. *For:* highest visual ceiling; expected in some client markets. *Against:* **directly contradicts this repo's architecture** — a component library or motion framework means a build step, and `CLAUDE.md` treats "no build step, no framework" as identity. It is also the strategy in which template tells are most likely, and where the fashionable effect (scroll-driven animation) is still Baseline *limited* [S8]. **If pursued, the cost must be stated as: a build step, a dependency tree, and a container image that no longer builds from three files.**

**Derived recommendation: (C), executed with (B)'s restraint.** It is the only option that converts the subject's actual thesis — *this person builds things correctly* — into checkable evidence, and it is fully achievable in hand-written CSS with no build step.

---

## 10. The visual direction for this site — the buildable specification

Every item names the evidence behind it. Items marked **[fix]** address a defect verified in the current file; **[signal]** items are the craft tells from §7; **[taste]** items are explicitly acknowledged as judgement, not evidence.

### 10.1 Type

```css
/* Body: a reading face, NOT the UI stack — MDN [S6] documents system-ui as
   unsuitable for large paragraphs, and this exact stack is Tailwind's default [S20]. */
--font-body:  ui-serif, Georgia, "Iowan Old Style", "Times New Roman", serif;
--font-ui:    system-ui, -apple-system, "Segoe UI", sans-serif;  /* nav/labels ONLY */
--font-mono:  ui-monospace, "SF Mono", "JetBrains Mono", monospace;
```

- **[fix]** Body copy moves off the UI stack [S6]. A serif is the higher-differentiation choice and is what the two most expert corpus sites do (sivers `Georgia,serif` [S19l]; matklad `"EB Garamond", serif` [S19i]). **[taste]** — if a serif is unwanted, the equivalent fix is *any* deliberate non-default sans, self-hosted; the non-negotiable part is "not the framework default."
- **Zero web fonts is a legitimate and recommended first move.** `ui-serif`/`Georgia` costs 0 bytes, 0 requests, and cannot regress LCP or CLS [S9, S10]. If a web font is later adopted: self-host (72% of sites do [S12]), WOFF2, `font-display: swap` (~50% of pages [S12]), subset, and consider `font-size-adjust: ex-height <n>` to metric-match the fallback [S19i].
- **Scale** — one ratio, six steps, fluid only at the top:
  ```css
  --step--1: 0.875rem;  --step-0: 1.0625rem;  --step-1: 1.25rem;
  --step-2: 1.5rem;     --step-3: 1.875rem;
  --step-4: clamp(2.25rem, 1.6rem + 2.6vw, 3.25rem);
  ```
  **[fix]** — replaces the current arrangement, which is **one `clamp()` step plus ten fixed-`rem` `font-size` declarations at eight distinct values** (§3.3). Enumerated from `style.css` on 2026-08-10 by extracting every `font-size` declaration, discarding the single `clamp()`, and listing the remaining `rem` literals: `0.72` (`.tag`, L81), `0.78` (`.card__year`, L77), `0.8` (`.section__title`, L55), `0.85` (`.card__links a`, L86 and `.footer`, L92), `0.95` (`.hero__links a`, L46 and `.card__desc`, L78), `1.05` (`.hero__tagline`, L42), `1.12` (`.hero__intro`, L43), `1.15` (`.card__title`, L76) — ten declarations, eight distinct sizes, two of them (`0.85`, `0.95`) used twice. **[definitive** on the enumeration]. Base at `1.0625rem` rather than `1rem` because §5.2's polarity evidence says small type is where a dark theme loses most [S16].
- **[fix]** Nothing below `--step--1` (0.875rem/14px). The current `0.72rem` tags and `0.78rem` years are the exact condition Piepenbrock et al. warn against on negative polarity [S16].
- **Line heights:** `1.6` for prose (keep — already compliant with 1.4.12 [S1g] and 1.4.8 [S1c]), `1.15` for `--step-3`/`--step-4` headings. **[fix]** — headings currently inherit 1.6 (§3.3).
- **[signal]** `h1, h2 { text-wrap: balance; }` — Baseline newly available since 2024-05-13 [S8], degrades to nothing. Do **not** use `text-wrap: pretty` yet: Baseline *limited* [S8].

### 10.2 Colour — both schemes, real, with a stated floor

```css
:root {
  color-scheme: light dark;          /* [S4] — fixes scrollbar/control chrome */
  --rule:    /* decorative hairline — no contrast obligation */;
  --edge:    /* control boundary — MUST be >= 3:1 vs its background [S1f] */;
}
```

Concrete tokens, with ratios computed by this paper from the WCAG formula **[derived]**:

| Token | Light | ratio vs bg | Dark | ratio vs bg |
|---|---|---|---|---|
| `--bg` | `#fbfaf8` | — | `#101216` | — |
| `--surface` | `#f3f1ed` | 1.08:1 | `#181b21` | 1.09:1 |
| `--text` | `#1a1c20` | 16.36:1 | `#dfe2e8` | 14.45:1 |
| `--muted` | `#54585f` | 6.85:1 | `#a2a8b4` | 7.85:1 |
| `--accent` | `#1a4fc4` | 6.80:1 | `#7fa8ff` | 7.99:1 |
| `--edge` (control boundary) | `#8f8a7e` | 3.30:1 | `#606877` | 3.34:1 |

- **[fix]** `--edge` replaces `--border #262a35` (1.34:1) wherever a border is the *only* identifier of a control — today, the hero pills [S1f]. `--border` may survive as `--rule` for purely decorative dividers, where no bar applies.
- **[fix]** Delete `--accent-2 #7c5cff` **and the gradient that uses it**. It computes to 4.41:1 and fails 1.4.3 AA for anything but large text [S1a]; the gradient-clipped headline is also the most recognisable stock hero treatment on the list in §7. Replacing it with `--text` at `--step-4` loses nothing and removes the site's single loudest template tell. **[derived]**.
- **[signal]** Ship the light theme as the `prefers-color-scheme: light` branch and make it *real*, not an inverted afterthought — the polarity evidence says it is the better reading condition [S15, S16], and 87% of the web ships no branch at all [S11].
- **[taste]** The off-white `#fbfaf8` and the near-black `#101216` are chosen to avoid `#ffffff`/`#000000` (21.00:1, the exact tested negative-polarity extreme [S15, S16]). The specific hue warmth is judgement, not evidence.
- **[signal]** `::selection { background: var(--accent); color: var(--bg); }` — hand-authored in 0/13 corpus sites (§2.2).

### 10.3 Layout and spacing

- **[fix]** Express the prose cap in `ch` and apply it to text, not to the page shell: `--measure: 68ch` on prose blocks; keep a wider `--shell` for the grid. Backed by the corpus's `ch`/`em` practice [S19i, S19l] and bounded above by 1.4.8's 80-character ceiling [S1c]; 68 sits inside the 55-cpl-comprehension / 76-cpl-no-difference range the literature actually reports [S17].
- **[fix]** One spacing scale replacing the **twenty** distinct `px` values enumerated in §4.2:
  ```css
  --s-1: .25rem; --s-2: .5rem; --s-3: .75rem; --s-4: 1rem;
  --s-5: 1.5rem; --s-6: 2rem; --s-7: 3rem; --s-8: 4.5rem; --s-9: 6rem;
  ```
  **Re-checked against the corrected count (this scale was originally sized against a tally of thirteen, which was wrong).** Nine tokens still cover the observed range: at a 16px root they are 4, 8, 12, 16, 24, 32, 48, 72 and 96 px, against an observed span of 2px–96px. The compression is 20 → 9, and the fit is tightest at the two ends. At the small end, `2px` and `3px` both round up to `--s-1` (4px) — acceptable, since both are optical nudges (`.card__links` `margin-top: 2px`, `.tag` `padding: 3px 9px`) rather than layout spacing. At the large end, `52px` (footer padding, L91) and `56px` (hero bottom padding, L32) must round to `--s-7` (48px), and `64px` (mobile hero top, L97) to `--s-8` (72px), which visibly changes the hero and footer rhythm. **The largest single swing is one the enumeration makes easy to miss: `40px` — the mobile hero's bottom padding in the same L97 rule — is an exact tie**, 8px from `--s-6` (32px) and 8px from `--s-7` (48px), so the scale does not pick for you and either choice moves that edge by 8px, more than the 52→48 shift. **These are real design consequences of adopting the scale, not rounding details, and they are the thing to look at first when the change is built.** A tenth step would remove it and is a defensible alternative; nine is chosen because the §13 read-the-stylesheet test is easier to pass with fewer. **[derived]** — no source prescribes a step count.
- **Keep** the intrinsic grid (`repeat(auto-fill, minmax(…, 1fr))`) and the single `@media` breakpoint — both already correct (§4.3).
- **[signal]** Section rhythm from the scale only: no value in the stylesheet that is not a `--s-*` token or a `--step-*` token.

### 10.4 Motion policy — one rule, stated as policy

```css
@media (prefers-reduced-motion: no-preference) {
  html { scroll-behavior: smooth; }
  a, .card { transition: color .12s ease, border-color .12s ease, background-color .12s ease; }
}
```

- **[fix]** `scroll-behavior: smooth` moves inside the query. It is currently unconditional (`style.css:21`). **The recommendation rests on SC 2.3.3 [S1h]**, which requires that interaction-triggered motion animation be disableable — that is sufficient on its own and does not depend on classifying smooth scroll as a vestibular trigger. The supporting reading — that an animated scroll is "non-essential animation added to the scrolling interaction" in the sense of Understanding 2.3.3 [S1j] — is **[derived]**, and MDN's `prefers-reduced-motion` page does *not* support it: that page never mentions scrolling (§6.1).
- **[fix]** Drop `transform: translateY(...)` hover lifts. The case is *not* that a 1–3px lift is a serious vestibular trigger — MDN's named category is "scaling or panning large objects" [S2] and these are neither large nor panning (§6.1 states that boundary honestly). The case is cheaper: colour/border transitions carry the same affordance, are already in the rule, and cost one fewer animated property to keep inside the motion query. **[derived]** — a taste-adjacent simplification with a conformance benefit, not a conformance requirement.
- **No scroll-driven animation.** Baseline *limited* [S8] — it would be a progressive enhancement requiring a full static fallback, which is more code than the effect is worth on a four-section page. Revisit when §6.3's table says `widely`.
- **[signal]** State the policy in a CSS comment. The stylesheet is part of the artifact for the peer audience; a policy comment is read, a missing animation is not.

### 10.5 The detail-level craft items, in priority order

1. **`:focus-visible` on every interactive element** — model on adactio's rule [S19a]; target 2.4.13 AAA's "2 CSS pixel thick perimeter" and 3:1 focused/unfocused delta [S1i]. 67% of sites remove focus outlines [S11]; this is the highest signal-per-line item on the list.
2. **`color-scheme: light dark`** — one declaration, fixes browser chrome [S4].
3. **`--edge` at ≥3:1 on the hero pills** — closes the one live 1.4.11 defect [S1f].
4. **Delete the gradient headline** — closes the one live large-text-only token and the loudest template tell.
5. **A print stylesheet** — 2/13 in corpus; adactio's is 344 bytes [S19a].
6. **`::selection`** — 0/13 hand-authored.
7. **Optical details:** `text-underline-offset: 3px; text-decoration-thickness: 1px` on links, per sivers [S19l].
8. **A real 404 page** — cannot be verified from a stylesheet; listed as **[taste]**/**[derived]**, not evidenced.

### 10.6 What NOT to do

Explicitly out of scope on this repo's architecture: any component library, any CSS framework, any build step, any JS animation library, decorative generated imagery, glassmorphism panels, and scroll-linked effects. Each contradicts either `CLAUDE.md`'s no-build-step identity or §6.3's Baseline table, and none is supported by evidence in this paper.

---

## 11. Honest boundary analysis

**11.1 The strongest case against this entire paper.** `danluu.com` has four CSS rules and no design system, and it is at least as respected by the peer audience as any site in the corpus that has one [S19d] (the relative-respect claim is **[unverified]** — I have no measurement of it, only its wide citation). If visual craft were load-bearing for senior-engineer credibility, that site could not exist. **The most defensible reading of the corpus is that visual design is *permissive*, not *productive*: bad design can cost credibility, good design mostly fails to buy it, and the whole return is in the tail.** This paper's recommendation survives that reading only because its core items are conformance fixes and deletions, not additions — but a reader who concludes "spend the effort on case-study content instead" is not misreading the evidence.

**11.2 The craft/template distinction is largely unmeasured.** §7's central claim — that engineers detect starter kits within seconds — has **no source in this paper**. I looked for one (§12, G3) and did not find one. It is folklore that I believe and cannot evidence. Every row of that table's right-hand column is therefore weaker than it looks, and the one row I *can* evidence (the framework default font stack) is evidence that the *default exists*, not that anyone notices.

**11.3 The corpus falsifies the hand-built⇒crafted premise.** `xeiaso.net`, a Tailwind build, ships focus-visible, reduced-motion and selection styling; **six of the eight hand-rolled sites — antirez, danluu, jvns, matklad, simonwillison, sivers — ship none of the three** (§7). **A framework can out-conform a hand-built site**, which means "hand-written CSS" is not itself a craft signal and should never be claimed as one on the site.

**11.4 The dark-mode recommendation cuts against the operator's evident preference.** The site is dark today and the peer-reviewed evidence says positive polarity reads better [S15, S16]. My recommendation (honour `prefers-color-scheme`, ship both) is a compromise that doubles the theme-maintenance surface and doubles the contrast-audit surface. A defensible alternative is *dark-only, executed well* — larger base type, no small text, no pure white — which is less work and gives up the light branch. The evidence does not force the two-theme answer; it forces the "don't ship small text on dark" answer.

**11.5 The measure recommendation rests on contested literature.** §3.2 shows one study favouring 55 cpl on comprehension, another finding faster reading at 100 cpl, and a third finding no difference across 45/76/132 [S17]. `68ch` is a defensible midpoint, not an optimum, and anyone who prefers 60 or 75 has equal support.

**11.6 Where the direction fails outright.** If the site grows a client-services surface (pool topic 9), strategy (C) is probably too austere for that audience, and the tension is real rather than resolvable by tokens. If the site adds long-form case studies with diagrams and terminal recordings (pool topic 6), the single-column measure and the four-section rhythm both need rework, and this paper's spacing scale would be re-derived rather than reused.

**11.7 A whole class of evidence is missing.** Nothing here measures the *subject's* audiences. The corpus is thirteen sites chosen by fetchability. There is no A/B test, no user study, and no data on what a hiring manager does when a portfolio loads.

---

## 12. Gaps declared, with search method

- **G1 — The "#121212, never pure black" dark-surface convention could not be sourced first-party.** Method: `curl https://m2.material.io/design/color/dark-theme.html` returned HTTP 200 / 68,334 bytes; `grep -c "121212"` = **0** and `grep -ci "dark theme"` = **0**, i.e. a JS-rendered shell with no content in the response. `curl https://m3.material.io/styles/color/system/overview` returned 61,739 bytes, `grep -c "121212"` = **0**. **Not asserted anywhere in this paper.** §10.2's avoidance of `#000000` rests on [S15]/[S16] instead.
- **G2 — Halation / astigmatism as the mechanism of dark-mode discomfort is unverified.** Method: PubMed E-utilities searches for the two polarity studies returned Buchner & Baumgartner 2007 and Piepenbrock et al. 2014, neither of which uses the term; no peer-reviewed source for the halation account was retrieved. The *performance* effect is definitive [S15, S16]; the *explanation* commonly given for it is not sourced here.
- **G3 — No study measures what engineers infer from a site's visual design.** Method: this paper's sources include no experimental work on developer-audience credibility judgements; the sibling paper `audience-calibration-and-anti-patterns.md` carries the general web-credibility literature (Stanford/NN/g), which is not engineer-specific. §7 and §11.2 are marked accordingly.
- **G4 — "AI-generated decorative imagery reads as a tell" has no source.** Not searched systematically; stated as unverified in §7 rather than dropped, because its *absence* from evidence is itself the finding.
- **G5 — No fresh measured CSS-usage data for 2025–26.** Method: enumerated the HTTP Archive Web Almanac content directory via the GitHub contents API on the confirmed default branch `main`. Years present: 2019, 2020, 2021, 2022, **2024**, **2025**. The **2024 edition has no `css.md` at all** (19 chapters enumerated; CSS is not among them), and **2025's `css.md` is a 678-byte stub with `authors: []`**. The most recent published CSS chapter is therefore **2022** [S13], and §5.4's `prefers-*` figures come from the 2025 *Accessibility* and *Fonts* chapters, which are complete. **Consequence for this paper:** no claim here about *how common a CSS technique is across the web* can be sourced to a current measured crawl — [S13] is four years stale — which is why §4.2's and §7's spacing/technique arguments are argued from this paper's own thirteen-file corpus and marked directional on generalisation, never from a web-wide figure.
- **G6 — Default light/dark polarity of the 13 corpus sites was not tallied.** Determining each site's *default* rendered scheme requires rendering, which I did not do; only the presence of a `prefers-color-scheme: dark` block was counted, and that block can serve either default. No polarity tally is asserted.
- **G7 — The Dyson 2004 review was read from a third-party-hosted PDF** (`stu.westga.edu`), not a publisher or institutional-repository copy, and its text was extracted with a locally-written parser that introduces spacing artifacts. Study *identities* are corroborated via Crossref [S18]; wording is not quoted verbatim. **Re-checked 2026-08-10 and the gap is confirmed rather than closed:** the PDF is still live (HTTP 200, `content-type: application/pdf`, 1,941,861 bytes) but its text layer is glyph/CID-encoded, so an independent reader cannot straightforwardly re-extract the prose to check this paper's renderings. **Every characterisation attributed to [S17] — that line length's critical variable is characters per line, the 55-vs-100 cpl comprehension result, the 100-vs-25 cpl speed result, and the Bernard et al. (2002a) 45/76/132 null — is therefore *unconfirmable by a third party from this source* and stays [directional].** What IS independently confirmed is the underlying study's identity: Crossref on `10.1006/ijhc.2001.0458` returns, exactly, *"The influence of reading speed and line length on the effectiveness of reading from screen"*, DYSON / HASELGROVE, *International Journal of Human-Computer Studies*, vol. 54, pp. 585–612, issued 2001-04 — matching §14's [S18] entry field for field [S18] **[definitive** — JSON API response]. **Consequence:** §3.2's equivocation and §11.5's "contested literature" boundary do not depend on [S17]'s exact wording, so nothing load-bearing in this paper rests on the unconfirmable part; a consumer wanting the primary numbers should obtain the review through a publisher or library copy.
- **G8 — WCAG 3 / APCA status is not established here.** The Almanac 2025 Accessibility chapter notes APCA as an alternative contrast model and says WCAG 3.0 is "still in the development phase" [S11]; I did not fetch the W3C draft to confirm its maturity level. Any APCA-based recommendation is therefore **out of scope**, and §5's ratios use the WCAG 2.x formula exclusively.

---

## 13. Test plan — what research cannot settle

Visual direction is unusually build-dependent. These are the questions that must be *made and judged*, not researched further.

1. **Serif vs. sans for body copy.** Build the same page twice — `ui-serif, Georgia` vs. a deliberate self-hosted sans — and judge side by side at the recommended scale. Research cannot settle this; §10.1 marks it `[taste]`.
2. **Does the light theme actually look like the operator's site?** Build both branches fully and view each for a week at the times of day the site is actually visited. The polarity evidence [S15, S16] predicts better reading, not better *identity*. Decision output: keep both, or collapse to dark-only-done-well per §11.4.
3. **Measure calibration.** Set `--measure` to 60ch, 68ch and 76ch and read the About paragraph and a full case study in each. The literature is genuinely split (§3.2); pick by reading.
4. **Does deleting the gradient headline leave the hero flat?** The gradient is the site's only chromatic gesture. Remove it and see whether the page needs a replacement accent moment or is better without one. If it needs one, the constraint is: must pass 4.5:1 at whatever size it is used [S1a].
5. **Focus-ring visibility across both themes.** Tab the whole page in light and dark and verify the ring against 2.4.13's 3:1 focused/unfocused delta [S1i] on every surface (`--bg`, `--surface`, inside a card). Contrast maths cannot predict perceived visibility over a card edge.
6. **Reduced-motion parity.** Toggle the OS setting and confirm the site is not merely *less* animated but *complete* — no state that only reads as changed because it moved.
7. **Real-device field measurement.** Compute LCP/INP/CLS at the 75th percentile [S9] on the self-hosted deployment, not in a lab. Belongs jointly to pool topic 7.
8. **The peer-read test, which is the only real test of §7.** Give the built site to two or three senior engineers cold and ask one question: *"built or generated?"* — then ask what they looked at. This is the experiment that would close gap G3, and no amount of further reading substitutes for it.
9. **Does the stylesheet read as a system?** Have someone open `style.css` and answer "how many spacing values are there?" If the answer is not "nine, and they're named," §10.3 was not implemented.
10. **Resolve the `.card__links` target-size question (§8.2).** Measure the rendered hit area of the card links and decide whether SC 2.5.8's Inline exception applies to links in a flex row. Research cannot settle this — the SC's wording ("in a sentence or its size is otherwise constrained by the line-height of non-target text" [S1d]) is ambiguous for this layout, and the cheap resolution is to give them padding so the question stops mattering.

---

## 14. Citations

**How to read this list — citation coverage, checked mechanically.** Every bracketed `[S…]` group in the body was extracted, split on commas and deduplicated on 2026-08-10, then compared against the entries defined below. Result: **41 tokens cited inline, 43 defined, and zero citations in the body that lack an entry here** (no dangling references in either direction that are not explained on this line). The two defined-but-never-cited entries are deliberate and are flagged where they sit: **[S1b]** (SC 1.4.4 Resize Text) was consulted as background and no claim in this paper rests on it, and **[S21]** — this repository at `HEAD` — is cited throughout in the denser, more useful form `style.css:NN` / `index.html:NN` rather than by token. Note also that **[S19a]–[S19m]**, the thirteen-file corpus, back several tallies computed over *all thirteen* files (§2.1's byte table, §2.2's feature counts, §3.3's line-height enumeration, §5.3's `color-scheme` table, §7's hand-rolled tally); an individual token appears inline where that file is quoted or singled out, and the enclosing sentence names the population where it is not.

**First-party normative specifications and references**

- **[S1]** W3C, *Web Content Accessibility Guidelines* — success criteria fetched as source HTML from the `w3c/wcag` repository (default branch `main` confirmed via the GitHub repos API). Directory enumeration of WCAG 2.2's new criteria: `https://api.github.com/repos/w3c/wcag/contents/guidelines/sc/22?ref=main`
  - **[S1a]** SC 1.4.3 Contrast (Minimum) — `https://raw.githubusercontent.com/w3c/wcag/main/guidelines/sc/20/contrast-minimum.html`
  - **[S1b]** SC 1.4.4 Resize Text — `.../guidelines/sc/20/resize-text.html` (consulted as background; no claim in this paper rests on it)
  - **[S1c]** SC 1.4.8 Visual Presentation — `.../guidelines/sc/20/visual-presentation.html`
  - **[S1d]** SC 2.5.8 Target Size (Minimum) — `.../guidelines/sc/22/target-size-minimum.html`
  - **[S1e]** SC 2.4.11 Focus Not Obscured (Minimum) — `.../guidelines/sc/22/focus-not-obscured-minimum.html`
  - **[S1f]** SC 1.4.11 Non-text Contrast — `.../guidelines/sc/21/non-text-contrast.html`
  - **[S1g]** SC 1.4.12 Text Spacing — `.../guidelines/sc/21/text-spacing.html`
  - **[S1h]** SC 2.3.3 Animation from Interactions — `.../guidelines/sc/21/animation-from-interactions.html`
  - **[S1i]** SC 2.4.13 Focus Appearance — `.../guidelines/sc/22/focus-appearance.html`
  - **[S1j]** *Understanding Animation from Interactions* (the non-normative Understanding document for SC 2.3.3) — `https://raw.githubusercontent.com/w3c/wcag/main/understanding/21/animation-from-interactions.html` (HTTP 200, 5,698 bytes — `curl` `size_download` and `wc -c` agree; quoted spans tag-stripped and re-verified under `grep -F`)
- **[S2]** MDN, `prefers-reduced-motion` — `https://raw.githubusercontent.com/mdn/content/main/files/en-us/web/css/reference/at-rules/@media/prefers-reduced-motion/index.md`
- **[S3]** MDN, `prefers-color-scheme` — `.../at-rules/@media/prefers-color-scheme/index.md`
- **[S4]** MDN, `color-scheme` — `.../reference/properties/color-scheme/index.md`
- **[S5]** MDN, `:focus-visible` — `.../reference/selectors/_colon_focus-visible/index.md`
- **[S6]** MDN, `font-family` (the `system-ui` note) — `.../reference/properties/font-family/index.md`
- **[S7]** CSS Working Group, *CSS Text Module Level 4*, Editor's Draft — `https://drafts.csswg.org/css-text-4/` (§5.4, `text-wrap-style`)
- **[S8]** Web Platform Status API (Baseline data), queried 2026-08-10 — `https://api.webstatus.dev/v1/features/<feature-id>` for: `text-wrap-balance`, `text-wrap-pretty`, `scroll-driven-animations`, `view-transitions`, `light-dark`, `container-queries`, `has`, `oklab`, `prefers-reduced-motion`, `prefers-color-scheme`, `focus-visible`, `font-variation-settings`, `subgrid`, `accent-color`, `scroll-behavior`, `starting-style`, `anchor-positioning`, `font-display`
- **[S9]** Google / web.dev, *Web Vitals* — `https://web.dev/articles/vitals` (rendered page, `curl`-fetched and tag-stripped)
- **[S10]** Google Chrome, `web-vitals` library README (shipped threshold constants) — `https://raw.githubusercontent.com/GoogleChrome/web-vitals/main/README.md`

**Measured crawls and published research**

- **[S11]** HTTP Archive, *Web Almanac 2025 — Accessibility* — `https://raw.githubusercontent.com/HTTPArchive/almanac.httparchive.org/main/src/content/en/2025/accessibility.md` (DOI 10.5281/zenodo.18246524)
- **[S12]** HTTP Archive, *Web Almanac 2025 — Fonts* — `.../src/content/en/2025/fonts.md` (DOI 10.5281/zenodo.18246295)
- **[S13]** HTTP Archive, *Web Almanac 2022 — CSS* — `.../src/content/en/2022/css.md` (most recent published CSS chapter; see gap G5)
- **[S14]** WebAIM, *The WebAIM Million — The 2026 report on the accessibility of the top 1,000,000 home pages* — `https://webaim.org/projects/million/`
- **[S15]** Buchner, A. & Baumgartner, N. (2007). *Text–background polarity affects performance irrespective of ambient illumination and colour contrast.* Ergonomics. PubMed PMID 17510822 — abstract via `https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=pubmed&id=17510822&retmode=xml`
- **[S16]** Piepenbrock, C., Mayr, S. & Buchner, A. (2014). *Positive display polarity is particularly advantageous for small character sizes: implications for display design.* Human Factors. PubMed PMID 25141597 — abstract via the same E-utilities endpoint
- **[S17]** Dyson, M. C. (2004). *How physical text layout affects reading from screen.* Behaviour & Information Technology. PDF copy at `https://stu.westga.edu/~ssynan1/literacy/Dyson.pdf` (see gap G7)
- **[S18]** Dyson, M. C. & Haselgrove, M. (2001). *The influence of reading speed and line length on the effectiveness of reading from screen.* Int. J. Human-Computer Studies 54, 585–612. DOI `10.1006/ijhc.2001.0458` — metadata via `https://api.crossref.org/works`

**The stylesheet corpus (all fetched 2026-08-10, all HTTP 200)**

- **[S19a]** `https://adactio.com/skins/default/global.css?20260115`; `https://adactio.com/includes/css/print.css`
- **[S19b]** `https://antirez.com/css/style.css?v=14`
- **[S19c]** `https://brutalist-web.design/main.css`
- **[S19d]** `https://danluu.com/` (inline `<style>`, plus `<meta name=color-scheme content="light dark">`)
- **[S19e]** `https://ericwbailey.website/site.css`
- **[S19f]** `https://cdn.fasterthanli.me/dist/assets/bundle-DCh2U5HF.css`
- **[S19g]** `https://jvns.ca/stylesheets/screen.css`; `https://jvns.ca/stylesheets/print.css`
- **[S19h]** `https://lucumr.pocoo.org/static/style-2025.css`
- **[S19i]** `https://matklad.github.io/css/main.css`
- **[S19j]** `https://mtlynch.io/assets/css/bundle.min.00444becc713ada2124d586331d242cd29f31d8b4b79843edecc353ee2e50d82.css`
- **[S19k]** `https://simonwillison.net/static/css/all.7977d7c44aeb.css`
- **[S19l]** `https://sive.rs/` (inline `<style>`)
- **[S19m]** `https://xeiaso.net/styles.css`

**Framework defaults**

- **[S20]** Tailwind Labs, `tailwindcss` default theme tokens — `https://raw.githubusercontent.com/tailwindlabs/tailwindcss/main/packages/tailwindcss/theme.css` (default branch `main` confirmed via the GitHub repos API; 26 colour families enumerated by listing `--color-<name>-500` tokens and counting the list)

**The artifact under discussion**

- **[S21]** This repository at `HEAD`: `style.css` (97 lines), `index.html` (53), `projects.js` (65) — 215 total, counted with `wc -l`. Feature presence counted with `grep -c` across all three files: `prefers-reduced-motion` 0, `prefers-color-scheme` 0, `:focus` 0, `:focus-visible` 0, `::selection` 0, `@media print` 0, `color-scheme` 0, `text-wrap` 0, `font-display` 0.
