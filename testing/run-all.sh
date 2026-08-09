#!/usr/bin/env bash
# Tier-1 master runner (Testing Standard). Every test-bearing script in this repo must
# be reachable from here — a test outside runner discovery passes review once and then
# silently never runs again.
#
# This repo is a static site with no build step, so there is exactly one suite: the
# container-image contract check. Discovery is by glob, not by a hardcoded list, so a
# new verify-*.sh is picked up without editing this file.
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")"

status=0
for suite in verify-*.sh; do
  echo "=== $suite ==="
  ./"$suite" "$@" || status=1
done
exit "$status"
