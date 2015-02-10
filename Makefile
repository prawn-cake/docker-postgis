# System variables
DOCKER_IMAGE=prawncake/docker-postgis

help:
# target: help - Display callable targets
	@grep -e "^# target:" [Mm]akefile | sed -e 's/^# target: //g'


.PHONY: run
run:
# target: run - Run docker container
	@docker run -i -t -d -p 5433:5432 $(DOCKER_IMAGE) /bin/bash
	
.PHONY: build
build:
# target: build - Build docker image
	@docker build -t $(DOCKER_IMAGE) .
	
	
.PHONY: pull
pull:
# target: pull - Pull docker image from docker hub
	@docker pull $(DOCKER_IMAGE)
