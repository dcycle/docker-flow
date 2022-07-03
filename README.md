[![CircleCI](https://circleci.com/gh/dcycle/docker-flow.svg?style=svg)](https://circleci.com/gh/dcycle/docker-flow)

Type-check Javascript code with [flow](https://flow.org).

For example (passing):

    docker run --rm -v $(pwd)/example01:/app/code dcycle/flow:1

For example (failing):

    docker run --rm -v $(pwd)/example02:/app/code dcycle/flow:1

For example (Node.js module):

    docker run --rm -v $(pwd)/example03:/app/code dcycle/flow:1

For example (ignoring node_modules):

    docker run --rm -v $(pwd)/example04:/app/code dcycle/flow:1

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/flow/).

Suppressing errors
-----

See [Error Suppressions, in the flow documentation](https://flow.org/en/docs/errors/).

Example usage
-----

See the [Dcycle Starterkit Node project](https://github.com/dcycle/starterkit-node).

More resources
-----

* [Flow comments](https://flow.org/en/docs/types/comments/).
* [Getting started with Flow and Nodejs, by Artem Riasnianskyi, Jun 23, 2017, Codeburst](https://codeburst.io/getting-started-with-flow-and-nodejs-b8442d3d2e57)
