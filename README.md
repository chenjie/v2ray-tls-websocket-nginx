# v2ray-tls-websocket-nginx
Are we doomed in the year of 2019? Is it gonna be like The Wandering Earth🌎? Fortunately, here comes the V2Ray to the rescue, which is powered by the [Project V](https://v2ray.com/).

> If you want to keep a *secret*, you must also hide it from *yourself*. (Shadowsocks)

## Tutorial (highly recommended)

* [V2Ray 白话文教程](https://toutyrater.github.io/) (Mandarin)
* [V2Ray Official Doc](https://v2ray.com/en/index.html) (English)

## Prerequisites

* Ubuntu 18.04
* Run as `root` user
* A cup of Java :)

## Usage

### Set up from scratch

```
$ bash auto-config.sh domain_name
```

### Renew SSL certificate

```
$ bash renew-cert.sh domain_name
```

Note: `domain_name` should have DNS A record configured pointing at the _public_ IPv4 address (not the private one in VPC) of the VM/VPS.

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
