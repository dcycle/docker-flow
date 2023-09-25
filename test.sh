#!/bin/bash
set -e
docker pull node:alpine
docker build -t local-dcycle-flow-image .

echo "Make sure code passes"
docker run --rm -v $(pwd)/example01:/app/code local-dcycle-flow-image
echo "Make sure code fails"
! docker run --rm -v $(pwd)/example02:/app/code local-dcycle-flow-image
! docker run --rm -v $(pwd)/example03:/app/code local-dcycle-flow-image
! docker run --rm -v $(pwd)/example04:/app/code local-dcycle-flow-image
echo "All done with tests!"
