# System variables
DOCKER_IMAGE=prawncake/docker-postgis
PORT=5433
CONTAINER_PORT=5432
CONTAINER_NAME=postgis
#CMD=/bin/bash
CMD=
USER=docker
DB_NAME=test_db


help:
# target: help - Display callable targets
	@grep -e "^# target:" [Mm]akefile | sed -e 's/^# target: //g'


.PHONY: run
run:
# target: run - Run docker container
	@docker run --name $(CONTAINER_NAME) -i -t -d -p $(PORT):$(CONTAINER_PORT) $(DOCKER_IMAGE) $(CMD)
	
.PHONY: build
build:
# target: build - Build docker image
	@docker build -t $(DOCKER_IMAGE) $(CURDIR)
	
	
.PHONY: pull
pull:
# target: pull - Pull docker image from docker hub
	@docker pull $(DOCKER_IMAGE)
	

.PHONY: connect
connect:
# target: connect - Connect to database with psql
	@psql -U$(USER) -hlocalhost -p$(PORT)5433 -d$(DB_NAME)
