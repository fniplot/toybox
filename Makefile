.PHONY: exec

exec:
	docker exec -u `id -u $(USER)`:`id -g $(USER)` -it toybox /bin/bash
