#!/bin/bash
set -e

docker run --rm -ti \
-v $PWD/src:/tmp \
-v $PWD/config.json:/bin/conf/config.json \
-v $PWD/output:/bin/output \
totvsengpro/advpl-tlpp-code-analyzer