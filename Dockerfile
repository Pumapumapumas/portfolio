# Tiny static-site container — serves the portfolio behind the Cloudflare tunnel.
FROM nginx:alpine
COPY index.html style.css projects.js /usr/share/nginx/html/
# COPY assets/ /usr/share/nginx/html/assets/   # uncomment once you add images
