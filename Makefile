## Build docker image
.PHONY: docker-build
docker-build:
	docker build -t vulcanize/waffle-docker -f Dockerfile .