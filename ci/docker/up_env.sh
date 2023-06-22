#!/bin/bash
set -e

docker compose -f ci/docker/docker-compose.yml -p protheus up -d

echo "Protheus Started"
