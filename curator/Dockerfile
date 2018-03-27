# Docker Definition for ElasticSearch Curator
FROM ubuntu:14.04
MAINTAINER Gabriel M. Schmith <gabrielschmith@hotmail.com>

RUN apt-get update -q && apt-get install -qy python-pip
RUN pip install elasticsearch-curator

ENTRYPOINT ["/usr/local/bin/curator"]