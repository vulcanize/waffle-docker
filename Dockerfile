FROM node:latest
RUN npm install --silent -g npx
RUN npm install --save-dev ethereum-waffle

ARG CONFIG_FILE="./environments/example.json"
ARG USER="vdm"

RUN adduser -Du 5000 $USER
WORKDIR /app
RUN chown $USER /app
USER $USER

COPY --chown=5000:5000 --from=builder /go/src/github.com/vulcanize/waffle_docker/$CONFIG_FILE config.json
COPY --chown=5000:5000 --from=builder /go/src/github.com/vulcanize/waffle_docker/startup_script.sh .

# keep binaries immutable
COPY --from=builder /go/src/github.com/vulcanize/waffle_docker/environments environments

ENTRYPOINT ["/app/startup_script.sh"]