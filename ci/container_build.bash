#! /bin/bash

source ${CICADA_CI_DIR}/lib.bash

log "Building container image..."

set -e

TAG_VALUES=$(build_tag_values)

TAGS=""
for tag in ${TAG_VALUES}; do
	TAGS="${TAGS} -t ${tag}"
done

docker build ${TAGS} -f Dockerfiles/${CICADA_NAME}/Dockerfile .

log "Successfully built container image!"
