#!/usr/bin/env bash
# Asserts the three properties k3s-w1's Pod Security Admission `restricted` stance
# requires of this image: non-root uid 101, listens on :8080, serves this repo's real
# content. The Dockerfile comment is the canonical explanation of WHY — read it there.
#
# Scope: this verifies the IMAGE. It does not verify the deployed pod — the chart
# currently mounts a ConfigMap read-only over /usr/share/nginx/html, which SHADOWS
# (does not merge with) the content baked in here. A green run of this script is not
# proof that the pod serves this image's content.
#
# Usage: ./testing/verify-image.sh [image-tag]   (default: builds portfolio:verify from ./)
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
IMAGE="${1:-portfolio:verify}"
CONTAINER="portfolio-verify-$$"
# Not 8080 — the README's own `docker run` example takes that, and a developer with the
# site up locally would otherwise get a confusing bind failure. Override if it collides.
HOST_PORT="${HOST_PORT:-18080}"

cleanup() { docker rm -f "$CONTAINER" >/dev/null 2>&1 || true; }
trap cleanup EXIT

if [ $# -eq 0 ]; then
  echo "==> building $IMAGE"
  docker build -t "$IMAGE" "$REPO_ROOT"
fi

echo "==> starting container as 101:101 on :$HOST_PORT"
# --cap-drop/--security-opt mirror the chart's container securityContext, so a
# capability the image quietly depends on fails here rather than at admission.
docker run -d --name "$CONTAINER" --user 101:101 \
  --cap-drop=ALL --security-opt=no-new-privileges \
  -p "$HOST_PORT":8080 "$IMAGE" >/dev/null

# nginx needs a moment to bind; poll rather than sleep a fixed guess.
for _ in $(seq 1 30); do
  if curl -sf "http://localhost:$HOST_PORT/" >/dev/null 2>&1; then break; fi
  sleep 0.5
done

fail() { echo "FAIL: $*" >&2; docker logs "$CONTAINER" >&2 || true; exit 1; }

# 1. non-root, and still up (a container that exits on the uid is the failure we care about)
[ "$(docker inspect -f '{{.State.Running}}' "$CONTAINER")" = "true" ] \
  || fail "container is not running under --user 101:101"
uid="$(docker exec "$CONTAINER" id -u)"
[ "$uid" = "101" ] || fail "expected uid 101, got $uid"
echo "ok 1 — running as non-root uid $uid"

# 2. serving on 8080
curl -sf "http://localhost:$HOST_PORT/" >/dev/null || fail "no HTTP 200 on :8080"
echo "ok 2 — serving on :8080"

# 3. real content, not the nginx default page
body="$(curl -sf "http://localhost:$HOST_PORT/")"
case "$body" in
  *"Welcome to nginx"*) fail "served nginx's default page, not the portfolio" ;;
esac
for f in index.html style.css projects.js; do
  docker exec "$CONTAINER" test -f "/usr/share/nginx/html/$f" || fail "$f missing from image"
done
# each asset is actually reachable over HTTP, not merely present on disk
for f in style.css projects.js; do
  curl -sf "http://localhost:$HOST_PORT/$f" >/dev/null || fail "$f present but not served"
done
# a marker from this repo's own index.html, so a swapped-in placeholder fails here
case "$body" in
  *"projects.js"*) ;;
  *) fail "index.html served but does not reference projects.js — wrong content" ;;
esac
echo "ok 3 — index.html, style.css, projects.js present and served"

echo "PASS — image satisfies the restricted-PSA contract (non-root, :8080, real content)"
