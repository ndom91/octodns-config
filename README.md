# OctoDNS

Configuration for managing my DNS via [Netbox](https://github.com/netbox-community/netbox)

> Since I don't work much with Python, I decided to give this new python project manager from the folks behind [ruff](https://github.com/astral-sh/ruff) a shot - [uv](https://docs.astral.sh/uv/#highlights)

## 🎯 Goals

1. Manage my DNS records via Netbox
2. Sync them to multiple locations, including:
    - Local BIND Server
    - Cloudflare

## 🚀 Getting started

```
$ uv venv
$ uv sync
```

## 🏗️ Usage

```sh
./octodns.sh --sync
```

## 🛠️ Tools

- [octodns](https://github.com/octodns/octodns)
- [octodns-netbox-dns](https://github.com/olofvndrhr/octodns-netbox-dns)
- [netbox-plugin-dns](https://github.com/peteeckel/netbox-plugin-dns)

## 📝License

MIT
