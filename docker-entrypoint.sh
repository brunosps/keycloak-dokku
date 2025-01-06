#!/bin/bash

# Configurar variáveis de ambiente
export KC_DB="${KC_DB:-postgres}"
export KC_DB_URL="${KC_DB_URL:-jdbc:postgresql://dokku-postgres-keycloakdb:5432/keycloakdb}"
export KC_DB_USERNAME="${KC_DB_USERNAME:-postgres}"
export KC_DB_PASSWORD="${KC_DB_PASSWORD}"
export KC_HOSTNAME="${KC_HOSTNAME:-loginunico.neometa.com.br}"
export KC_HTTP_PORT="${KC_HTTP_PORT:-8080}"

# Iniciar o Keycloak
exec /opt/keycloak/bin/kc.sh start \
    --http-enabled=true \
    --http-port=$KC_HTTP_PORT \
    --hostname=$KC_HOSTNAME \
    --proxy-headers=xforwarded
