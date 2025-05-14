FROM caddy:2.10.0-alpine

COPY Caddyfile /etc/caddy/Caddyfile

WORKDIR /srv

COPY index.html .
COPY script.js .
COPY assets ./assets/

EXPOSE 80
