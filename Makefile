.PHONY: migrations migrate run production


migrations:
	python3 manage.py makemigrations

migrate:
	python3 manage.py migrate

lint:
	flake8

format:
	black .
	isort .

run:
	python3 manage.py runserver

shell:
	python3 manage.py shell

test:
	pytest

docker-build:
	docker compose -f ./docker/production/docker-compose.yml build

docker-up:
	docker compose -f ./docker/production/docker-compose.yml up -d

docker-stop:
	docker compose -f ./docker/production/docker-compose.yml stop

docker-down:
	docker compose -f ./docker/production/docker-compose.yml down

docker-restart:
	docker compose -f ./docker/production/docker-compose.yml up -d --build
