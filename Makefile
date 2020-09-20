.PHONY: *

include ./docker/.env
export

build:
	export COMPOSE_FILE=docker/build/docker-compose.yml && docker-compose build --no-cache

up-%:
	export COMPOSE_FILE=docker/deploy/$*/docker-compose.yml && docker-compose up -d --no-build --force-recreate --remove-orphans

in-%:
	docker exec -u www-data -it ${COMPOSE_PROJECT_NAME}_$* bash
