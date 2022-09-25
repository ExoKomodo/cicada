#! /bin/bash

source cicada/ci/lib.bash

log "Logging into container registry..."

set -e

echo ${CICADA_REGISTRY_PASSWORD} | docker login -u ${CICADA_REGISTRY_USERNAME} --password-stdin

log "Successfully logged into container registry!"
