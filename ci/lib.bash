#! /bin/bash

export CICADA_ROOT_DIR=".cicada"
export CICADA_COMPOSE_DIR="${CICADA_ROOT_DIR}/compose"
export CICADA_HEAD_DIR="${CICADA_ROOT_DIR}/head"
export CICADA_CI_DIR="${CICADA_HEAD_DIR}/ci"
export CICADA_PRE_ARG_FILE="-f ${CICADA_COMPOSE_DIR}/docker-compose.yaml"

function build_tag_values() {
	if [[ ${BRANCH_NAME} = ${CICADA_PRD_BRANCH} ]]; then
		local REPO=${CICADA_DOCKER_HUB_USERNAME}/${CICADA_DOCKER_HUB_PRD_PROJECT}

		local TAGS="${REPO}:${CICADA_NAME}-${BUILD_ID} ${REPO}:${CICADA_NAME}-latest"
	else
		local REPO=${CICADA_DOCKER_HUB_USERNAME}/${CICADA_DOCKER_HUB_DEV_PROJECT}

		local TAGS="${REPO}:${BRANCH_NAME}-${CICADA_NAME}-${BUILD_ID} ${REPO}:${BRANCH_NAME}-${CICADA_NAME}-latest"
	fi

	echo "${TAGS}"
}

function log() {
	echo "[CICADA] $@"
}
