#!/bin/bash
set -e

# cd ..

echo "=== Code Analysis ==="
bash scripts/analysis.sh

echo "=== Build ==="
bash scripts/build.sh

echo "=== Apply ==="
bash scripts/apply.sh

echo "=== Test ==="
bash scripts/test.sh