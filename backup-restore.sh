#!/bin/bash
docker run --rm --volumes-from asrc_geoserver_geoserver_1 -v $(pwd):/backup ubuntu bash -c "cd /opt && tar xvf /backup/geoserver_data-dir.tar --strip 1"
