"""
Generate .sql files for view pivot table views of all annual outputs
"""

from geo.Geoserver import Geoserver
import subprocess as sp

# CONSTANTS
GROUP1 = {'hunits': ('hydrostn30_confluence', 'hydrostn30_mouth', 'grandv13hydrostn30_dam'),
          'outputs': ('discharge', 'riverwidth', 'riverdepth')}
GROUP2 = {'hunits': ('hydrostn30_basin', 'hydrostn30_subbasin', 'faogaul_country', 'faogaul_state'),
          'outputs': ('evapotranspiration', 'soilmoisture', 'relativesoilmoisture',
                      'rainpet', 'snowpack', 'runoff')}
TIME_RES = ('annual', 'monthly')
GEO_RES = ('01min', '03min')
MODEL_CONFIGS = ('terra+wbm04', 'terra+wbm19', 'terra+wbmpr')
START_YEAR = 1958
END_YEAR = 2019
PSQLF = 'psql.sql'


# SQL helper generators
def select_years(start, end):
    template = "SELECT {year} UNION ALL"
    selects = [template.format(year=y) for y in range(end, start, -1)]
    selects.append("SELECT {}".format(start))
    return "\n".join(selects)


def ct_cols(start, end, output):

    # outputs with zonalmean/min/max columns use custom type zonaloutput
    dtype = "real"
    if output in GROUP2['outputs']:
        dtype = "zonaloutput"

    template = "{output}_{year} {dtype},"
    cols = [template.format(output=output, year=y, dtype=dtype)
            for y in range(start, end)]
    cols.append("{output}_{year} {dtype}".format(
        output=output, year=end, dtype=dtype))
    return "\n".join(cols)


def unpack_zonaltype(start, end, output):
    template = "({output}_{year}).zmean as {output}_zonalmean_{year},\n\
       ({output}_{year}).zmin as {output}_zonalmin_{year},\n\
       ({output}_{year}).zmax as {output}_zonalmax_{year}\n"

    cols = [template.format(output=output, year=y)
            for y in range(start, end+1)]
    return ','.join(cols)


def pivot_annual_modeloutput_sql(base_table, hunit_table):
    output_name = base_table.split('_')[0]
    sel_years = select_years(START_YEAR, END_YEAR)
    cols = ct_cols(START_YEAR, END_YEAR, output_name)

    if output_name not in GROUP2['outputs']:
        # deal with zonalmean/min/max outputs
        template = """
DROP VIEW IF EXISTS "v_{base_table}";
CREATE OR REPLACE VIEW "v_{base_table}"
    AS
    SELECT * FROM crosstab(
    $$SELECT sampleid, year, {output}
        FROM brazil."{base_table}"
        ORDER BY sampleid$$,
    $${sel_years}$$
    )
    AS ct(sampleid bigint, {ct_columns}) INNER JOIN brazil."{hunit_table}" ON sampleid=id;"""

        return template.format(output=output_name, base_table=base_table, hunit_table=hunit_table,
                               sel_years=sel_years, ct_columns=cols)
    else:
        template = """
DROP VIEW IF EXISTS "v_{base_table}";
CREATE OR REPLACE VIEW "v_{base_table}"
    AS
    SELECT sampleid, geom, {unpack_zones}
    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM brazil."{base_table}"
        ORDER BY 1
        $$,
    $${sel_years}$$
    )
    AS ct(sampleid bigint, {ct_columns}) INNER JOIN brazil."{hunit_table}" ON sampleid=id;"""
        unpack_zones = unpack_zonaltype(START_YEAR, END_YEAR, output_name)
        return template.format(output=output_name, base_table=base_table, hunit_table=hunit_table,
                               sel_years=sel_years, ct_columns=cols, unpack_zones=unpack_zones)


def pivot_annual_modeloutput_sqlfile(ffile, model_config, geo_res, hunit, output):
    hu_short = hunit.split('_')[1]
    hunit_table = '_'.join((hunit, res))

    # handle dam/resovoirdam naming inconsistency
    if hu_short == "dam":
        hu_short = "reservoirdam"

    base_table = '_'.join((output, hu_short, 'annual', model_config, geo_res))
    sql = pivot_annual_modeloutput_sql(base_table, hunit_table)
    if sql is not None:
        ffile.write(sql)
        ffile.write('\n')
    return 'v_{}'.format(base_table)

def publish_geoserver_sqlview(geo,view_name):
    sql = 'SELECT * FROM {}'.format(view_name)
    name = view_name[8:-1].replace('+','-')
    geo.publish_featurestore_sqlview(name=name, store_name='brazil-db', sql=sql, key_column='sampleid', workspace='brazil-ghaas')


if __name__ == '__main__':    
    view_names = []
    sql_files = []

    # loop over model/res creating view defintions to file
    for m in MODEL_CONFIGS:
        for res in GEO_RES:
            sql_file = "_".join((m, 'annual', res)) + '.sql'
            sql_files.append(sql_file)
            with open(sql_file, 'w') as f:
                for hu in GROUP1['hunits']:
                    for out in GROUP1['outputs']:
                        v = pivot_annual_modeloutput_sqlfile(f, m, res, hu, out)
                        # execute sql file here
                        view_names.append('brazil."{}"'.format(v))
                for hu in GROUP2['hunits']:
                    for out in GROUP2['outputs']:
                        v = pivot_annual_modeloutput_sqlfile(f, m, res, hu, out)
                        # execute sql file here
                        view_names.append('brazil."{}"'.format(v))
    
    # write psql script
    with open(PSQLF, 'w') as f:
        f.write('SET search_path=brazil,public;\n')
        for sqlf in sql_files:
            f.write("\i {}\n".format(sqlf))

    # execute psql.sql
    psql_c = "psql -h 10.16.12.60 -p 5435 -d ghaas -U danielv -f {}".format(PSQLF)
    sp.run(psql_c.split())
    
    # publish sql view geosever layers
    geo = Geoserver('10.16.12.61:9998/geoserver', username='admin', password='geoserver')
    for v in view_names:
        publish_geoserver_sqlview(geo,v)
