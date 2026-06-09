# Sonata

A lightweight self-hosted VPN solution built on Xray.

## Notes

This configuration uses the [Yandex Cloud DNS](https://yandex.cloud/en/services/dns) service to validate the domain for the Let's Encrypt DNS-01 challenge. Support for Yandex Cloud DNS is currently hardcoded.

If you use a different DNS provider that supports zone management via API calls, you can modify the installation to use the [appropriate Lego DNS provider](https://github.com/go-acme/lego#dns-providers) instead.

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
