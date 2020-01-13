include .env
export

up:
	docker-compose up -d --build

down:
	docker-compose down

in-php:
	docker exec -u www-data:www-data -it ${PROJECT_NAME}_php bash