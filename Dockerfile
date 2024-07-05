FROM quay.io/keycloak/keycloak:latest

WORKDIR /opt/keycloak

RUN mkdir /opt/keycloak/tools

COPY docker-entrypoint.sh /opt/keycloak/tools

EXPOSE 80

ENTRYPOINT [ "/opt/keycloak/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]
