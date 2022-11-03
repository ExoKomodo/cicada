#! /bin/bash

source ${CICADA_CI_DIR}/lib.bash

log "Cleaning up docker compose images..."

set -e

docker-compose ${CICADA_PRE_ARG_FILE} down --rmi all

log "Successfully cleaned up docker compose images!"
