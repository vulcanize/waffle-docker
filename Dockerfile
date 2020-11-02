FROM node:11.10.1

ADD . /go/src/github.com/vulcanize/waffle-docker
WORKDIR /go/src/github.com/vulcanize/waffle-docker
RUN npm install -g yarn
RUN yarn install

ENTRYPOINT ["/usr/local/bin/npx", "waffle"]
CMD ["./environments/example.json"]