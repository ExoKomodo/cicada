#! /bin/bash

source ${CICADA_CI_DIR}/lib.bash

log "Setting up Jenkins user for Docker volume permissions..."

set -e

CICADA_JENKINS_USER=$1
shift
CICADA_JENKINS_GROUP=$1
shift

groupadd -r -f -g ${CICADA_JENKINS_GROUP} jenkins
useradd -r -u ${CICADA_JENKINS_USER} -g ${CICADA_JENKINS_GROUP} jenkins

log "Successfully set up Jenkins user for Docker volume permissions!"
