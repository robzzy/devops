deploy-es:
	make -C charts/elasticsearch deploy

deploy-filebeat:
	make -C charts/filebeat deploy

deploy-kibana:
	make -C charts/kibana deploy

deploy-logstash:
	make -C charts/logstash deploy

deploy-elk: deploy-es deploy-filebeat deploy-kibana deploy-logstash
