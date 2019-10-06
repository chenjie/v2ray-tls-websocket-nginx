#!/bin/bash
set -e

if [ $# -ne 1 ]; then
  echo "Usage: $0 domain_name" >&2
  exit 1
fi

do_name=$1

systemctl stop nginx
~/.acme.sh/acme.sh --renew -d $do_name --ecc
~/.acme.sh/acme.sh --installcert -d $do_name --fullchainpath /etc/v2ray/v2ray.crt --keypath /etc/v2ray/v2ray.key --ecc
systemctl start nginx
echo "SSL cert renew done"
