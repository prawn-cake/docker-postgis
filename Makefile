# System variables
DOCKER_IMAGE=prawncake/postgis

help:
# target: help - Display callable targets
	@grep -e "^# target:" [Mm]akefile | sed -e 's/^# target: //g'


.PHONY: run_docker
run:
# target: run_docker - Run rocketws with docker
	@docker run -i -t -d -p 5433:5432 $(DOCKER_IMAGE) /bin/bash
