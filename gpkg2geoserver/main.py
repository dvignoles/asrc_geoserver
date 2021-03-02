from gpkg2postgis.gpkg2postgis import import_gpkg, sanitize_path
import argparse
from pathlib import Path


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "pg_con", help="postgres gdal driver connection string, \"dbname='databasename' host='addr' port='5432' user='x' password='y'\"")
    parser.add_argument('gpkg', type=Path,
                        help="GHAAS geopackage file or filepath")
    args = parser.parse_args()

    pg_con = args.pg_con
    gpkg = sanitize_path(args.gpkg)
    postgres_tables, gpkg_meta = import_gpkg(pg_con, gpkg)

    with open('postgres_tables.txt','w') as f:
        for p in postgres_tables:
            f.write(p,'\n')

