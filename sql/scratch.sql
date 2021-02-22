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