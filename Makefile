.PHONY: server
server:
	docker-compose run --rm --service-ports mint start --host 0.0.0.0

.PHONY: build
build:
	docker-compose run --rm mint build

.PHONY: format
format:
	docker-compose run --rm mint format

.PHONY: install
install:
	docker-compose run --rm mint install
