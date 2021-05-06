#!/bin/bash
# https://docs.docker.com/storage/volumes/#restore-container-from-backup
CONTAINER="${1}"
TARNAME="${2}"
docker run --rm --volumes-from ${CONTAINER} -v /asrc/ecr/danielv/geoserver_volumes/backups:/backup ubuntu tar cvf "/backup/${TARNAME}" /opt/geoserver/data_dir