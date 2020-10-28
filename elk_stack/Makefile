REMOTE_HOST ?= zengzhiyuan
LOGSTASH_TAG ?= 7.9.3

deploy-es:
	make -C charts/elasticsearch deploy

deploy-filebeat:
	make -C charts/filebeat deploy

deploy-kibana:
	make -C charts/kibana deploy

deploy-logstash:
	make -C charts/logstash deploy

deploy-elk: deploy-es deploy-filebeat deploy-kibana deploy-logstash

build_images:
	docker build -t zengzhiyuan/logstash-oss:${LOGSTASH_TAG} -f images/logstash/Dockerfile images;

docker-push:
	docker push ${REMOTE_HOST}/logstash-oss:${LOGSTASH_TAG}
