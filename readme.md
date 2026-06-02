# Sonata

A lightweight self-hosted VPN solution built on Xray, VLESS REALITY, Nginx, and automatic TLS certificate management.

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

Made by Egor Chumichev. With love lost and dreams unchased.
