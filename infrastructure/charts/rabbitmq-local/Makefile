.PHONY: test
SHELL = /bin/bash

HOST ?= $(shell ifconfig | grep netmask | tail -n 1 | awk '{print $$2}' )


PROJECT ?= rabbitmq
NAMESPACE ?= default

lint:
	helm lint . --strict

test:
	helm upgrade ${PROJECT} . \
	--dry-run --debug --install \
	--namespace=${NAMESPACE} \
	--set hostIP=${HOST};

deploy:
	helm upgrade ${PROJECT} . \
	--install \
	--namespace=${NAMESPACE} \
	--set hostIP=${HOST};
