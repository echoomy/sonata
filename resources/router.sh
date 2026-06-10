#!/bin/sh

set -eu

: "${CLIENT_UUID:?CLIENT_UUID is required}"
: "${PRIVATE_KEY:?PRIVATE_KEY is required}"
: "${CLIENT_SHORT_ID:?CLIENT_SHORT_ID is required}"
: "${DOMAIN_NAME:?DOMAIN_NAME is required}"
: "${CLIENT_XHTTP_PATH:?CLIENT_XHTTP_PATH is required}"

envsubst '${CLIENT_UUID} ${PRIVATE_KEY} ${CLIENT_SHORT_ID} ${DOMAIN_NAME} ${CLIENT_XHTTP_PATH}' \
	< /etc/xray/config.template.json > /etc/xray/config.json

exec xray --config /etc/xray/config.json
