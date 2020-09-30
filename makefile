all: build

build:
	docker pull postgis/postgis:12-2.5-alpine
	docker build -t pg12:latest .

tag:
	docker tag pg12:latest dbreedt/postgres-12-postgis:latest

push:
	docker push dbreedt/postgres-12-postgis:latest

update: build tag push
