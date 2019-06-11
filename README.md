# v2ray-tls-websocket-nginx
Are we doomed in the year of 2019? Is it gonna be like The Wandering Earth🌎? Fortunately, here comes the ULTIMATE V2Ray proxy configuration powered by the [Project V](https://v2ray.com/).

> If you want to keep a *secret*, you must also hide it from *yourself*. (Shadowsocks)

## Tutorial (highly recommended)

* [V2Ray 白话文教程](https://toutyrater.github.io/) (in Chinese)
* [V2Ray Official Doc](https://v2ray.com/en/index.html) (in English)

## Prerequisites

* Ubuntu 18.04
* A cup of Java :)

## Configs

| Key | Value |
|---|---|
| Server IP | `<your_domain_name>`  |
| Protocol | `Vmess` |
| Port | `443` |
| UUID | `b831381d-6324-4d53-ad4f-8cda48b30811` |
| AlterId | `64` |
| Encryption | `auto` |
| TLS | `YES` |
| TLS Domain Name | `<your_domain_name>` |
| Network | `websocket` or `ws` |
| Websocket Path | `/ws/` |

## Extra Info

* Nginx: `/etc/nginx`
* Websocket port (internal): `10000`
* Log files: `/var/log/v2ray` (loglevel: info)
* V2Ray config: `/etc/v2ray/config.json`
* Let’s Encrypt [certificate duration](https://letsencrypt.org/2015/11/09/why-90-days.html): `90 days`
