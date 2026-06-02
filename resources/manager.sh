#!/bin/sh

set -eu

while true; do
	echo "[lego] Starting DNS-01 Challenge..."
	./lego run --path /var/lib/lego/ --dns yandexcloud --email $DOMAIN_EMAIL --domains $DOMAIN_NAME --dns.resolvers 8.8.8.8:53 --accept-tos

  echo "[lego] Sleeping 24h..."
  sleep 24h
done
