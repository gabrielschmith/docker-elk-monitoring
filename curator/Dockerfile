FROM	python:2.7
MAINTAINER Gabriel M. Schmith <gabrielschmith@hotmail.com>

# grab gosu for easy step-down from root
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
RUN arch="$(dpkg --print-architecture)" \
	&& set -x \
	&& curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch" \
	&& curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch.asc" \
	&& gpg --verify /usr/local/bin/gosu.asc \
	&& rm /usr/local/bin/gosu.asc \
	&& chmod +x /usr/local/bin/gosu

# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added
RUN groupadd -r curator && useradd -r -g curator curator

RUN ["pip", "install", "elasticsearch-curator"]

COPY ./curator/docker-entrypoint.sh /

RUN ["chmod", "+x", "/docker-entrypoint.sh"]

ENV INTERVAL_IN_HOURS=24
ENV PATH_CONFIG=/root/.curator/curator.yml
ENV PATH_ACTIONS=/root/.curator/actions.yml
ENV ELASTICSEARCH_USER=admincurator
ENV ELASTICSEARCH_PASS=admincurator

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["curator"] 
