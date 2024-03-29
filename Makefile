include .env

up-prod:
	docker build --tag=${DOCKER_IMAGE_NAME} .
	docker run --mount type=bind,source="$(PWD)"/app,target=/var/www/app -d --name ${DOCKER_CONTAINER_NAME} -p ${HOST_PORT}:${APP_PORT} ${DOCKER_IMAGE_NAME}
up-dev:
	docker build --tag=${DOCKER_IMAGE_NAME} -f dev.dockerfile .
	docker run --mount type=bind,source="$(PWD)"/app,target=/var/www/app -d --name ${DOCKER_CONTAINER_NAME} -p ${HOST_PORT}:${APP_PORT} ${DOCKER_IMAGE_NAME}
build-dev:
	docker restart ${DOCKER_CONTAINER_NAME}
down:
	docker stop ${DOCKER_CONTAINER_NAME}
	docker rm ${DOCKER_CONTAINER_NAME}