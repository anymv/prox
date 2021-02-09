#!/bin/bash
mkdir -p /etc/caddy/
wget -q https://github.com/anymv/CDNRepo/raw/master/index.html -O /index.html && wget -q https://github.com/anymv/CDNRepo/raw/master/style.css -O /style.css
export AUUID="04e1d6e8-072f-4772-ac9e-e06b7e4174e5"
wget -q https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip -O /V2ray.zip && unzip -qq V2ray.zip && chmod a+x /v2ray /v2ctl && rm -rf V2ray.zip
wget -qO- https://gist.github.com/anymv/60af0ca622132ddc65dbc85b4eaa9f33/raw/484bfa6a5de77d7e6d8a5b2393ec34cb4e9abc2f/v2ray.json | sed -e "s/\$AUUID/$AUUID/g" > /v2ray.json
/v2ray -config /v2ray.json &
wget -q https://github.com/caddyserver/caddy/releases/download/v2.3.0/caddy_2.3.0_linux_amd64.tar.gz -O /caddy.tar.gz && tar xf caddy.tar.gz && rm -rf caddy.tar.gz && chmod a+x /caddy
wget -q https://gist.github.com/anymv/60af0ca622132ddc65dbc85b4eaa9f33/raw/484bfa6a5de77d7e6d8a5b2393ec34cb4e9abc2f/Caddyfile -O /Caddyfile
wget -q https://gist.github.com/anymv/60af0ca622132ddc65dbc85b4eaa9f33/raw/484bfa6a5de77d7e6d8a5b2393ec34cb4e9abc2f/torrc -O /torrc
tor -f /torrc
/caddy run --config /Caddyfile
