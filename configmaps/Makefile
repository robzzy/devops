# common configmaps
NAMESPACE ?= default
CONTEXT ?= david.k8s.local

apply-configmaps:
	kubectl apply -f common.yaml --namespace=$(NAMESPACE) --context=$(CONTEXT)
