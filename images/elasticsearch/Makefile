.PHONY: build


DOCKER_HOST ?= zengzhiyuan
ELASTICSEARCH_VERSION ?= 7.9.3

build:
	docker build -t $(DOCKER_HOST)/elasticsearch:$(ELASTICSEARCH_VERSION) .

push:
	docker push $(DOCKER_HOST)/elasticsearch:$(ELASTICSEARCH_VERSION)
