FROM node

RUN mkdir -p /app/code

WORKDIR /app

COPY docker-resources/package.json package.json

RUN npm install

ENTRYPOINT [ "/app/node_modules/.bin/flow", "check", "/app/code" ]
