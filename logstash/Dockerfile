# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:6.1.0
MAINTAINER Gabriel M. Schmith <gabrielschmith@hotmail.com>

# Elasticsearch
ENV ELASTICSEARCH_HOST=elasticsearch:9200
ENV ELASTICSEARCH_USER=logstash
ENV ELASTICSEARCH_PASS=logstash

# Redis
ENV REDIS_HOST=redis:6379
ENV REDIS_PASSWORD=123
ENV REDIS_DATATYPE=list
ENV REDIS_KEY=metricbeat

# Beats
ENV BEATS_PORT=5000

# Http
ENV HTTP_HOST=0.0.0.0
ENV HTTP_PORT=31311

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json
