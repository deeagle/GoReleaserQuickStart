#!/bin/bash

set -e
set +x

echo "Running local CI ..."

echo "Running lints ..."

echo "Lint markdown ..."
docker run --rm -v "$(pwd):/app" docdee/mdlint -c /app/.markdownlint.yml -i CHANGELOG.md -i dist "**/*.md"

echo "Lint shell scripts ..."
docker run --rm -v "$(pwd):/app" koalaman/shellcheck-alpine:stable find /app -type f -name '*.sh' -exec shellcheck {} +

echo "Lint code (golang) ..."
docker run -t --rm -v "$(pwd):/app" -w /app golangci/golangci-lint:latest golangci-lint run --fast

echo "CI successfully finished."
