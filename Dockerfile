# Tiny static-site container — serves the portfolio behind the Cloudflare tunnel.
#
# Base is nginx-UNPRIVILEGED, not stock nginx: the target cluster (k3s-w1) enforces
# Pod Security Admission `restricted` on the portfolio namespace, which rejects a
# root container outright. This base runs as uid 101 and listens on :8080 — a
# non-root process cannot bind a privileged port, so :8080 IS the contract the
# chart pins (containerPort/targetPort 8080). Do not "fix" it back to :80.
#
# Digest-pinned per Image Pipeline Standard §4 — a bare tag is mutable and is a
# violation. Resolved from `docker buildx imagetools inspect
# nginxinc/nginx-unprivileged:1.27-alpine` (multi-arch index digest).
FROM nginxinc/nginx-unprivileged:1.31-alpine@sha256:a6c3ec0c0d249d68b0682df854d4a9e222b90fb607dc3fcf2f1d2fcbc85d347e

# --chown is not cosmetic: COPY defaults to root:root regardless of the base's USER, so
# without it nginx-as-101 can only read these files by virtue of their source mode bits.
# A future asset committed mode 600 would 403 at runtime with no build-time signal.
COPY --chown=101:101 index.html style.css projects.js /usr/share/nginx/html/
# COPY assets/ /usr/share/nginx/html/assets/   # uncomment once you add images

# USER is inherited from the base already; restated so a base change cannot silently
# reintroduce a root default. EXPOSE is metadata only — it documents the port, it does
# not cause nginx to bind it (the base's nginx.conf does that).
USER 101
EXPOSE 8080
