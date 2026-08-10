# Research — product level

Evidence that backs **the whole portfolio**, not any single phase — the holistic altitude from [Research Standard §1](../../research/research_standard.md).

```
research/
├── topics.md         the SIZE memory — tier, topic list, named gaps (written by research.sh Stage 2)
├── raw/<topic>.md    the pool — one mini-paper per topic
├── synthesis.md      the deliverable — what the pool means for the portfolio's direction
├── candidates.md     durable action candidates (survives the synthesis rewrite)
└── direction.md      operator-only rulings queue
```

## Which altitude?

**Here** if the answer could change *what the portfolio is* — its structure, whether an approach is sound, a section it doesn't yet have. **In a phase** if it decides *how to build something already committed*.

The test: **would this finding invalidate a plan, or inform one?** Invalidating is product-level; informing is phase-level.

## The rules

**Nothing here is binding** — research is evidence; codification into a standard through human review is the only path to binding. `synthesis.md` is rewritten every cycle (read it to check direction against the evidence); `candidates.md` and `direction.md` persist. Full pool mechanics: the CDF memory model at `claude-dot-files/docs/guide/memory-model.md`.

```bash
scripts/workflows/temporal/scripts/research.sh docs/standards/architecture/research --repo /opt/skyy-net/portfolio --task-file <question.md> --verbose
```
