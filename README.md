# cursor-proxy

Docker wrapper for [cursor-api-proxy](https://github.com/anyrobert/cursor-api-proxy) — exposes Cursor models as an OpenAI-compatible API.

## Usage

```bash
echo "CURSOR_API_KEY=cursor_..." > .env
docker compose up -d
```

Proxy runs at `http://localhost:8765/v1`.
