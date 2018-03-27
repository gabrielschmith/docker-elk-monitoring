# Docker Definition for ElasticSearch Curator
FROM python:2.7.8-slim
MAINTAINER Gabriel M. Schmith <gabrielschmith@hotmail.com>

RUN pip install --quiet elasticsearch-curator

VOLUME [ "/home" ]

ENTRYPOINT [ "sh", "-c", "/usr/local/bin/curator", "--config", "/home/curator.yml", " /home/action_file.yml" ]