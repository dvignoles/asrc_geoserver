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

-- Combine annual value + 12 monthly for a year

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
    $$
      SELECT 1958
        $$
    )
AS ct(sampleid bigint, discharge_1958 real);

ALTER TABLE "discharge_confluence_monthly_terra+wbm04_01min" ALTER COLUMN date TYPE DATE
using to_date(date, 'YYYY-MM');

CREATE index "discharge_confluence_monthly_terra+wbm04_01min_date_idx" ON "discharge_confluence_monthly_terra+wbm04_01min"(date);
DROP index "discharge_confluence_monthly_terra+wbm04_01min_date_idx";


DROP TABLE  discharge_confluence_terrawbm04_01min_1958;
CREATE TABLE discharge_confluence_terrawbm04_01min_1958 AS
with annual as (SELECT * FROM crosstab(
    $$SELECT sampleid, year, discharge
        FROM "discharge_confluence_annual_terra+wbm04_01min"
        ORDER BY sampleid$$,
    $$
      SELECT 1958
        $$
    )
AS ct1(sampleid bigint, discharge_1958_annual real))

SELECT annual.sampleid, discharge_1958_annual,discharge_1958_01, discharge_1958_02, discharge_1958_03,
       discharge_1958_04, discharge_1958_05, discharge_1958_06,
       discharge_1958_07, discharge_1958_08, discharge_1958_09,
       discharge_1958_10, discharge_1958_11, discharge_1958_12
FROM crosstab(
    $$SELECT sampleid, date, discharge
        FROM "discharge_confluence_monthly_terra+wbm04_01min"
        ORDER BY 1
        $$,
    $$SELECT '1958-12-01' UNION ALL
      SELECT '1958-11-01' UNION ALL
      SELECT '1958-10-01' UNION ALL
      SELECT '1958-09-01' UNION ALL
      SELECT '1958-08-01' UNION ALL
      SELECT '1958-07-01' UNION ALL
      SELECT '1958-06-01' UNION ALL
      SELECT '1958-05-01' UNION ALL
      SELECT '1958-04-01' UNION ALL
      SELECT '1958-03-01' UNION ALL
      SELECT '1958-02-01' UNION ALL
      SELECT '1958-01-01'
        $$
    )
AS ct2(sampleid bigint, discharge_1958_01 real, discharge_1958_02 real, discharge_1958_03 real,
    discharge_1958_04 real, discharge_1958_05 real, discharge_1958_06 real,
    discharge_1958_07 real, discharge_1958_08 real, discharge_1958_09 real,
    discharge_1958_10 real, discharge_1958_11 real, discharge_1958_12 real)
INNER JOIN annual on annual.sampleid=ct2.sampleid;

EXPLAIN ANALYSE
SELECT * FROM discharge_confluence_terrawbm04_01min_1958 mod
INNER JOIN hydrostn30_confluence_01min hstn on mod.sampleid=hstn.id;

SELECT * FROM brazil.discharge_confluence_terrawbm04_01min_1958;
SELECT * FROM "discharge_confluence_monthly_terra+wbm04_01min" WHERE sampleid=1 AND year=1958;


-- array_agg monthly values into one column
DROP TABLE aaa;

CREATE TYPE public.discharge_all
    as (annual real, monthly real[]);

CREATE TABLE aaa AS
SELECT a.sampleid as sampleid, a.year as year, (annual_discharge,monthly_discharge)::discharge_all as discharge FROM
(SELECT sampleid, year, array_agg(discharge ORDER BY month ASC) as monthly_discharge
FROM "discharge_confluence_monthly_terra+wbm04_01min"
GROUP BY sampleid,year) a
INNER JOIN
(SELECT sampleid, year, discharge as annual_discharge
    FROM "discharge_confluence_annual_terra+wbm04_01min"
    ) b
ON a.sampleid=b.sampleid AND a.year = b.year
ORDER BY sampleid, year;

SELECT * FROM aaa;

CREATE TABLE aaa_pivot AS
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
        FROM brazil.aaa
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
SELECT 1958'::text) ct(sampleid bigint, discharge_1958 discharge_all, discharge_1959 discharge_all, discharge_1960 discharge_all,
                       discharge_1961 discharge_all, discharge_1962 discharge_all, discharge_1963 discharge_all, discharge_1964 discharge_all,
                       discharge_1965 discharge_all, discharge_1966 discharge_all, discharge_1967 discharge_all, discharge_1968 discharge_all,
                       discharge_1969 discharge_all, discharge_1970 discharge_all, discharge_1971 discharge_all, discharge_1972 discharge_all,
                       discharge_1973 discharge_all, discharge_1974 discharge_all, discharge_1975 discharge_all, discharge_1976 discharge_all,
                       discharge_1977 discharge_all, discharge_1978 discharge_all, discharge_1979 discharge_all, discharge_1980 discharge_all,
                       discharge_1981 discharge_all, discharge_1982 discharge_all, discharge_1983 discharge_all, discharge_1984 discharge_all,
                       discharge_1985 discharge_all, discharge_1986 discharge_all, discharge_1987 discharge_all, discharge_1988 discharge_all,
                       discharge_1989 discharge_all, discharge_1990 discharge_all, discharge_1991 discharge_all, discharge_1992 discharge_all,
                       discharge_1993 discharge_all, discharge_1994 discharge_all, discharge_1995 discharge_all, discharge_1996 discharge_all,
                       discharge_1997 discharge_all, discharge_1998 discharge_all, discharge_1999 discharge_all, discharge_2000 discharge_all,
                       discharge_2001 discharge_all, discharge_2002 discharge_all, discharge_2003 discharge_all, discharge_2004 discharge_all,
                       discharge_2005 discharge_all, discharge_2006 discharge_all, discharge_2007 discharge_all, discharge_2008 discharge_all,
                       discharge_2009 discharge_all, discharge_2010 discharge_all, discharge_2011 discharge_all, discharge_2012 discharge_all,
                       discharge_2013 discharge_all, discharge_2014 discharge_all, discharge_2015 discharge_all, discharge_2016 discharge_all,
                       discharge_2017 discharge_all, discharge_2018 discharge_all, discharge_2019 discharge_all);

EXPLAIN ANALYSE
SELECT * FROM aaa_pivot;

-- this would be view used in geoserver per year OR as parameterized view using %year%
CREATE OR REPLACE VIEW test123 AS
SELECT sampleid, (discharge_1958).annual as discharge_1958_annual
       ,(discharge_1958).monthly[1] as discharge_1958_01
        ,(discharge_1958).monthly[2] as discharge_1958_02
        ,(discharge_1958).monthly[3] as discharge_1958_03
        ,(discharge_1958).monthly[4] as discharge_1958_04
        ,(discharge_1958).monthly[5] as discharge_1958_05
        ,(discharge_1958).monthly[6] as discharge_1958_06
        ,(discharge_1958).monthly[7] as discharge_1958_07
        ,(discharge_1958).monthly[8] as discharge_1958_08
        ,(discharge_1958).monthly[9] as discharge_1958_09
        ,(discharge_1958).monthly[10] as discharge_1958_10
        ,(discharge_1958).monthly[11] as discharge_1958_11
        ,(discharge_1958).monthly[12] as discharge_1958_12
        ,hstn.*
FROM aaa_pivot
INNER JOIN hydrostn30_confluence_01min hstn on sampleid=hstn.id
ORDER BY sampleid;

EXPLAIN ANALYSE
    SELECT * FROM test123;

CREATE TYPE public.zonal_output_ym
    as (annual_zonalmean real, annual_zonalmin real, annual_zonalmax real, monthly_zonalmean real[],
    monthly_zonalmin real[], monthly_zonalmax real[]);

CREATE TABLE bbb AS
SELECT a.sampleid as sampleid, a.year as year, (annual_zonalmean, annual_zonalmin, annual_zonalmax, monthly_zonalmean,
                                                monthly_zonalmin, monthly_zonalmax)::zonal_output_ym as zonal_output FROM
(SELECT sampleid, year, array_agg(zonalmean ORDER BY month ASC) as monthly_zonalmean,
        array_agg(zonalmin ORDER BY month ASC) as monthly_zonalmin,
        array_agg(zonalmax ORDER BY month ASC) as monthly_zonalmax
FROM "evapotranspiration_subbasin_monthly_terra+wbm04_01min"
GROUP BY sampleid,year) a
INNER JOIN
(SELECT sampleid, year, zonalmean as annual_zonalmean, zonalmin as annual_zonalmin, zonalmax as annual_zonalmax
    FROM "evapotranspiration_subbasin_annual_terra+wbm04_01min"
    ) b
ON a.sampleid=b.sampleid AND a.year = b.year
ORDER BY sampleid, year;

CREATE TABLE bbb_pivot AS
	SELECT ct.sampleid,
       ct.evapotranspiration_1958,
       ct.evapotranspiration_1959,
       ct.evapotranspiration_1960,
       ct.evapotranspiration_1961,
       ct.evapotranspiration_1962,
       ct.evapotranspiration_1963,
       ct.evapotranspiration_1964,
       ct.evapotranspiration_1965,
       ct.evapotranspiration_1966,
       ct.evapotranspiration_1967,
       ct.evapotranspiration_1968,
       ct.evapotranspiration_1969,
       ct.evapotranspiration_1970,
       ct.evapotranspiration_1971,
       ct.evapotranspiration_1972,
       ct.evapotranspiration_1973,
       ct.evapotranspiration_1974,
       ct.evapotranspiration_1975,
       ct.evapotranspiration_1976,
       ct.evapotranspiration_1977,
       ct.evapotranspiration_1978,
       ct.evapotranspiration_1979,
       ct.evapotranspiration_1980,
       ct.evapotranspiration_1981,
       ct.evapotranspiration_1982,
       ct.evapotranspiration_1983,
       ct.evapotranspiration_1984,
       ct.evapotranspiration_1985,
       ct.evapotranspiration_1986,
       ct.evapotranspiration_1987,
       ct.evapotranspiration_1988,
       ct.evapotranspiration_1989,
       ct.evapotranspiration_1990,
       ct.evapotranspiration_1991,
       ct.evapotranspiration_1992,
       ct.evapotranspiration_1993,
       ct.evapotranspiration_1994,
       ct.evapotranspiration_1995,
       ct.evapotranspiration_1996,
       ct.evapotranspiration_1997,
       ct.evapotranspiration_1998,
       ct.evapotranspiration_1999,
       ct.evapotranspiration_2000,
       ct.evapotranspiration_2001,
       ct.evapotranspiration_2002,
       ct.evapotranspiration_2003,
       ct.evapotranspiration_2004,
       ct.evapotranspiration_2005,
       ct.evapotranspiration_2006,
       ct.evapotranspiration_2007,
       ct.evapotranspiration_2008,
       ct.evapotranspiration_2009,
       ct.evapotranspiration_2010,
       ct.evapotranspiration_2011,
       ct.evapotranspiration_2012,
       ct.evapotranspiration_2013,
       ct.evapotranspiration_2014,
       ct.evapotranspiration_2015,
       ct.evapotranspiration_2016,
       ct.evapotranspiration_2017,
       ct.evapotranspiration_2018,
       ct.evapotranspiration_2019
FROM crosstab('SELECT sampleid, year, zonal_output
        FROM brazil.bbb
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
SELECT 1958'::text) ct(sampleid bigint, evapotranspiration_1958 zonal_output_ym, evapotranspiration_1959 zonal_output_ym, evapotranspiration_1960 zonal_output_ym,
                       evapotranspiration_1961 zonal_output_ym, evapotranspiration_1962 zonal_output_ym, evapotranspiration_1963 zonal_output_ym, evapotranspiration_1964 zonal_output_ym,
                       evapotranspiration_1965 zonal_output_ym, evapotranspiration_1966 zonal_output_ym, evapotranspiration_1967 zonal_output_ym, evapotranspiration_1968 zonal_output_ym,
                       evapotranspiration_1969 zonal_output_ym, evapotranspiration_1970 zonal_output_ym, evapotranspiration_1971 zonal_output_ym, evapotranspiration_1972 zonal_output_ym,
                       evapotranspiration_1973 zonal_output_ym, evapotranspiration_1974 zonal_output_ym, evapotranspiration_1975 zonal_output_ym, evapotranspiration_1976 zonal_output_ym,
                       evapotranspiration_1977 zonal_output_ym, evapotranspiration_1978 zonal_output_ym, evapotranspiration_1979 zonal_output_ym, evapotranspiration_1980 zonal_output_ym,
                       evapotranspiration_1981 zonal_output_ym, evapotranspiration_1982 zonal_output_ym, evapotranspiration_1983 zonal_output_ym, evapotranspiration_1984 zonal_output_ym,
                       evapotranspiration_1985 zonal_output_ym, evapotranspiration_1986 zonal_output_ym, evapotranspiration_1987 zonal_output_ym, evapotranspiration_1988 zonal_output_ym,
                       evapotranspiration_1989 zonal_output_ym, evapotranspiration_1990 zonal_output_ym, evapotranspiration_1991 zonal_output_ym, evapotranspiration_1992 zonal_output_ym,
                       evapotranspiration_1993 zonal_output_ym, evapotranspiration_1994 zonal_output_ym, evapotranspiration_1995 zonal_output_ym, evapotranspiration_1996 zonal_output_ym,
                       evapotranspiration_1997 zonal_output_ym, evapotranspiration_1998 zonal_output_ym, evapotranspiration_1999 zonal_output_ym, evapotranspiration_2000 zonal_output_ym,
                       evapotranspiration_2001 zonal_output_ym, evapotranspiration_2002 zonal_output_ym, evapotranspiration_2003 zonal_output_ym, evapotranspiration_2004 zonal_output_ym,
                       evapotranspiration_2005 zonal_output_ym, evapotranspiration_2006 zonal_output_ym, evapotranspiration_2007 zonal_output_ym, evapotranspiration_2008 zonal_output_ym,
                       evapotranspiration_2009 zonal_output_ym, evapotranspiration_2010 zonal_output_ym, evapotranspiration_2011 zonal_output_ym, evapotranspiration_2012 zonal_output_ym,
                       evapotranspiration_2013 zonal_output_ym, evapotranspiration_2014 zonal_output_ym, evapotranspiration_2015 zonal_output_ym, evapotranspiration_2016 zonal_output_ym,
                       evapotranspiration_2017 zonal_output_ym, evapotranspiration_2018 zonal_output_ym, evapotranspiration_2019 zonal_output_ym);

EXPLAIN ANALYSE
SELECT sampleid, (evapotranspiration_1958).annual_zonalmean as evapotranspiration_1958_annual_zonalmean,
       (evapotranspiration_1958).annual_zonalmin as evapotranspiration_1958_annual_zonalmin,
       (evapotranspiration_1958).annual_zonalmax as evapotranspiration_1958_annual_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmean[1] as evapotranspiration_1958_01_zonalmean
        ,(evapotranspiration_1958).monthly_zonalmean[2] as evapotranspiration_1958_02_zonalmean
        ,(evapotranspiration_1958).monthly_zonalmean[3] as evapotranspiration_1958_03_zonalmean
        ,(evapotranspiration_1958).monthly_zonalmean[4] as evapotranspiration_1958_04_zonalmean
        ,(evapotranspiration_1958).monthly_zonalmean[5] as evapotranspiration_1958_05_zonalmean
        ,(evapotranspiration_1958).monthly_zonalmean[6] as evapotranspiration_1958_06_zonalmean
        ,(evapotranspiration_1958).monthly_zonalmean[7] as evapotranspiration_1958_07_zonalmean
        ,(evapotranspiration_1958).monthly_zonalmean[8] as evapotranspiration_1958_08_zonalmean
        ,(evapotranspiration_1958).monthly_zonalmean[9] as evapotranspiration_1958_09_zonalmean
        ,(evapotranspiration_1958).monthly_zonalmean[10] as evapotranspiration_1958_10_zonalmean
        ,(evapotranspiration_1958).monthly_zonalmean[11] as evapotranspiration_1958_11_zonalmean
        ,(evapotranspiration_1958).monthly_zonalmean[12] as evapotranspiration_1958_12_zonalmean

        ,(evapotranspiration_1958).monthly_zonalmin[1] as evapotranspiration_1958_01_zonalmin
        ,(evapotranspiration_1958).monthly_zonalmin[2] as evapotranspiration_1958_02_zonalmin
        ,(evapotranspiration_1958).monthly_zonalmin[3] as evapotranspiration_1958_03_zonalmin
        ,(evapotranspiration_1958).monthly_zonalmin[4] as evapotranspiration_1958_04_zonalmin
        ,(evapotranspiration_1958).monthly_zonalmin[5] as evapotranspiration_1958_05_zonalmin
        ,(evapotranspiration_1958).monthly_zonalmin[6] as evapotranspiration_1958_06_zonalmin
        ,(evapotranspiration_1958).monthly_zonalmin[7] as evapotranspiration_1958_07_zonalmin
        ,(evapotranspiration_1958).monthly_zonalmin[8] as evapotranspiration_1958_08_zonalmin
        ,(evapotranspiration_1958).monthly_zonalmin[9] as evapotranspiration_1958_09_zonalmin
        ,(evapotranspiration_1958).monthly_zonalmin[10] as evapotranspiration_1958_10_zonalmin
        ,(evapotranspiration_1958).monthly_zonalmin[11] as evapotranspiration_1958_11_zonalmin
        ,(evapotranspiration_1958).monthly_zonalmin[12] as evapotranspiration_1958_12_zonalmean

               ,(evapotranspiration_1958).monthly_zonalmax[1] as evapotranspiration_1958_01_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmax[2] as evapotranspiration_1958_02_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmax[3] as evapotranspiration_1958_03_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmax[4] as evapotranspiration_1958_04_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmax[5] as evapotranspiration_1958_05_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmax[6] as evapotranspiration_1958_06_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmax[7] as evapotranspiration_1958_07_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmax[8] as evapotranspiration_1958_08_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmax[9] as evapotranspiration_1958_09_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmax[10] as evapotranspiration_1958_10_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmax[11] as evapotranspiration_1958_11_zonalmax
        ,(evapotranspiration_1958).monthly_zonalmax[12] as evapotranspiration_1958_12_zonalmax,
       hstn.*
FROM bbb_pivot
INNER JOIN hydrostn30_subbasin_01min hstn on sampleid=hstn.id
ORDER BY sampleid;

-- Loop over all table name variations
do
$$
    declare
        measurements text[] :=
                '{"evapotranspiration","soilmoisture","rainpet","relativesoilmoisture","runoff","snowpack"}';
        v          text;
        h_units text[] := '{"subbasin","country","basin","state"}';
        w           text;
        chrono text[] := '{"annual","monthly"}';
        x           text;
        model_configs text[] := '{"terra+wbm04","terra+wbm19","terra+wbmpr"}';
        y           text;
        resolutions text[] := '{"01min","03min"}';
        z           text;
    begin
        FOREACH v in ARRAY measurements
            LOOP
                FOREACH w in ARRAY h_units
                    LOOP
                        FOREACH x in ARRAY chrono
                            LOOP
                                FOREACH y in ARRAY model_configs
                                    LOOP
                                        FOREACH z in ARRAY resolutions
                                            LOOP
                                                RAISE notice '%_%_%_%_%', v, w, x, y, z;
                                            end loop;
                                    end loop;
                            end loop;
                    end loop;
            end loop;
    end
$$;