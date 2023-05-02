#!/bin/bash
set -e

docker stack up -c ./docker-compose.yml protheus
