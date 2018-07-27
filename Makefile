DOCKER_COMPOSE?=docker-compose
RUN=$(DOCKER_COMPOSE) run --rm app
EXEC?=$(DOCKER_COMPOSE) exec app

.PHONY: start stop build up reset bash clear

start: build up

stop:
	$(DOCKER_COMPOSE) kill
	$(DOCKER_COMPOSE) rm -v --force

build:
	$(DOCKER_COMPOSE) pull --parallel --ignore-pull-failures
	$(DOCKER_COMPOSE) build --force-rm --pull

up:
	$(DOCKER_COMPOSE) up -d --remove-orphans

reset: stop start

bash:
	$(RUN) /bin/bash

clear:
	-$(EXEC) rm -rf supervisord.log supervisord.pid npm-debug.log .tmp