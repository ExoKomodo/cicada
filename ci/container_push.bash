#! /bin/bash

source ${CICADA_CI_DIR}/lib.bash

log "Pushing container to image registry..."

set -e

TAG_VALUES=$(build_tag_values)

for tag in ${TAG_VALUES}; do
	docker push ${tag}
done

log "Successfully pushed container to image registry!"