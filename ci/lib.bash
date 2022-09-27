#! /bin/bash

function build_tag_values() {
	if [[ ${BRANCH_NAME} = ${CI_PRD_BRANCH} ]]; then
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
