# https://github.com/elastic/kibana-docker
FROM docker.elastic.co/kibana/kibana-oss:6.0.0

RUN kibana-plugin install https://github.com/sirensolutions/sentinl/releases/download/tag-6.0.0/sentinl-v6.0.0.zip

# Search Guard plugin
# http://docs.search-guard.com/latest/kibana-plugin-installation
RUN kibana-plugin install https://repo1.maven.org/maven2/com/floragunn/search-guard-kibana-plugin/6.0.0-6.beta1/search-guard-kibana-plugin-6.0.0-6.beta1.zip

# Add your kibana plugins setup here
# Example: RUN kibana-plugin install <name|url>