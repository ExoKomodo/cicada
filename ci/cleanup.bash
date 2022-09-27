#! /bin/bash

source ${CICADA_CI_DIR}/lib.bash

log "Cleaning up docker compose images..."

set -e

docker-compose ${COMPOSE_FILE_ARG} down --rmi all

log "Successfully cleaned up docker compose images!"
