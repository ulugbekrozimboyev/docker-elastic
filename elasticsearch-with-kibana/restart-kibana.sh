docker stop kib01-test
docker rm kib01-test


docker run --name kib01-test \
		--net elastic \
		-p 5601:5601 \
		-e "ELASTICSEARCH_HOSTS=http://es01-test:9200" \
		docker.elastic.co/kibana/kibana:7.15.2
