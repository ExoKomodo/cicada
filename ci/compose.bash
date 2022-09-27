#! /bin/bash

source ${CICADA_CI_DIR}/lib.bash

log "Running docker compose..."

set -e

PROJECT_NAME=$1
shift
COMPOSE_SERVICE=$1
shift

env
COMPOSE_PRE_ARGS="-f ${CICADA_PIPELINES_DIR}/docker-compose.yaml -p ${PROJECT_NAME}"
COMPOSE_POST_ARGS="--build --abort-on-container-exit"

docker-compose ${COMPOSE_FILE_ARG} up ${COMPOSE_POST_ARGS} ${COMPOSE_SERVICE}

log "Successfully ran docker compose!"
