#! /bin/bash

source ${CICADA_CI_DIR}/lib.bash

log "Running docker compose..."

set -e

PROJECT_NAME=$1
shift
COMPOSE_SERVICE=$1
shift

COMPOSE_PRE_ARGS="${CICADA_PRE_ARG_FILE} -p ${PROJECT_NAME} --project-directory $(pwd)"
COMPOSE_POST_ARGS="--build --abort-on-container-exit"

docker-compose ${COMPOSE_PRE_ARGS} up ${COMPOSE_POST_ARGS} ${COMPOSE_SERVICE}

log "Successfully ran docker compose!"
