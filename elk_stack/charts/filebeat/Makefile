PROJECT ?= logging-filebeat
NAMESPACE ?= default

lint:
	helm lint . --strict

test:
	helm upgrade ${PROJECT} . \
	--dry-run --debug --install \
	--namespace=${NAMESPACE}

deploy:
	helm upgrade ${PROJECT} . \
	--install \
	--namespace=${NAMESPACE}
