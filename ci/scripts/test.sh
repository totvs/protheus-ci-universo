#!/bin/bash
set -e

docker run --rm --network=host -e HOME=/tmp \
-v ${PWD}/tir:/local totvsengpro/tir \
python3 /local/CRMA980TESTSUITE.py