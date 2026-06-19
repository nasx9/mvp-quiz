FROM nginx:1.27-alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY index.html /usr/share/nginx/html/index.html

COPY uberlandia-02-07-2026.html /usr/share/nginx/html/uberlandia-02-07-2026.html
COPY campinas-27-06-2026.html /usr/share/nginx/html/campinas-27-06-2026.html
COPY florianopolis-25-06-2026.html /usr/share/nginx/html/florianopolis-25-06-2026.html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
  CMD wget -qO- http://127.0.0.1/health || exit 1
