FROM quay.io/keycloak/keycloak:26.0

WORKDIR /opt/keycloak

# Copiar arquivos necessários
COPY docker-entrypoint.sh /opt/keycloak/docker-entrypoint.sh
COPY themes /opt/keycloak/themes
COPY conf/keycloak.conf /opt/keycloak/conf/keycloak.conf

# Trocar para o usuário root temporariamente para alterar permissões
USER root
RUN chmod +x /opt/keycloak/docker-entrypoint.sh
RUN chown -R keycloak:keycloak /opt/keycloak/themes
RUN chown keycloak:keycloak /opt/keycloak/docker-entrypoint.sh

# Retornar para o usuário padrão utilizado pela imagem base
USER keycloak

# Build otimizado para produção (recomendado para v26.0)
RUN /opt/keycloak/bin/kc.sh build

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/docker-entrypoint.sh"]
