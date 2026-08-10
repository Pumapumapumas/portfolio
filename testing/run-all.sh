#!/usr/bin/env bash
# Tier-1 master runner (Testing Standard). Every test-bearing script in this repo must
# be reachable from here — a test outside runner discovery is a defect, not a
# convenience gap: it passes review once and then silently never runs again.
#
# Discovery is every executable *.sh in this directory except this file. Deliberately
# NOT `verify-*.sh`: a naming convention is not discovery, and a suite added as
# smoke.sh or check-chart.sh would have been skipped in silence by exactly the runner
# written to prevent that (Discovery completeness, binding 2026-07-24).
#
# An empty discovery FAILS. A runner that exits zero having found nothing is
# indistinguishable from a passing run, so the count is asserted rather than left to
# the accident of an unmatched glob (Testing Standard, Tier Enforcement).
#
# Arguments are passed through to every suite. The one suite that exists today takes an
# optional image ref; a future suite with a different argument shape needs this loop
# revisited rather than a second runner tier.
set -euo pipefail

# --- Resource cap (Testing Standard § The master runner caps its own run) ------
# Re-exec into a memory- and task-capped cgroup scope, so a runaway suite dies as a
# FAILED RUN rather than as a host outage. Applied here rather than by the caller:
# every caller would otherwise have to remember (operator shell, CI job, dispatch,
# pre-commit hook, whatever is written next), and the one that forgets is unbounded.
#
# Needs no sudo — cgroup v2 delegates cpu/memory/pids to the user slice.
# MemorySwapMax=0 is REQUIRED, not decorative: MemoryMax alone bounds RAM and
# silently spills the remainder to swap, so the run thrashes instead of failing.
# Measured -- a 400MB allocation under a 24MB MemoryMax succeeded via swap, and
# died correctly (exit 137) only once swap was bounded too.
#
# TasksMax matters independently of MemoryMax: a runaway that FORKS rather than
# allocates exhausts a host just as effectively, and a memory cap cannot see it.
if [[ -z "${MDC_TEST_CAPPED:-}" ]]; then
  _self="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
  if command -v systemd-run >/dev/null 2>&1 && [[ -S "${XDG_RUNTIME_DIR:-/nonexistent}/bus" ]]; then
    export MDC_TEST_CAPPED=1
    exec systemd-run --user --scope -q \
      -p MemoryMax="${MDC_TEST_MEM_MAX:-2G}" \
      -p MemorySwapMax=0 \
      -p TasksMax="${MDC_TEST_TASKS_MAX:-512}" \
      -- "$_self" "$@"
  fi
  # No usable systemd user session (container, some CI runners). Proceed UNCAPPED —
  # but say so. A silent fallback reads as protection and provides none.
  echo "WARNING: test run is UNCAPPED — no systemd user session available." >&2
  echo "         A runaway suite can exhaust this host rather than failing as a run." >&2
fi

cd "$(dirname "${BASH_SOURCE[0]}")"

self="$(basename "${BASH_SOURCE[0]}")"
suites=()
for candidate in *.sh; do
  [ -f "$candidate" ] || continue
  [ -x "$candidate" ] || continue
  if [ "$candidate" = "$self" ]; then continue; fi
  suites+=("$candidate")
done

if [ "${#suites[@]}" -eq 0 ]; then
  echo "FAIL: no test suites discovered in $(pwd) — expected at least one executable *.sh" >&2
  exit 1
fi

echo "==> discovered ${#suites[@]} suite(s): ${suites[*]}"

status=0
for suite in "${suites[@]}"; do
  echo "=== $suite ==="
  ./"$suite" "$@" || status=1
done
exit "$status"
