# devops Makefile

DOCKER_HOST ?= zengzhiyuan

# build
build-python-images:
	docker build -t zzy/python-base:latest -f images/python-base.docker images
	docker build -t zzy/python-builder:latest -f images/python-builder.docker images

# push
push-python-images:
	docker tag zzy/python-base:latest $(DOCKER_HOST)/python-base:latest
	docker tag zzy/python-builder:latest $(DOCKER_HOST)/python-builder:latest
	docker push $(DOCKER_HOST)/python-base:latest
	docker push $(DOCKER_HOST)/python-builder:latest

apply-common:
	make -C common deploy
