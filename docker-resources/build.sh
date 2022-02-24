#!/bin/bash
#
# Build the Docker image.
#
set -e

mkdir -p /app/code
cp /docker-resources/package.json /app/package.json
cp /docker-resources/.flowconfig /app/.flowconfig
cd /app && npm install
