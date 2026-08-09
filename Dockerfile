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
FROM nginxinc/nginx-unprivileged:1.27-alpine@sha256:65e3e85dbaed8ba248841d9d58a899b6197106c23cb0ff1a132b7bfe0547e4c0

COPY index.html style.css projects.js /usr/share/nginx/html/
# COPY assets/ /usr/share/nginx/html/assets/   # uncomment once you add images

# Both are inherited from the base already; restated here so this repo's own image
# still satisfies `restricted` if the base ever changes them.
USER 101
EXPOSE 8080
