.PHONY: test
SHELL = /bin/bash

HOST ?= $(shell ifconfig en0 | grep netmask | awk '{print $$2}' )


PROJECT ?= elasticsearch
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
