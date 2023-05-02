#!/bin/bash
set -e

docker run --rm -ti \
-v $PWD/src:/tmp \
-v $PWD/analyser/config.json:/bin/conf/config.json \
-v $PWD/analyser/output:/bin/output \
totvsengpro/advpl-tlpp-code-analyzer