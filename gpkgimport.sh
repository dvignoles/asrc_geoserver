#!/bin/bash
#input: "postgres connection string" geographyregion_{model}/'geography'_resolution.gpkg

# https://gdal.org/drivers/vector/pg.html
# "host=123.45.67.89 port=5432 dbname=targetdb user=myuser password=mypass"

pg_con="$1"
gpkg="$(basename $2)"

import_gpkg () {
    ogr2ogr -overwrite -f "PostgreSQL" PG:"$pg_con" \
    --config PG_USE_COPY YES \
    -nlt PROMOTE_TO_MULTI \
    -nln $3 \
    $1 $2
    #-doo CLOSING_STATEMENTS="$4" \
}

# shorten model name syntax to meet postgres tablename character limit
declare -A modelnames=( ["terraclimate"]="terra" \
                        ["wbmstabledist04"]="wbm04" \
                        ["wbmstabledist19"]="wbm19" \
                        ["wbmstableprist"]="wbmpr")

shorten_model () {
    IFS='+' read -ra model_split <<< "$1"
    model_part1="${model_split[0],,}"
    model_part2="${model_split[1],,}"
    model_part1_short="${modelnames[$model_part1]}"
    model_part2_short="${modelnames[$model_part2]}"
    echo "$model_part1_short+$model_part2_short"
}

# extract geography (schema), model/unit, and resolution
IFS='_' read -ra gpkg_split <<< "$gpkg"
geography="${gpkg_split[0],,}"
model="${gpkg_split[1],,}"
filename="${gpkg_split[2],,}"
resolution="${filename%.*}"

#separate model / geography gpkgs
if [[ "$model" == "geography" ]]
then 
    while read p; do
        tblname="${geography}.${p}_${resolution}"
        #closing_sql="UPDATE $tblname SET resolution='$resolution' WHERE 1=1;"
        import_gpkg $2 $p $tblname
    done <ghaas_spatialunits.txt
else
    model_short=$(shorten_model $model)
    while read p; do
        tblname=${geography}.${p}_${model_short}_${resolution}
        import_gpkg $2 $p $tblname
    done <ghaas_modeloutputs.txt
fi