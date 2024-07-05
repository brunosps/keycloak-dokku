FROM quay.io/keycloak/keycloak:latest

WORKDIR /opt/keycloak

COPY docker-entrypoint.sh /opt/keycloak/docker-entrypoint.sh

# Troca para o usuário root temporariamente para alterar permissões
USER root
RUN chmod +x /opt/keycloak/docker-entrypoint.sh

# Retorna para o usuário padrão utilizado pela imagem base
USER keycloak

EXPOSE 80

ENTRYPOINT [ "/opt/keycloak/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]
