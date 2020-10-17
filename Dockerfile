FROM node:11.10.1

ADD . /go/src/github.com/vulcanize/waffle_docker
WORKDIR /go/src/github.com/vulcanize/waffle_docker
RUN npm install --save-dev npx
RUN npm install --save-dev ethereum-waffle

ARG CONFIG_FILE="./environments/example.json"

ENTRYPOINT /usr/local/bin/npx waffle $CONFIG_FILE
