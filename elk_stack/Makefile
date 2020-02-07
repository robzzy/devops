deploy-pv:
	kubectl apply -f ./es-pvc.yaml

.PHONY: deploy-elasticsearch
deploy-elasticsearch: deploy-pv
	helm install elasticsearch elastic/elasticsearch -f ./elasticsearch.yaml

deploy-kibana:
	helm install kibana elastic/kibana

deploy-metricbeat:
	helm install metricbeat elastic/metricbeat

deploy-filebeat:
	kubectl apply -f ./filebeat-kubernetes.yaml

deploy-logstash:
	helm install logging-logstash stable/logstash -f ./logstash.yaml

deploy-elk: deploy-elasticsearch deploy-kibana deploy-filebeat deploy-logstash
