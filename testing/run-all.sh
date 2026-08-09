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
