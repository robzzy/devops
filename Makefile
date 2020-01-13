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


# rabbitmq
install-rabbitmq:
	helm install my-rabbitmq \
	--set rabbitmq.username=admin \
	--set rabbitmq.password=$(RABBIT_PASS) \
	--set rabbitmq.erlangCookie=secretcookie \
	--set nameOverride=rabbitmq-service \
	--set fullnameOverride=rabbitmq-service \
	-f infrastructure/charts/rabbitmq.yaml \
	stable/rabbitmq