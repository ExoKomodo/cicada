#! /bin/bash

function build_tag_values() {
	if [[ ${BRANCH_NAME} = ${CI_PROD_BRANCH} ]]; then
		local REPO=exokomodo/daybreak

		local TAGS="${REPO}:${CICADA_NAME}-${BUILD_ID} ${REPO}:${CICADA_NAME}-latest"
	else
		local REPO=exokomodo/development

		local TAGS="${REPO}:${BRANCH_NAME}-${CICADA_NAME}-${BUILD_ID} ${REPO}:${BRANCH_NAME}-${CICADA_NAME}-latest"
	fi

	echo "${TAGS}"
}

function log() {
	echo "[CICADA] $@"
}
