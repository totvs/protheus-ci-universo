#!/bin/bash
set -e

echo "=== Code Analysis ==="
bash ci/scripts/analysis.sh

echo "=== Build ==="
bash ci/scripts/build.sh

echo "=== Apply ==="
bash ci/scripts/apply.sh

echo "=== Test ==="
bash ci/scripts/test.sh