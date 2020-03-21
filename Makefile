.PHONY: *

include ./docker/.env
APP_PATH=${PWD}/app
export

up-%:
	docker-compose --file ./docker/$*/docker-compose.yml up -d --build --remove-orphans

down:
	docker-compose down --no-build

in-php:
	docker exec -u www-data:www-data -it ${PROJECT_NAME}-php bash