# https://github.com/elastic/elasticsearch-docker
FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.1.0
MAINTAINER Gabriel M. Schmith <gabrielschmith@hotmail.com>

COPY ./elasticsearch/config/sg/ config/sg/
COPY ./elasticsearch/bin/ bin/
COPY ./elasticsearch/docker-entrypoint.sh /

# Search Guard plugin
# https://github.com/floragunncom/search-guard/wiki
RUN elasticsearch-plugin install --batch com.floragunn:search-guard-6:6.1.0-21.0 \
	&& chmod +x plugins/search-guard-6/tools/*.sh \
	&& chown -R elasticsearch config/sg/ \
	&& chmod -R go= config/sg/

# Permissions to docker entrypoint
RUN ["chmod", "+x", "/docker-entrypoint.sh"]

# # EntryPoint
#ENTRYPOINT ["/docker-entrypoint.sh"]

# Search Guard must be initialized after Elasticsearch is started
CMD ["sleep 60", "&&" "bin/init_sg.sh"]

# Add your elasticsearch plugins setup here
# Example: RUN elasticsearch-plugin install analysis-icu
