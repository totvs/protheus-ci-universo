#!/bin/bash
set -e

docker stack up -c ci/docker/docker-compose.yml protheus
