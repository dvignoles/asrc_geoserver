#!/bin/bash
# https://docs.docker.com/storage/volumes/#restore-container-from-backup
docker run --rm --volumes-from geoserver_geoserver_1 -v /asrc/ecr/danielv/geoserver:/backup ubuntu tar cvf /backup/geoserver_data-dir.tar /opt/geoserver/data_dir
