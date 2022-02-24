FROM node

COPY docker-resources /docker-resources

RUN cd /docker-resources && ./build.sh && rm -rf /docker-resources

WORKDIR /app

ENTRYPOINT [ "/app/node_modules/.bin/flow", "check", "/app/code" ]
