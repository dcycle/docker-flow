set -e
docker pull node
docker build -t local-dcycle-flow-image .

echo "Make sure code passes"
docker run --rm -v $(pwd)/example01:/app/code local-dcycle-flow-image
echo "Make sure code fails"
! docker run --rm -v $(pwd)/example02:/app/code local-dcycle-flow-image
echo "All done with tests!"
