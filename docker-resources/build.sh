#!/bin/sh
#
# Build the Docker image.
#
set -e

# https://github.com/facebook/flow/issues/8846#issuecomment-1046616800
apk add --no-cache gcompat
apk add --no-cache libatomic

mkdir -p /app/code
cp /docker-resources/package.json /app/package.json
cp /docker-resources/.flowconfig /app/.flowconfig
cd /app && npm install
