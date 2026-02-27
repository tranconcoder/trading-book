#!/bin/sh
set -e

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

echo "🚀 Starting development environment..."
docker compose --env-file .env.development -f "$ROOT_DIR/docker-compose.dev.yml" up --build
