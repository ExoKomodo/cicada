#! /bin/bash

source cicada/ci/lib.bash

log "Building container image..."

set -e

TAG_VALUES=$(build_tag_values)

TAGS=""
for tag in ${TAG_VALUES}; do
	TAGS="${TAGS} -t ${tag}"
done

docker build \
	--mount type=bind,source="$(pwd)",target=/app \
	${TAGS} \
	-f Dockerfiles/${CICADA_NAME}/Dockerfile \
	.

log "Successfully built container image!"
