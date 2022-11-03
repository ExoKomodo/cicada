#! /bin/bash

source ${CICADA_CI_DIR}/functions.bash

log "Fixing ownership of mounted directories..."

set -e

if [ -z ${CICADA_JENKINS_USER} ];
then
	echo "Must define env var: CICADA_JENKINS_USER"
	exit 1
fi

if [ -z ${CICADA_JENKINS_GROUP} ];
then
	echo "Must define env var: CICADA_JENKINS_GROUP"
	exit 1
fi

chown -R ${CICADA_JENKINS_USER}:${CICADA_JENKINS_GROUP} .

log "Successfully fixed ownership of mounted directories!"
