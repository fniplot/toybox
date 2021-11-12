.PHONY: run build

build:
	docker-compose up -d

run:
	docker exec -u `id -u $(USER)`:`id -g $(USER)` -it toybox /bin/bash
