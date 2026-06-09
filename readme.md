# Sonata

A lightweight self-hosted VPN solution built on Xray.

## Notes

This configuration uses the [Yandex Cloud DNS](https://yandex.cloud/en/services/dns) service to validate the domain for the Let's Encrypt DNS-01 challenge. Support for Yandex Cloud DNS is currently hardcoded.

If you use a different DNS provider that supports zone management via API calls, you can modify the installation to use the [appropriate Lego DNS provider](https://github.com/go-acme/lego#dns-providers) instead.

## Environment

You must configure all the environment variables listed in `./docker/.env.example` file:

```bash
# ACME provider used for certificate issuance, `letsencrypt` is probably the best choice.
REPOSITORY__ACME_PROVIDER_NAME=

# Domain name and contact email address.
REPOSITORY__DOMAIN_NAME=
REPOSITORY__DOMAIN_EMAIL=

# Yandex Cloud API options. See more:
# https://go-acme.github.io/lego/dns/yandexcloud/index.html
REPOSITORY__YANDEX_CLOUD_FOLDER_ID=
REPOSITORY__YANDEX_CLOUD_IAM_TOKEN=

# General Xray options. These can be generated using the `xray x25519` and `xray uuid` commands.
REPOSITORY__XRAY_PRIVATE_KEY=
REPOSITORY__XRAY_CLIENT_UUID=

# Short ID used for Xray client authentication.
REPOSITORY__XRAY_CLIENT_SHORT_ID=

# Special HTTP endpoint used to identify an Xray client.
REPOSITORY__XRAY_CLIENT_XHTTP_PATH=
```

## Deployment

Clone the repository:

```bash
git clone https://github.com/echoomy/sonata.git
cd ./sonata/
```

Create and configure your environment file:

```bash
cp ./docker/.env.example ./docker/.env
vim ./docker/.env
```

Start the stack:

```bash
docker compose -f ./docker/production.compose.yaml up -d
```

## Credits

Made by Egor Chumichev. With love lost and dreams left unchased.
