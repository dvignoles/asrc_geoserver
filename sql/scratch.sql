SELECT sampleid, (soilmoisture_1958).zmean as soilmoisture_zonalmean_1958,
       (soilmoisture_1958).zmin as soilmoisture_zonalmin_1958 ,
       (soilmoisture_1958).zmax as soilmoisture_zonalmax_1958,
       (soilmoisture_1959).zmean as soilmoisture_zonalmean_1958,
       (soilmoisture_1959).zmin as soilmoisture_zonalmin_1958 ,
       (soilmoisture_1959).zmax as soilmoisture_zonalmax_1958,
    (soilmoisture_1960).zmean as soilmoisture_zonalmean_1958,
       (soilmoisture_1960).zmin as soilmoisture_zonalmin_1958 ,
       (soilmoisture_1960).zmax as soilmoisture_zonalmax_1958

FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "soilmoisture_basin_annual_terra+wbmpr_01min"
        ORDER BY 1
        $$,
    $$SELECT '1958' UNION ALL
      SELECT '1959' UNION ALL
      SELECT '1960'
        $$
    )
AS ct(sampleid bigint, soilmoisture_1960 zonaloutput, soilmoisture_1959 zonaloutput, soilmoisture_1958 zonaloutput);

EXPLAIN ANALYSE
SELECT * FROM crosstab(
    $$SELECT sampleid, date, discharge
        FROM "discharge_confluence_monthly_terra+wbm04_01min"
        $$,
    $$SELECT '1958-01' UNION ALL
      SELECT '1958-02' UNION ALL
      SELECT '1958-03'
        $$
    )
AS ct(sampleid bigint, discharge_1958_01 real, discharge_1958_02 real, discharge_1958_03 real);

SELECT * FROM crosstab(
    $$SELECT sampleid, year, discharge
        FROM "discharge_confluence_annual_terra+wbm04_01min"
        ORDER BY sampleid$$,
    $$SELECT 1960 UNION ALL
      SELECT 1959 UNION ALL
      SELECT 1958
        $$
    )
AS ct(sampleid bigint, discharge_1958 real, discharge_1959 real, discharge_1960 real);

DROP VIEW IF EXISTS "v_discharge_confluence_annual_terra+wbm04_01min";
CREATE OR REPLACE VIEW "v_discharge_confluence_annual_terra+wbm04_01min"
AS
SELECT * FROM crosstab(
    $$SELECT sampleid, year, discharge
        FROM brazil."discharge_confluence_annual_terra+wbm04_01min"
        ORDER BY sampleid$$,
    $$SELECT 2019 UNION ALL
        SELECT 2018 UNION ALL
        SELECT 2017 UNION ALL
        SELECT 2016 UNION ALL
        SELECT 2015 UNION ALL
        SELECT 2014 UNION ALL
        SELECT 2013 UNION ALL
        SELECT 2012 UNION ALL
        SELECT 2011 UNION ALL
        SELECT 2010 UNION ALL
        SELECT 2009 UNION ALL
        SELECT 2008 UNION ALL
        SELECT 2007 UNION ALL
        SELECT 2006 UNION ALL
        SELECT 2005 UNION ALL
        SELECT 2004 UNION ALL
        SELECT 2003 UNION ALL
        SELECT 2002 UNION ALL
        SELECT 2001 UNION ALL
        SELECT 2000 UNION ALL
        SELECT 1999 UNION ALL
        SELECT 1998 UNION ALL
        SELECT 1997 UNION ALL
        SELECT 1996 UNION ALL
        SELECT 1995 UNION ALL
        SELECT 1994 UNION ALL
        SELECT 1993 UNION ALL
        SELECT 1992 UNION ALL
        SELECT 1991 UNION ALL
        SELECT 1990 UNION ALL
        SELECT 1989 UNION ALL
        SELECT 1988 UNION ALL
        SELECT 1987 UNION ALL
        SELECT 1986 UNION ALL
        SELECT 1985 UNION ALL
        SELECT 1984 UNION ALL
        SELECT 1983 UNION ALL
        SELECT 1982 UNION ALL
        SELECT 1981 UNION ALL
        SELECT 1980 UNION ALL
        SELECT 1979 UNION ALL
        SELECT 1978 UNION ALL
        SELECT 1977 UNION ALL
        SELECT 1976 UNION ALL
        SELECT 1975 UNION ALL
        SELECT 1974 UNION ALL
        SELECT 1973 UNION ALL
        SELECT 1972 UNION ALL
        SELECT 1971 UNION ALL
        SELECT 1970 UNION ALL
        SELECT 1969 UNION ALL
        SELECT 1968 UNION ALL
        SELECT 1967 UNION ALL
        SELECT 1966 UNION ALL
        SELECT 1965 UNION ALL
        SELECT 1964 UNION ALL
        SELECT 1963 UNION ALL
        SELECT 1962 UNION ALL
        SELECT 1961 UNION ALL
        SELECT 1960 UNION ALL
        SELECT 1959 UNION ALL
        SELECT 1958
        $$
    )
    AS ct(sampleid bigint,
            discharge_1958 real,
            discharge_1959 real,
            discharge_1960 real,
            discharge_1961 real,
            discharge_1962 real,
            discharge_1963 real,
            discharge_1964 real,
            discharge_1965 real,
            discharge_1966 real,
            discharge_1967 real,
            discharge_1968 real,
            discharge_1969 real,
            discharge_1970 real,
            discharge_1971 real,
            discharge_1972 real,
            discharge_1973 real,
            discharge_1974 real,
            discharge_1975 real,
            discharge_1976 real,
            discharge_1977 real,
            discharge_1978 real,
            discharge_1979 real,
            discharge_1980 real,
            discharge_1981 real,
            discharge_1982 real,
            discharge_1983 real,
            discharge_1984 real,
            discharge_1985 real,
            discharge_1986 real,
            discharge_1987 real,
            discharge_1988 real,
            discharge_1989 real,
            discharge_1990 real,
            discharge_1991 real,
            discharge_1992 real,
            discharge_1993 real,
            discharge_1994 real,
            discharge_1995 real,
            discharge_1996 real,
            discharge_1997 real,
            discharge_1998 real,
            discharge_1999 real,
            discharge_2000 real,
            discharge_2001 real,
            discharge_2002 real,
            discharge_2003 real,
            discharge_2004 real,
            discharge_2005 real,
            discharge_2006 real,
            discharge_2007 real,
            discharge_2008 real,
            discharge_2009 real,
            discharge_2010 real,
            discharge_2011 real,
            discharge_2012 real,
            discharge_2013 real,
            discharge_2014 real,
            discharge_2015 real,
            discharge_2016 real,
            discharge_2017 real,
            discharge_2018 real,
            discharge_2019 real
            ) INNER JOIN hydrostn30_confluence_01min ON sampleid=id;

EXPLAIN ANALYSE
SELECT * FROM brazil."v_soilmoisture_subbasin_annual_terra+wbm04_01min";
SELECT * FROM "soilmoisture_subbasin_annual_terra+wbm04_01min";
SELECT * FROM brazil."v_runoff_basin_annual_terra+wbm04_01min";
SELECT * FROM brazil."v_riverwidth_confluence_annual_terra+wbm04_01min";
SELECT * FROM brazil."v_rainpet_country_annual_terra+wbm04_01min";

-- for country/state, set null geometries to empty geometries
-- GIS clients for whatever reason don't like null geometry
UPDATE brazil.faogaul_country_01min
SET geom=ST_GeomFromText('MULTIPOLYGON EMPTY')
WHERE geom is NULL;

UPDATE ghaas.brazil.hydrostn30_confluence_03min
SET geom=ST_GeomFromText('MULTIPOLYGON EMPTY')
WHERE geom is NULL;

create view brazil."v_discharge_confluence_annual_terra+wbm04_01min_nogeom"(sampleid, discharge_1958, discharge_1959, discharge_1960, discharge_1961, discharge_1962, discharge_1963, discharge_1964, discharge_1965, discharge_1966, discharge_1967, discharge_1968, discharge_1969, discharge_1970, discharge_1971, discharge_1972, discharge_1973, discharge_1974, discharge_1975, discharge_1976, discharge_1977, discharge_1978, discharge_1979, discharge_1980, discharge_1981, discharge_1982, discharge_1983, discharge_1984, discharge_1985, discharge_1986, discharge_1987, discharge_1988, discharge_1989, discharge_1990, discharge_1991, discharge_1992, discharge_1993, discharge_1994, discharge_1995, discharge_1996, discharge_1997, discharge_1998, discharge_1999, discharge_2000, discharge_2001, discharge_2002, discharge_2003, discharge_2004, discharge_2005, discharge_2006, discharge_2007, discharge_2008, discharge_2009, discharge_2010, discharge_2011, discharge_2012, discharge_2013, discharge_2014, discharge_2015, discharge_2016, discharge_2017, discharge_2018, discharge_2019) as
	SELECT ct.sampleid,
       ct.discharge_1958,
       ct.discharge_1959,
       ct.discharge_1960,
       ct.discharge_1961,
       ct.discharge_1962,
       ct.discharge_1963,
       ct.discharge_1964,
       ct.discharge_1965,
       ct.discharge_1966,
       ct.discharge_1967,
       ct.discharge_1968,
       ct.discharge_1969,
       ct.discharge_1970,
       ct.discharge_1971,
       ct.discharge_1972,
       ct.discharge_1973,
       ct.discharge_1974,
       ct.discharge_1975,
       ct.discharge_1976,
       ct.discharge_1977,
       ct.discharge_1978,
       ct.discharge_1979,
       ct.discharge_1980,
       ct.discharge_1981,
       ct.discharge_1982,
       ct.discharge_1983,
       ct.discharge_1984,
       ct.discharge_1985,
       ct.discharge_1986,
       ct.discharge_1987,
       ct.discharge_1988,
       ct.discharge_1989,
       ct.discharge_1990,
       ct.discharge_1991,
       ct.discharge_1992,
       ct.discharge_1993,
       ct.discharge_1994,
       ct.discharge_1995,
       ct.discharge_1996,
       ct.discharge_1997,
       ct.discharge_1998,
       ct.discharge_1999,
       ct.discharge_2000,
       ct.discharge_2001,
       ct.discharge_2002,
       ct.discharge_2003,
       ct.discharge_2004,
       ct.discharge_2005,
       ct.discharge_2006,
       ct.discharge_2007,
       ct.discharge_2008,
       ct.discharge_2009,
       ct.discharge_2010,
       ct.discharge_2011,
       ct.discharge_2012,
       ct.discharge_2013,
       ct.discharge_2014,
       ct.discharge_2015,
       ct.discharge_2016,
       ct.discharge_2017,
       ct.discharge_2018,
       ct.discharge_2019
FROM crosstab('SELECT sampleid, year, discharge
        FROM brazil."discharge_confluence_annual_terra+wbm04_01min"
        ORDER BY sampleid'::text, 'SELECT 2019 UNION ALL
SELECT 2018 UNION ALL
SELECT 2017 UNION ALL
SELECT 2016 UNION ALL
SELECT 2015 UNION ALL
SELECT 2014 UNION ALL
SELECT 2013 UNION ALL
SELECT 2012 UNION ALL
SELECT 2011 UNION ALL
SELECT 2010 UNION ALL
SELECT 2009 UNION ALL
SELECT 2008 UNION ALL
SELECT 2007 UNION ALL
SELECT 2006 UNION ALL
SELECT 2005 UNION ALL
SELECT 2004 UNION ALL
SELECT 2003 UNION ALL
SELECT 2002 UNION ALL
SELECT 2001 UNION ALL
SELECT 2000 UNION ALL
SELECT 1999 UNION ALL
SELECT 1998 UNION ALL
SELECT 1997 UNION ALL
SELECT 1996 UNION ALL
SELECT 1995 UNION ALL
SELECT 1994 UNION ALL
SELECT 1993 UNION ALL
SELECT 1992 UNION ALL
SELECT 1991 UNION ALL
SELECT 1990 UNION ALL
SELECT 1989 UNION ALL
SELECT 1988 UNION ALL
SELECT 1987 UNION ALL
SELECT 1986 UNION ALL
SELECT 1985 UNION ALL
SELECT 1984 UNION ALL
SELECT 1983 UNION ALL
SELECT 1982 UNION ALL
SELECT 1981 UNION ALL
SELECT 1980 UNION ALL
SELECT 1979 UNION ALL
SELECT 1978 UNION ALL
SELECT 1977 UNION ALL
SELECT 1976 UNION ALL
SELECT 1975 UNION ALL
SELECT 1974 UNION ALL
SELECT 1973 UNION ALL
SELECT 1972 UNION ALL
SELECT 1971 UNION ALL
SELECT 1970 UNION ALL
SELECT 1969 UNION ALL
SELECT 1968 UNION ALL
SELECT 1967 UNION ALL
SELECT 1966 UNION ALL
SELECT 1965 UNION ALL
SELECT 1964 UNION ALL
SELECT 1963 UNION ALL
SELECT 1962 UNION ALL
SELECT 1961 UNION ALL
SELECT 1960 UNION ALL
SELECT 1959 UNION ALL
SELECT 1958'::text) ct(sampleid bigint, discharge_1958 real, discharge_1959 real, discharge_1960 real,
                       discharge_1961 real, discharge_1962 real, discharge_1963 real, discharge_1964 real,
                       discharge_1965 real, discharge_1966 real, discharge_1967 real, discharge_1968 real,
                       discharge_1969 real, discharge_1970 real, discharge_1971 real, discharge_1972 real,
                       discharge_1973 real, discharge_1974 real, discharge_1975 real, discharge_1976 real,
                       discharge_1977 real, discharge_1978 real, discharge_1979 real, discharge_1980 real,
                       discharge_1981 real, discharge_1982 real, discharge_1983 real, discharge_1984 real,
                       discharge_1985 real, discharge_1986 real, discharge_1987 real, discharge_1988 real,
                       discharge_1989 real, discharge_1990 real, discharge_1991 real, discharge_1992 real,
                       discharge_1993 real, discharge_1994 real, discharge_1995 real, discharge_1996 real,
                       discharge_1997 real, discharge_1998 real, discharge_1999 real, discharge_2000 real,
                       discharge_2001 real, discharge_2002 real, discharge_2003 real, discharge_2004 real,
                       discharge_2005 real, discharge_2006 real, discharge_2007 real, discharge_2008 real,
                       discharge_2009 real, discharge_2010 real, discharge_2011 real, discharge_2012 real,
                       discharge_2013 real, discharge_2014 real, discharge_2015 real, discharge_2016 real,
                       discharge_2017 real, discharge_2018 real, discharge_2019 real);

SELECT * FROM brazil."v_discharge_confluence_annual_terra+wbm04_01min_nogeom";


