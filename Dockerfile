FROM pravsingh/hygieia-ui:latest

ENV API_HOST devops-hygieiaapi

ENV API_PORT 8080

COPY conf-builder.sh /usr/bin/conf-builder.sh

RUN chmod +x /usr/bin/conf-builder.sh
