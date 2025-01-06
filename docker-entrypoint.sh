#!/bin/bash

# Configurar variáveis de ambiente
export KC_DB="${KC_DB:-postgres}"
export KC_DB_URL="${KC_DB_URL:-jdbc:postgresql://dokku-postgres-keycloakdb:5432/keycloakdb}"
export KC_DB_USERNAME="${KC_DB_USERNAME:-postgres}"
export KC_DB_PASSWORD="${KC_DB_PASSWORD}"
export KC_HOSTNAME="${KC_HOSTNAME:-loginunico.neometa.com.br}"
export KC_HTTP_PORT="${KC_HTTP_PORT:-8080}"
export KC_PROXY="${KC_PROXY:-edge}"
export KC_HEALTH_ENABLED="${KC_HEALTH_ENABLED:-true}"
export KC_METRICS_ENABLED="${KC_METRICS_ENABLED:-true}"

# Iniciar o Keycloak
exec /opt/keycloak/bin/kc.sh start \
    --optimized \
    --http-enabled=true \
    --http-port=$KC_HTTP_PORT \
    --hostname=$KC_HOSTNAME \
    --proxy=$KC_PROXY \
    --health-enabled=$KC_HEALTH_ENABLED \
    --metrics-enabled=$KC_METRICS_ENABLED