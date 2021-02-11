#!/bin/bash
#input: geographyregion_{model}/'geography'_resolution.gpkg


import_gpkg () {
    ogr2ogr -overwrite -f "PostgreSQL" PG:"host= port=5435 user= dbname=ghaas password=" \
    --config PG_USE_COPY YES \
    -nlt PROMOTE_TO_MULTI \
    -nln $3 \
    -doo CLOSING_STATEMENTS="$4" \
    $1 $2
}

# extract geography (schema), model/unit, and resolution
gpkg="$(basename $1)"
IFS='_' read -ra gpkg_split <<< "$gpkg"
geography="${gpkg_split[0],,}"
model="${gpkg_split[1],,}"
filename="${gpkg_split[2],,}"
resolution="${filename%.*}"

# separate model / geography gpkgs
if [[ "$model" == "geography" ]]
then 
    while read p; do
        tblname="${geography}.${p}_${resolution}"
        #closing_sql="UPDATE $tblname SET resolution='$resolution' WHERE 1=1;"
        import_gpkg $1 $p $tblname
    done <ghaas_spatialunits.txt
else
    while read p; do
        tblname=${geography}.${p}_${model}__${resolution}
        import_gpkg $1 $p $tblname
    done <ghaas_modeloutputs.txt
fi