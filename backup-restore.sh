#!/bin/bash
CONTAINER="${1}"
TARGETBACKUPTAR="${2}"

docker run --rm --volumes-from ${CONTAINER} -v /asrc/ecr/danielv/geoserver_volumes/backups:/backup ubuntu bash -c "cd /opt && tar xvf /backup/${TARGETBACKUPTAR} --strip 1"
