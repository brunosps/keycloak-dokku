FROM quay.io/keycloak/keycloak:26.0

WORKDIR /opt/keycloak

# Copiar arquivos necessários
COPY docker-entrypoint.sh /opt/keycloak/docker-entrypoint.sh
COPY themes /opt/keycloak/themes
COPY conf/keycloak.conf /opt/keycloak/conf/keycloak.conf

# Trocar para o usuário root temporariamente para alterar permissões
USER root
RUN chmod +x /opt/keycloak/docker-entrypoint.sh

# Retornar para o usuário padrão utilizado pela imagem base
USER keycloak

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/docker-entrypoint.sh"]