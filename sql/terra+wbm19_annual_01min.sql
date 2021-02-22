
DROP VIEW IF EXISTS "v_discharge_confluence_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_discharge_confluence_annual_terra+wbm19_01min"
    AS
    SELECT * FROM crosstab(
    $$SELECT sampleid, year, discharge
        FROM "discharge_confluence_annual_terra+wbm19_01min"
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, discharge_1958 real,
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
discharge_2019 real) INNER JOIN hydrostn30_confluence_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_riverwidth_confluence_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_riverwidth_confluence_annual_terra+wbm19_01min"
    AS
    SELECT * FROM crosstab(
    $$SELECT sampleid, year, riverwidth
        FROM "riverwidth_confluence_annual_terra+wbm19_01min"
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, riverwidth_1958 real,
riverwidth_1959 real,
riverwidth_1960 real,
riverwidth_1961 real,
riverwidth_1962 real,
riverwidth_1963 real,
riverwidth_1964 real,
riverwidth_1965 real,
riverwidth_1966 real,
riverwidth_1967 real,
riverwidth_1968 real,
riverwidth_1969 real,
riverwidth_1970 real,
riverwidth_1971 real,
riverwidth_1972 real,
riverwidth_1973 real,
riverwidth_1974 real,
riverwidth_1975 real,
riverwidth_1976 real,
riverwidth_1977 real,
riverwidth_1978 real,
riverwidth_1979 real,
riverwidth_1980 real,
riverwidth_1981 real,
riverwidth_1982 real,
riverwidth_1983 real,
riverwidth_1984 real,
riverwidth_1985 real,
riverwidth_1986 real,
riverwidth_1987 real,
riverwidth_1988 real,
riverwidth_1989 real,
riverwidth_1990 real,
riverwidth_1991 real,
riverwidth_1992 real,
riverwidth_1993 real,
riverwidth_1994 real,
riverwidth_1995 real,
riverwidth_1996 real,
riverwidth_1997 real,
riverwidth_1998 real,
riverwidth_1999 real,
riverwidth_2000 real,
riverwidth_2001 real,
riverwidth_2002 real,
riverwidth_2003 real,
riverwidth_2004 real,
riverwidth_2005 real,
riverwidth_2006 real,
riverwidth_2007 real,
riverwidth_2008 real,
riverwidth_2009 real,
riverwidth_2010 real,
riverwidth_2011 real,
riverwidth_2012 real,
riverwidth_2013 real,
riverwidth_2014 real,
riverwidth_2015 real,
riverwidth_2016 real,
riverwidth_2017 real,
riverwidth_2018 real,
riverwidth_2019 real) INNER JOIN hydrostn30_confluence_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_riverdepth_confluence_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_riverdepth_confluence_annual_terra+wbm19_01min"
    AS
    SELECT * FROM crosstab(
    $$SELECT sampleid, year, riverdepth
        FROM "riverdepth_confluence_annual_terra+wbm19_01min"
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, riverdepth_1958 real,
riverdepth_1959 real,
riverdepth_1960 real,
riverdepth_1961 real,
riverdepth_1962 real,
riverdepth_1963 real,
riverdepth_1964 real,
riverdepth_1965 real,
riverdepth_1966 real,
riverdepth_1967 real,
riverdepth_1968 real,
riverdepth_1969 real,
riverdepth_1970 real,
riverdepth_1971 real,
riverdepth_1972 real,
riverdepth_1973 real,
riverdepth_1974 real,
riverdepth_1975 real,
riverdepth_1976 real,
riverdepth_1977 real,
riverdepth_1978 real,
riverdepth_1979 real,
riverdepth_1980 real,
riverdepth_1981 real,
riverdepth_1982 real,
riverdepth_1983 real,
riverdepth_1984 real,
riverdepth_1985 real,
riverdepth_1986 real,
riverdepth_1987 real,
riverdepth_1988 real,
riverdepth_1989 real,
riverdepth_1990 real,
riverdepth_1991 real,
riverdepth_1992 real,
riverdepth_1993 real,
riverdepth_1994 real,
riverdepth_1995 real,
riverdepth_1996 real,
riverdepth_1997 real,
riverdepth_1998 real,
riverdepth_1999 real,
riverdepth_2000 real,
riverdepth_2001 real,
riverdepth_2002 real,
riverdepth_2003 real,
riverdepth_2004 real,
riverdepth_2005 real,
riverdepth_2006 real,
riverdepth_2007 real,
riverdepth_2008 real,
riverdepth_2009 real,
riverdepth_2010 real,
riverdepth_2011 real,
riverdepth_2012 real,
riverdepth_2013 real,
riverdepth_2014 real,
riverdepth_2015 real,
riverdepth_2016 real,
riverdepth_2017 real,
riverdepth_2018 real,
riverdepth_2019 real) INNER JOIN hydrostn30_confluence_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_discharge_mouth_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_discharge_mouth_annual_terra+wbm19_01min"
    AS
    SELECT * FROM crosstab(
    $$SELECT sampleid, year, discharge
        FROM "discharge_mouth_annual_terra+wbm19_01min"
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, discharge_1958 real,
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
discharge_2019 real) INNER JOIN hydrostn30_mouth_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_riverwidth_mouth_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_riverwidth_mouth_annual_terra+wbm19_01min"
    AS
    SELECT * FROM crosstab(
    $$SELECT sampleid, year, riverwidth
        FROM "riverwidth_mouth_annual_terra+wbm19_01min"
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, riverwidth_1958 real,
riverwidth_1959 real,
riverwidth_1960 real,
riverwidth_1961 real,
riverwidth_1962 real,
riverwidth_1963 real,
riverwidth_1964 real,
riverwidth_1965 real,
riverwidth_1966 real,
riverwidth_1967 real,
riverwidth_1968 real,
riverwidth_1969 real,
riverwidth_1970 real,
riverwidth_1971 real,
riverwidth_1972 real,
riverwidth_1973 real,
riverwidth_1974 real,
riverwidth_1975 real,
riverwidth_1976 real,
riverwidth_1977 real,
riverwidth_1978 real,
riverwidth_1979 real,
riverwidth_1980 real,
riverwidth_1981 real,
riverwidth_1982 real,
riverwidth_1983 real,
riverwidth_1984 real,
riverwidth_1985 real,
riverwidth_1986 real,
riverwidth_1987 real,
riverwidth_1988 real,
riverwidth_1989 real,
riverwidth_1990 real,
riverwidth_1991 real,
riverwidth_1992 real,
riverwidth_1993 real,
riverwidth_1994 real,
riverwidth_1995 real,
riverwidth_1996 real,
riverwidth_1997 real,
riverwidth_1998 real,
riverwidth_1999 real,
riverwidth_2000 real,
riverwidth_2001 real,
riverwidth_2002 real,
riverwidth_2003 real,
riverwidth_2004 real,
riverwidth_2005 real,
riverwidth_2006 real,
riverwidth_2007 real,
riverwidth_2008 real,
riverwidth_2009 real,
riverwidth_2010 real,
riverwidth_2011 real,
riverwidth_2012 real,
riverwidth_2013 real,
riverwidth_2014 real,
riverwidth_2015 real,
riverwidth_2016 real,
riverwidth_2017 real,
riverwidth_2018 real,
riverwidth_2019 real) INNER JOIN hydrostn30_mouth_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_riverdepth_mouth_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_riverdepth_mouth_annual_terra+wbm19_01min"
    AS
    SELECT * FROM crosstab(
    $$SELECT sampleid, year, riverdepth
        FROM "riverdepth_mouth_annual_terra+wbm19_01min"
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, riverdepth_1958 real,
riverdepth_1959 real,
riverdepth_1960 real,
riverdepth_1961 real,
riverdepth_1962 real,
riverdepth_1963 real,
riverdepth_1964 real,
riverdepth_1965 real,
riverdepth_1966 real,
riverdepth_1967 real,
riverdepth_1968 real,
riverdepth_1969 real,
riverdepth_1970 real,
riverdepth_1971 real,
riverdepth_1972 real,
riverdepth_1973 real,
riverdepth_1974 real,
riverdepth_1975 real,
riverdepth_1976 real,
riverdepth_1977 real,
riverdepth_1978 real,
riverdepth_1979 real,
riverdepth_1980 real,
riverdepth_1981 real,
riverdepth_1982 real,
riverdepth_1983 real,
riverdepth_1984 real,
riverdepth_1985 real,
riverdepth_1986 real,
riverdepth_1987 real,
riverdepth_1988 real,
riverdepth_1989 real,
riverdepth_1990 real,
riverdepth_1991 real,
riverdepth_1992 real,
riverdepth_1993 real,
riverdepth_1994 real,
riverdepth_1995 real,
riverdepth_1996 real,
riverdepth_1997 real,
riverdepth_1998 real,
riverdepth_1999 real,
riverdepth_2000 real,
riverdepth_2001 real,
riverdepth_2002 real,
riverdepth_2003 real,
riverdepth_2004 real,
riverdepth_2005 real,
riverdepth_2006 real,
riverdepth_2007 real,
riverdepth_2008 real,
riverdepth_2009 real,
riverdepth_2010 real,
riverdepth_2011 real,
riverdepth_2012 real,
riverdepth_2013 real,
riverdepth_2014 real,
riverdepth_2015 real,
riverdepth_2016 real,
riverdepth_2017 real,
riverdepth_2018 real,
riverdepth_2019 real) INNER JOIN hydrostn30_mouth_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_discharge_reservoirdam_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_discharge_reservoirdam_annual_terra+wbm19_01min"
    AS
    SELECT * FROM crosstab(
    $$SELECT sampleid, year, discharge
        FROM "discharge_reservoirdam_annual_terra+wbm19_01min"
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, discharge_1958 real,
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
discharge_2019 real) INNER JOIN grandv13hydrostn30_dam_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_riverwidth_reservoirdam_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_riverwidth_reservoirdam_annual_terra+wbm19_01min"
    AS
    SELECT * FROM crosstab(
    $$SELECT sampleid, year, riverwidth
        FROM "riverwidth_reservoirdam_annual_terra+wbm19_01min"
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, riverwidth_1958 real,
riverwidth_1959 real,
riverwidth_1960 real,
riverwidth_1961 real,
riverwidth_1962 real,
riverwidth_1963 real,
riverwidth_1964 real,
riverwidth_1965 real,
riverwidth_1966 real,
riverwidth_1967 real,
riverwidth_1968 real,
riverwidth_1969 real,
riverwidth_1970 real,
riverwidth_1971 real,
riverwidth_1972 real,
riverwidth_1973 real,
riverwidth_1974 real,
riverwidth_1975 real,
riverwidth_1976 real,
riverwidth_1977 real,
riverwidth_1978 real,
riverwidth_1979 real,
riverwidth_1980 real,
riverwidth_1981 real,
riverwidth_1982 real,
riverwidth_1983 real,
riverwidth_1984 real,
riverwidth_1985 real,
riverwidth_1986 real,
riverwidth_1987 real,
riverwidth_1988 real,
riverwidth_1989 real,
riverwidth_1990 real,
riverwidth_1991 real,
riverwidth_1992 real,
riverwidth_1993 real,
riverwidth_1994 real,
riverwidth_1995 real,
riverwidth_1996 real,
riverwidth_1997 real,
riverwidth_1998 real,
riverwidth_1999 real,
riverwidth_2000 real,
riverwidth_2001 real,
riverwidth_2002 real,
riverwidth_2003 real,
riverwidth_2004 real,
riverwidth_2005 real,
riverwidth_2006 real,
riverwidth_2007 real,
riverwidth_2008 real,
riverwidth_2009 real,
riverwidth_2010 real,
riverwidth_2011 real,
riverwidth_2012 real,
riverwidth_2013 real,
riverwidth_2014 real,
riverwidth_2015 real,
riverwidth_2016 real,
riverwidth_2017 real,
riverwidth_2018 real,
riverwidth_2019 real) INNER JOIN grandv13hydrostn30_dam_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_riverdepth_reservoirdam_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_riverdepth_reservoirdam_annual_terra+wbm19_01min"
    AS
    SELECT * FROM crosstab(
    $$SELECT sampleid, year, riverdepth
        FROM "riverdepth_reservoirdam_annual_terra+wbm19_01min"
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, riverdepth_1958 real,
riverdepth_1959 real,
riverdepth_1960 real,
riverdepth_1961 real,
riverdepth_1962 real,
riverdepth_1963 real,
riverdepth_1964 real,
riverdepth_1965 real,
riverdepth_1966 real,
riverdepth_1967 real,
riverdepth_1968 real,
riverdepth_1969 real,
riverdepth_1970 real,
riverdepth_1971 real,
riverdepth_1972 real,
riverdepth_1973 real,
riverdepth_1974 real,
riverdepth_1975 real,
riverdepth_1976 real,
riverdepth_1977 real,
riverdepth_1978 real,
riverdepth_1979 real,
riverdepth_1980 real,
riverdepth_1981 real,
riverdepth_1982 real,
riverdepth_1983 real,
riverdepth_1984 real,
riverdepth_1985 real,
riverdepth_1986 real,
riverdepth_1987 real,
riverdepth_1988 real,
riverdepth_1989 real,
riverdepth_1990 real,
riverdepth_1991 real,
riverdepth_1992 real,
riverdepth_1993 real,
riverdepth_1994 real,
riverdepth_1995 real,
riverdepth_1996 real,
riverdepth_1997 real,
riverdepth_1998 real,
riverdepth_1999 real,
riverdepth_2000 real,
riverdepth_2001 real,
riverdepth_2002 real,
riverdepth_2003 real,
riverdepth_2004 real,
riverdepth_2005 real,
riverdepth_2006 real,
riverdepth_2007 real,
riverdepth_2008 real,
riverdepth_2009 real,
riverdepth_2010 real,
riverdepth_2011 real,
riverdepth_2012 real,
riverdepth_2013 real,
riverdepth_2014 real,
riverdepth_2015 real,
riverdepth_2016 real,
riverdepth_2017 real,
riverdepth_2018 real,
riverdepth_2019 real) INNER JOIN grandv13hydrostn30_dam_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_evapotranspiration_basin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_evapotranspiration_basin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (evapotranspiration_1958).zmean as evapotranspiration_zonalmean_1958,
       (evapotranspiration_1958).zmin as evapotranspiration_zonalmin_1958,
       (evapotranspiration_1958).zmax as evapotranspiration_zonalmax_1958
,(evapotranspiration_1959).zmean as evapotranspiration_zonalmean_1959,
       (evapotranspiration_1959).zmin as evapotranspiration_zonalmin_1959,
       (evapotranspiration_1959).zmax as evapotranspiration_zonalmax_1959
,(evapotranspiration_1960).zmean as evapotranspiration_zonalmean_1960,
       (evapotranspiration_1960).zmin as evapotranspiration_zonalmin_1960,
       (evapotranspiration_1960).zmax as evapotranspiration_zonalmax_1960
,(evapotranspiration_1961).zmean as evapotranspiration_zonalmean_1961,
       (evapotranspiration_1961).zmin as evapotranspiration_zonalmin_1961,
       (evapotranspiration_1961).zmax as evapotranspiration_zonalmax_1961
,(evapotranspiration_1962).zmean as evapotranspiration_zonalmean_1962,
       (evapotranspiration_1962).zmin as evapotranspiration_zonalmin_1962,
       (evapotranspiration_1962).zmax as evapotranspiration_zonalmax_1962
,(evapotranspiration_1963).zmean as evapotranspiration_zonalmean_1963,
       (evapotranspiration_1963).zmin as evapotranspiration_zonalmin_1963,
       (evapotranspiration_1963).zmax as evapotranspiration_zonalmax_1963
,(evapotranspiration_1964).zmean as evapotranspiration_zonalmean_1964,
       (evapotranspiration_1964).zmin as evapotranspiration_zonalmin_1964,
       (evapotranspiration_1964).zmax as evapotranspiration_zonalmax_1964
,(evapotranspiration_1965).zmean as evapotranspiration_zonalmean_1965,
       (evapotranspiration_1965).zmin as evapotranspiration_zonalmin_1965,
       (evapotranspiration_1965).zmax as evapotranspiration_zonalmax_1965
,(evapotranspiration_1966).zmean as evapotranspiration_zonalmean_1966,
       (evapotranspiration_1966).zmin as evapotranspiration_zonalmin_1966,
       (evapotranspiration_1966).zmax as evapotranspiration_zonalmax_1966
,(evapotranspiration_1967).zmean as evapotranspiration_zonalmean_1967,
       (evapotranspiration_1967).zmin as evapotranspiration_zonalmin_1967,
       (evapotranspiration_1967).zmax as evapotranspiration_zonalmax_1967
,(evapotranspiration_1968).zmean as evapotranspiration_zonalmean_1968,
       (evapotranspiration_1968).zmin as evapotranspiration_zonalmin_1968,
       (evapotranspiration_1968).zmax as evapotranspiration_zonalmax_1968
,(evapotranspiration_1969).zmean as evapotranspiration_zonalmean_1969,
       (evapotranspiration_1969).zmin as evapotranspiration_zonalmin_1969,
       (evapotranspiration_1969).zmax as evapotranspiration_zonalmax_1969
,(evapotranspiration_1970).zmean as evapotranspiration_zonalmean_1970,
       (evapotranspiration_1970).zmin as evapotranspiration_zonalmin_1970,
       (evapotranspiration_1970).zmax as evapotranspiration_zonalmax_1970
,(evapotranspiration_1971).zmean as evapotranspiration_zonalmean_1971,
       (evapotranspiration_1971).zmin as evapotranspiration_zonalmin_1971,
       (evapotranspiration_1971).zmax as evapotranspiration_zonalmax_1971
,(evapotranspiration_1972).zmean as evapotranspiration_zonalmean_1972,
       (evapotranspiration_1972).zmin as evapotranspiration_zonalmin_1972,
       (evapotranspiration_1972).zmax as evapotranspiration_zonalmax_1972
,(evapotranspiration_1973).zmean as evapotranspiration_zonalmean_1973,
       (evapotranspiration_1973).zmin as evapotranspiration_zonalmin_1973,
       (evapotranspiration_1973).zmax as evapotranspiration_zonalmax_1973
,(evapotranspiration_1974).zmean as evapotranspiration_zonalmean_1974,
       (evapotranspiration_1974).zmin as evapotranspiration_zonalmin_1974,
       (evapotranspiration_1974).zmax as evapotranspiration_zonalmax_1974
,(evapotranspiration_1975).zmean as evapotranspiration_zonalmean_1975,
       (evapotranspiration_1975).zmin as evapotranspiration_zonalmin_1975,
       (evapotranspiration_1975).zmax as evapotranspiration_zonalmax_1975
,(evapotranspiration_1976).zmean as evapotranspiration_zonalmean_1976,
       (evapotranspiration_1976).zmin as evapotranspiration_zonalmin_1976,
       (evapotranspiration_1976).zmax as evapotranspiration_zonalmax_1976
,(evapotranspiration_1977).zmean as evapotranspiration_zonalmean_1977,
       (evapotranspiration_1977).zmin as evapotranspiration_zonalmin_1977,
       (evapotranspiration_1977).zmax as evapotranspiration_zonalmax_1977
,(evapotranspiration_1978).zmean as evapotranspiration_zonalmean_1978,
       (evapotranspiration_1978).zmin as evapotranspiration_zonalmin_1978,
       (evapotranspiration_1978).zmax as evapotranspiration_zonalmax_1978
,(evapotranspiration_1979).zmean as evapotranspiration_zonalmean_1979,
       (evapotranspiration_1979).zmin as evapotranspiration_zonalmin_1979,
       (evapotranspiration_1979).zmax as evapotranspiration_zonalmax_1979
,(evapotranspiration_1980).zmean as evapotranspiration_zonalmean_1980,
       (evapotranspiration_1980).zmin as evapotranspiration_zonalmin_1980,
       (evapotranspiration_1980).zmax as evapotranspiration_zonalmax_1980
,(evapotranspiration_1981).zmean as evapotranspiration_zonalmean_1981,
       (evapotranspiration_1981).zmin as evapotranspiration_zonalmin_1981,
       (evapotranspiration_1981).zmax as evapotranspiration_zonalmax_1981
,(evapotranspiration_1982).zmean as evapotranspiration_zonalmean_1982,
       (evapotranspiration_1982).zmin as evapotranspiration_zonalmin_1982,
       (evapotranspiration_1982).zmax as evapotranspiration_zonalmax_1982
,(evapotranspiration_1983).zmean as evapotranspiration_zonalmean_1983,
       (evapotranspiration_1983).zmin as evapotranspiration_zonalmin_1983,
       (evapotranspiration_1983).zmax as evapotranspiration_zonalmax_1983
,(evapotranspiration_1984).zmean as evapotranspiration_zonalmean_1984,
       (evapotranspiration_1984).zmin as evapotranspiration_zonalmin_1984,
       (evapotranspiration_1984).zmax as evapotranspiration_zonalmax_1984
,(evapotranspiration_1985).zmean as evapotranspiration_zonalmean_1985,
       (evapotranspiration_1985).zmin as evapotranspiration_zonalmin_1985,
       (evapotranspiration_1985).zmax as evapotranspiration_zonalmax_1985
,(evapotranspiration_1986).zmean as evapotranspiration_zonalmean_1986,
       (evapotranspiration_1986).zmin as evapotranspiration_zonalmin_1986,
       (evapotranspiration_1986).zmax as evapotranspiration_zonalmax_1986
,(evapotranspiration_1987).zmean as evapotranspiration_zonalmean_1987,
       (evapotranspiration_1987).zmin as evapotranspiration_zonalmin_1987,
       (evapotranspiration_1987).zmax as evapotranspiration_zonalmax_1987
,(evapotranspiration_1988).zmean as evapotranspiration_zonalmean_1988,
       (evapotranspiration_1988).zmin as evapotranspiration_zonalmin_1988,
       (evapotranspiration_1988).zmax as evapotranspiration_zonalmax_1988
,(evapotranspiration_1989).zmean as evapotranspiration_zonalmean_1989,
       (evapotranspiration_1989).zmin as evapotranspiration_zonalmin_1989,
       (evapotranspiration_1989).zmax as evapotranspiration_zonalmax_1989
,(evapotranspiration_1990).zmean as evapotranspiration_zonalmean_1990,
       (evapotranspiration_1990).zmin as evapotranspiration_zonalmin_1990,
       (evapotranspiration_1990).zmax as evapotranspiration_zonalmax_1990
,(evapotranspiration_1991).zmean as evapotranspiration_zonalmean_1991,
       (evapotranspiration_1991).zmin as evapotranspiration_zonalmin_1991,
       (evapotranspiration_1991).zmax as evapotranspiration_zonalmax_1991
,(evapotranspiration_1992).zmean as evapotranspiration_zonalmean_1992,
       (evapotranspiration_1992).zmin as evapotranspiration_zonalmin_1992,
       (evapotranspiration_1992).zmax as evapotranspiration_zonalmax_1992
,(evapotranspiration_1993).zmean as evapotranspiration_zonalmean_1993,
       (evapotranspiration_1993).zmin as evapotranspiration_zonalmin_1993,
       (evapotranspiration_1993).zmax as evapotranspiration_zonalmax_1993
,(evapotranspiration_1994).zmean as evapotranspiration_zonalmean_1994,
       (evapotranspiration_1994).zmin as evapotranspiration_zonalmin_1994,
       (evapotranspiration_1994).zmax as evapotranspiration_zonalmax_1994
,(evapotranspiration_1995).zmean as evapotranspiration_zonalmean_1995,
       (evapotranspiration_1995).zmin as evapotranspiration_zonalmin_1995,
       (evapotranspiration_1995).zmax as evapotranspiration_zonalmax_1995
,(evapotranspiration_1996).zmean as evapotranspiration_zonalmean_1996,
       (evapotranspiration_1996).zmin as evapotranspiration_zonalmin_1996,
       (evapotranspiration_1996).zmax as evapotranspiration_zonalmax_1996
,(evapotranspiration_1997).zmean as evapotranspiration_zonalmean_1997,
       (evapotranspiration_1997).zmin as evapotranspiration_zonalmin_1997,
       (evapotranspiration_1997).zmax as evapotranspiration_zonalmax_1997
,(evapotranspiration_1998).zmean as evapotranspiration_zonalmean_1998,
       (evapotranspiration_1998).zmin as evapotranspiration_zonalmin_1998,
       (evapotranspiration_1998).zmax as evapotranspiration_zonalmax_1998
,(evapotranspiration_1999).zmean as evapotranspiration_zonalmean_1999,
       (evapotranspiration_1999).zmin as evapotranspiration_zonalmin_1999,
       (evapotranspiration_1999).zmax as evapotranspiration_zonalmax_1999
,(evapotranspiration_2000).zmean as evapotranspiration_zonalmean_2000,
       (evapotranspiration_2000).zmin as evapotranspiration_zonalmin_2000,
       (evapotranspiration_2000).zmax as evapotranspiration_zonalmax_2000
,(evapotranspiration_2001).zmean as evapotranspiration_zonalmean_2001,
       (evapotranspiration_2001).zmin as evapotranspiration_zonalmin_2001,
       (evapotranspiration_2001).zmax as evapotranspiration_zonalmax_2001
,(evapotranspiration_2002).zmean as evapotranspiration_zonalmean_2002,
       (evapotranspiration_2002).zmin as evapotranspiration_zonalmin_2002,
       (evapotranspiration_2002).zmax as evapotranspiration_zonalmax_2002
,(evapotranspiration_2003).zmean as evapotranspiration_zonalmean_2003,
       (evapotranspiration_2003).zmin as evapotranspiration_zonalmin_2003,
       (evapotranspiration_2003).zmax as evapotranspiration_zonalmax_2003
,(evapotranspiration_2004).zmean as evapotranspiration_zonalmean_2004,
       (evapotranspiration_2004).zmin as evapotranspiration_zonalmin_2004,
       (evapotranspiration_2004).zmax as evapotranspiration_zonalmax_2004
,(evapotranspiration_2005).zmean as evapotranspiration_zonalmean_2005,
       (evapotranspiration_2005).zmin as evapotranspiration_zonalmin_2005,
       (evapotranspiration_2005).zmax as evapotranspiration_zonalmax_2005
,(evapotranspiration_2006).zmean as evapotranspiration_zonalmean_2006,
       (evapotranspiration_2006).zmin as evapotranspiration_zonalmin_2006,
       (evapotranspiration_2006).zmax as evapotranspiration_zonalmax_2006
,(evapotranspiration_2007).zmean as evapotranspiration_zonalmean_2007,
       (evapotranspiration_2007).zmin as evapotranspiration_zonalmin_2007,
       (evapotranspiration_2007).zmax as evapotranspiration_zonalmax_2007
,(evapotranspiration_2008).zmean as evapotranspiration_zonalmean_2008,
       (evapotranspiration_2008).zmin as evapotranspiration_zonalmin_2008,
       (evapotranspiration_2008).zmax as evapotranspiration_zonalmax_2008
,(evapotranspiration_2009).zmean as evapotranspiration_zonalmean_2009,
       (evapotranspiration_2009).zmin as evapotranspiration_zonalmin_2009,
       (evapotranspiration_2009).zmax as evapotranspiration_zonalmax_2009
,(evapotranspiration_2010).zmean as evapotranspiration_zonalmean_2010,
       (evapotranspiration_2010).zmin as evapotranspiration_zonalmin_2010,
       (evapotranspiration_2010).zmax as evapotranspiration_zonalmax_2010
,(evapotranspiration_2011).zmean as evapotranspiration_zonalmean_2011,
       (evapotranspiration_2011).zmin as evapotranspiration_zonalmin_2011,
       (evapotranspiration_2011).zmax as evapotranspiration_zonalmax_2011
,(evapotranspiration_2012).zmean as evapotranspiration_zonalmean_2012,
       (evapotranspiration_2012).zmin as evapotranspiration_zonalmin_2012,
       (evapotranspiration_2012).zmax as evapotranspiration_zonalmax_2012
,(evapotranspiration_2013).zmean as evapotranspiration_zonalmean_2013,
       (evapotranspiration_2013).zmin as evapotranspiration_zonalmin_2013,
       (evapotranspiration_2013).zmax as evapotranspiration_zonalmax_2013
,(evapotranspiration_2014).zmean as evapotranspiration_zonalmean_2014,
       (evapotranspiration_2014).zmin as evapotranspiration_zonalmin_2014,
       (evapotranspiration_2014).zmax as evapotranspiration_zonalmax_2014
,(evapotranspiration_2015).zmean as evapotranspiration_zonalmean_2015,
       (evapotranspiration_2015).zmin as evapotranspiration_zonalmin_2015,
       (evapotranspiration_2015).zmax as evapotranspiration_zonalmax_2015
,(evapotranspiration_2016).zmean as evapotranspiration_zonalmean_2016,
       (evapotranspiration_2016).zmin as evapotranspiration_zonalmin_2016,
       (evapotranspiration_2016).zmax as evapotranspiration_zonalmax_2016
,(evapotranspiration_2017).zmean as evapotranspiration_zonalmean_2017,
       (evapotranspiration_2017).zmin as evapotranspiration_zonalmin_2017,
       (evapotranspiration_2017).zmax as evapotranspiration_zonalmax_2017
,(evapotranspiration_2018).zmean as evapotranspiration_zonalmean_2018,
       (evapotranspiration_2018).zmin as evapotranspiration_zonalmin_2018,
       (evapotranspiration_2018).zmax as evapotranspiration_zonalmax_2018
,(evapotranspiration_2019).zmean as evapotranspiration_zonalmean_2019,
       (evapotranspiration_2019).zmin as evapotranspiration_zonalmin_2019,
       (evapotranspiration_2019).zmax as evapotranspiration_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "evapotranspiration_basin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, evapotranspiration_1958 zonaloutput,
evapotranspiration_1959 zonaloutput,
evapotranspiration_1960 zonaloutput,
evapotranspiration_1961 zonaloutput,
evapotranspiration_1962 zonaloutput,
evapotranspiration_1963 zonaloutput,
evapotranspiration_1964 zonaloutput,
evapotranspiration_1965 zonaloutput,
evapotranspiration_1966 zonaloutput,
evapotranspiration_1967 zonaloutput,
evapotranspiration_1968 zonaloutput,
evapotranspiration_1969 zonaloutput,
evapotranspiration_1970 zonaloutput,
evapotranspiration_1971 zonaloutput,
evapotranspiration_1972 zonaloutput,
evapotranspiration_1973 zonaloutput,
evapotranspiration_1974 zonaloutput,
evapotranspiration_1975 zonaloutput,
evapotranspiration_1976 zonaloutput,
evapotranspiration_1977 zonaloutput,
evapotranspiration_1978 zonaloutput,
evapotranspiration_1979 zonaloutput,
evapotranspiration_1980 zonaloutput,
evapotranspiration_1981 zonaloutput,
evapotranspiration_1982 zonaloutput,
evapotranspiration_1983 zonaloutput,
evapotranspiration_1984 zonaloutput,
evapotranspiration_1985 zonaloutput,
evapotranspiration_1986 zonaloutput,
evapotranspiration_1987 zonaloutput,
evapotranspiration_1988 zonaloutput,
evapotranspiration_1989 zonaloutput,
evapotranspiration_1990 zonaloutput,
evapotranspiration_1991 zonaloutput,
evapotranspiration_1992 zonaloutput,
evapotranspiration_1993 zonaloutput,
evapotranspiration_1994 zonaloutput,
evapotranspiration_1995 zonaloutput,
evapotranspiration_1996 zonaloutput,
evapotranspiration_1997 zonaloutput,
evapotranspiration_1998 zonaloutput,
evapotranspiration_1999 zonaloutput,
evapotranspiration_2000 zonaloutput,
evapotranspiration_2001 zonaloutput,
evapotranspiration_2002 zonaloutput,
evapotranspiration_2003 zonaloutput,
evapotranspiration_2004 zonaloutput,
evapotranspiration_2005 zonaloutput,
evapotranspiration_2006 zonaloutput,
evapotranspiration_2007 zonaloutput,
evapotranspiration_2008 zonaloutput,
evapotranspiration_2009 zonaloutput,
evapotranspiration_2010 zonaloutput,
evapotranspiration_2011 zonaloutput,
evapotranspiration_2012 zonaloutput,
evapotranspiration_2013 zonaloutput,
evapotranspiration_2014 zonaloutput,
evapotranspiration_2015 zonaloutput,
evapotranspiration_2016 zonaloutput,
evapotranspiration_2017 zonaloutput,
evapotranspiration_2018 zonaloutput,
evapotranspiration_2019 zonaloutput) INNER JOIN hydrostn30_basin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_soilmoisture_basin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_soilmoisture_basin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (soilmoisture_1958).zmean as soilmoisture_zonalmean_1958,
       (soilmoisture_1958).zmin as soilmoisture_zonalmin_1958,
       (soilmoisture_1958).zmax as soilmoisture_zonalmax_1958
,(soilmoisture_1959).zmean as soilmoisture_zonalmean_1959,
       (soilmoisture_1959).zmin as soilmoisture_zonalmin_1959,
       (soilmoisture_1959).zmax as soilmoisture_zonalmax_1959
,(soilmoisture_1960).zmean as soilmoisture_zonalmean_1960,
       (soilmoisture_1960).zmin as soilmoisture_zonalmin_1960,
       (soilmoisture_1960).zmax as soilmoisture_zonalmax_1960
,(soilmoisture_1961).zmean as soilmoisture_zonalmean_1961,
       (soilmoisture_1961).zmin as soilmoisture_zonalmin_1961,
       (soilmoisture_1961).zmax as soilmoisture_zonalmax_1961
,(soilmoisture_1962).zmean as soilmoisture_zonalmean_1962,
       (soilmoisture_1962).zmin as soilmoisture_zonalmin_1962,
       (soilmoisture_1962).zmax as soilmoisture_zonalmax_1962
,(soilmoisture_1963).zmean as soilmoisture_zonalmean_1963,
       (soilmoisture_1963).zmin as soilmoisture_zonalmin_1963,
       (soilmoisture_1963).zmax as soilmoisture_zonalmax_1963
,(soilmoisture_1964).zmean as soilmoisture_zonalmean_1964,
       (soilmoisture_1964).zmin as soilmoisture_zonalmin_1964,
       (soilmoisture_1964).zmax as soilmoisture_zonalmax_1964
,(soilmoisture_1965).zmean as soilmoisture_zonalmean_1965,
       (soilmoisture_1965).zmin as soilmoisture_zonalmin_1965,
       (soilmoisture_1965).zmax as soilmoisture_zonalmax_1965
,(soilmoisture_1966).zmean as soilmoisture_zonalmean_1966,
       (soilmoisture_1966).zmin as soilmoisture_zonalmin_1966,
       (soilmoisture_1966).zmax as soilmoisture_zonalmax_1966
,(soilmoisture_1967).zmean as soilmoisture_zonalmean_1967,
       (soilmoisture_1967).zmin as soilmoisture_zonalmin_1967,
       (soilmoisture_1967).zmax as soilmoisture_zonalmax_1967
,(soilmoisture_1968).zmean as soilmoisture_zonalmean_1968,
       (soilmoisture_1968).zmin as soilmoisture_zonalmin_1968,
       (soilmoisture_1968).zmax as soilmoisture_zonalmax_1968
,(soilmoisture_1969).zmean as soilmoisture_zonalmean_1969,
       (soilmoisture_1969).zmin as soilmoisture_zonalmin_1969,
       (soilmoisture_1969).zmax as soilmoisture_zonalmax_1969
,(soilmoisture_1970).zmean as soilmoisture_zonalmean_1970,
       (soilmoisture_1970).zmin as soilmoisture_zonalmin_1970,
       (soilmoisture_1970).zmax as soilmoisture_zonalmax_1970
,(soilmoisture_1971).zmean as soilmoisture_zonalmean_1971,
       (soilmoisture_1971).zmin as soilmoisture_zonalmin_1971,
       (soilmoisture_1971).zmax as soilmoisture_zonalmax_1971
,(soilmoisture_1972).zmean as soilmoisture_zonalmean_1972,
       (soilmoisture_1972).zmin as soilmoisture_zonalmin_1972,
       (soilmoisture_1972).zmax as soilmoisture_zonalmax_1972
,(soilmoisture_1973).zmean as soilmoisture_zonalmean_1973,
       (soilmoisture_1973).zmin as soilmoisture_zonalmin_1973,
       (soilmoisture_1973).zmax as soilmoisture_zonalmax_1973
,(soilmoisture_1974).zmean as soilmoisture_zonalmean_1974,
       (soilmoisture_1974).zmin as soilmoisture_zonalmin_1974,
       (soilmoisture_1974).zmax as soilmoisture_zonalmax_1974
,(soilmoisture_1975).zmean as soilmoisture_zonalmean_1975,
       (soilmoisture_1975).zmin as soilmoisture_zonalmin_1975,
       (soilmoisture_1975).zmax as soilmoisture_zonalmax_1975
,(soilmoisture_1976).zmean as soilmoisture_zonalmean_1976,
       (soilmoisture_1976).zmin as soilmoisture_zonalmin_1976,
       (soilmoisture_1976).zmax as soilmoisture_zonalmax_1976
,(soilmoisture_1977).zmean as soilmoisture_zonalmean_1977,
       (soilmoisture_1977).zmin as soilmoisture_zonalmin_1977,
       (soilmoisture_1977).zmax as soilmoisture_zonalmax_1977
,(soilmoisture_1978).zmean as soilmoisture_zonalmean_1978,
       (soilmoisture_1978).zmin as soilmoisture_zonalmin_1978,
       (soilmoisture_1978).zmax as soilmoisture_zonalmax_1978
,(soilmoisture_1979).zmean as soilmoisture_zonalmean_1979,
       (soilmoisture_1979).zmin as soilmoisture_zonalmin_1979,
       (soilmoisture_1979).zmax as soilmoisture_zonalmax_1979
,(soilmoisture_1980).zmean as soilmoisture_zonalmean_1980,
       (soilmoisture_1980).zmin as soilmoisture_zonalmin_1980,
       (soilmoisture_1980).zmax as soilmoisture_zonalmax_1980
,(soilmoisture_1981).zmean as soilmoisture_zonalmean_1981,
       (soilmoisture_1981).zmin as soilmoisture_zonalmin_1981,
       (soilmoisture_1981).zmax as soilmoisture_zonalmax_1981
,(soilmoisture_1982).zmean as soilmoisture_zonalmean_1982,
       (soilmoisture_1982).zmin as soilmoisture_zonalmin_1982,
       (soilmoisture_1982).zmax as soilmoisture_zonalmax_1982
,(soilmoisture_1983).zmean as soilmoisture_zonalmean_1983,
       (soilmoisture_1983).zmin as soilmoisture_zonalmin_1983,
       (soilmoisture_1983).zmax as soilmoisture_zonalmax_1983
,(soilmoisture_1984).zmean as soilmoisture_zonalmean_1984,
       (soilmoisture_1984).zmin as soilmoisture_zonalmin_1984,
       (soilmoisture_1984).zmax as soilmoisture_zonalmax_1984
,(soilmoisture_1985).zmean as soilmoisture_zonalmean_1985,
       (soilmoisture_1985).zmin as soilmoisture_zonalmin_1985,
       (soilmoisture_1985).zmax as soilmoisture_zonalmax_1985
,(soilmoisture_1986).zmean as soilmoisture_zonalmean_1986,
       (soilmoisture_1986).zmin as soilmoisture_zonalmin_1986,
       (soilmoisture_1986).zmax as soilmoisture_zonalmax_1986
,(soilmoisture_1987).zmean as soilmoisture_zonalmean_1987,
       (soilmoisture_1987).zmin as soilmoisture_zonalmin_1987,
       (soilmoisture_1987).zmax as soilmoisture_zonalmax_1987
,(soilmoisture_1988).zmean as soilmoisture_zonalmean_1988,
       (soilmoisture_1988).zmin as soilmoisture_zonalmin_1988,
       (soilmoisture_1988).zmax as soilmoisture_zonalmax_1988
,(soilmoisture_1989).zmean as soilmoisture_zonalmean_1989,
       (soilmoisture_1989).zmin as soilmoisture_zonalmin_1989,
       (soilmoisture_1989).zmax as soilmoisture_zonalmax_1989
,(soilmoisture_1990).zmean as soilmoisture_zonalmean_1990,
       (soilmoisture_1990).zmin as soilmoisture_zonalmin_1990,
       (soilmoisture_1990).zmax as soilmoisture_zonalmax_1990
,(soilmoisture_1991).zmean as soilmoisture_zonalmean_1991,
       (soilmoisture_1991).zmin as soilmoisture_zonalmin_1991,
       (soilmoisture_1991).zmax as soilmoisture_zonalmax_1991
,(soilmoisture_1992).zmean as soilmoisture_zonalmean_1992,
       (soilmoisture_1992).zmin as soilmoisture_zonalmin_1992,
       (soilmoisture_1992).zmax as soilmoisture_zonalmax_1992
,(soilmoisture_1993).zmean as soilmoisture_zonalmean_1993,
       (soilmoisture_1993).zmin as soilmoisture_zonalmin_1993,
       (soilmoisture_1993).zmax as soilmoisture_zonalmax_1993
,(soilmoisture_1994).zmean as soilmoisture_zonalmean_1994,
       (soilmoisture_1994).zmin as soilmoisture_zonalmin_1994,
       (soilmoisture_1994).zmax as soilmoisture_zonalmax_1994
,(soilmoisture_1995).zmean as soilmoisture_zonalmean_1995,
       (soilmoisture_1995).zmin as soilmoisture_zonalmin_1995,
       (soilmoisture_1995).zmax as soilmoisture_zonalmax_1995
,(soilmoisture_1996).zmean as soilmoisture_zonalmean_1996,
       (soilmoisture_1996).zmin as soilmoisture_zonalmin_1996,
       (soilmoisture_1996).zmax as soilmoisture_zonalmax_1996
,(soilmoisture_1997).zmean as soilmoisture_zonalmean_1997,
       (soilmoisture_1997).zmin as soilmoisture_zonalmin_1997,
       (soilmoisture_1997).zmax as soilmoisture_zonalmax_1997
,(soilmoisture_1998).zmean as soilmoisture_zonalmean_1998,
       (soilmoisture_1998).zmin as soilmoisture_zonalmin_1998,
       (soilmoisture_1998).zmax as soilmoisture_zonalmax_1998
,(soilmoisture_1999).zmean as soilmoisture_zonalmean_1999,
       (soilmoisture_1999).zmin as soilmoisture_zonalmin_1999,
       (soilmoisture_1999).zmax as soilmoisture_zonalmax_1999
,(soilmoisture_2000).zmean as soilmoisture_zonalmean_2000,
       (soilmoisture_2000).zmin as soilmoisture_zonalmin_2000,
       (soilmoisture_2000).zmax as soilmoisture_zonalmax_2000
,(soilmoisture_2001).zmean as soilmoisture_zonalmean_2001,
       (soilmoisture_2001).zmin as soilmoisture_zonalmin_2001,
       (soilmoisture_2001).zmax as soilmoisture_zonalmax_2001
,(soilmoisture_2002).zmean as soilmoisture_zonalmean_2002,
       (soilmoisture_2002).zmin as soilmoisture_zonalmin_2002,
       (soilmoisture_2002).zmax as soilmoisture_zonalmax_2002
,(soilmoisture_2003).zmean as soilmoisture_zonalmean_2003,
       (soilmoisture_2003).zmin as soilmoisture_zonalmin_2003,
       (soilmoisture_2003).zmax as soilmoisture_zonalmax_2003
,(soilmoisture_2004).zmean as soilmoisture_zonalmean_2004,
       (soilmoisture_2004).zmin as soilmoisture_zonalmin_2004,
       (soilmoisture_2004).zmax as soilmoisture_zonalmax_2004
,(soilmoisture_2005).zmean as soilmoisture_zonalmean_2005,
       (soilmoisture_2005).zmin as soilmoisture_zonalmin_2005,
       (soilmoisture_2005).zmax as soilmoisture_zonalmax_2005
,(soilmoisture_2006).zmean as soilmoisture_zonalmean_2006,
       (soilmoisture_2006).zmin as soilmoisture_zonalmin_2006,
       (soilmoisture_2006).zmax as soilmoisture_zonalmax_2006
,(soilmoisture_2007).zmean as soilmoisture_zonalmean_2007,
       (soilmoisture_2007).zmin as soilmoisture_zonalmin_2007,
       (soilmoisture_2007).zmax as soilmoisture_zonalmax_2007
,(soilmoisture_2008).zmean as soilmoisture_zonalmean_2008,
       (soilmoisture_2008).zmin as soilmoisture_zonalmin_2008,
       (soilmoisture_2008).zmax as soilmoisture_zonalmax_2008
,(soilmoisture_2009).zmean as soilmoisture_zonalmean_2009,
       (soilmoisture_2009).zmin as soilmoisture_zonalmin_2009,
       (soilmoisture_2009).zmax as soilmoisture_zonalmax_2009
,(soilmoisture_2010).zmean as soilmoisture_zonalmean_2010,
       (soilmoisture_2010).zmin as soilmoisture_zonalmin_2010,
       (soilmoisture_2010).zmax as soilmoisture_zonalmax_2010
,(soilmoisture_2011).zmean as soilmoisture_zonalmean_2011,
       (soilmoisture_2011).zmin as soilmoisture_zonalmin_2011,
       (soilmoisture_2011).zmax as soilmoisture_zonalmax_2011
,(soilmoisture_2012).zmean as soilmoisture_zonalmean_2012,
       (soilmoisture_2012).zmin as soilmoisture_zonalmin_2012,
       (soilmoisture_2012).zmax as soilmoisture_zonalmax_2012
,(soilmoisture_2013).zmean as soilmoisture_zonalmean_2013,
       (soilmoisture_2013).zmin as soilmoisture_zonalmin_2013,
       (soilmoisture_2013).zmax as soilmoisture_zonalmax_2013
,(soilmoisture_2014).zmean as soilmoisture_zonalmean_2014,
       (soilmoisture_2014).zmin as soilmoisture_zonalmin_2014,
       (soilmoisture_2014).zmax as soilmoisture_zonalmax_2014
,(soilmoisture_2015).zmean as soilmoisture_zonalmean_2015,
       (soilmoisture_2015).zmin as soilmoisture_zonalmin_2015,
       (soilmoisture_2015).zmax as soilmoisture_zonalmax_2015
,(soilmoisture_2016).zmean as soilmoisture_zonalmean_2016,
       (soilmoisture_2016).zmin as soilmoisture_zonalmin_2016,
       (soilmoisture_2016).zmax as soilmoisture_zonalmax_2016
,(soilmoisture_2017).zmean as soilmoisture_zonalmean_2017,
       (soilmoisture_2017).zmin as soilmoisture_zonalmin_2017,
       (soilmoisture_2017).zmax as soilmoisture_zonalmax_2017
,(soilmoisture_2018).zmean as soilmoisture_zonalmean_2018,
       (soilmoisture_2018).zmin as soilmoisture_zonalmin_2018,
       (soilmoisture_2018).zmax as soilmoisture_zonalmax_2018
,(soilmoisture_2019).zmean as soilmoisture_zonalmean_2019,
       (soilmoisture_2019).zmin as soilmoisture_zonalmin_2019,
       (soilmoisture_2019).zmax as soilmoisture_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "soilmoisture_basin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, soilmoisture_1958 zonaloutput,
soilmoisture_1959 zonaloutput,
soilmoisture_1960 zonaloutput,
soilmoisture_1961 zonaloutput,
soilmoisture_1962 zonaloutput,
soilmoisture_1963 zonaloutput,
soilmoisture_1964 zonaloutput,
soilmoisture_1965 zonaloutput,
soilmoisture_1966 zonaloutput,
soilmoisture_1967 zonaloutput,
soilmoisture_1968 zonaloutput,
soilmoisture_1969 zonaloutput,
soilmoisture_1970 zonaloutput,
soilmoisture_1971 zonaloutput,
soilmoisture_1972 zonaloutput,
soilmoisture_1973 zonaloutput,
soilmoisture_1974 zonaloutput,
soilmoisture_1975 zonaloutput,
soilmoisture_1976 zonaloutput,
soilmoisture_1977 zonaloutput,
soilmoisture_1978 zonaloutput,
soilmoisture_1979 zonaloutput,
soilmoisture_1980 zonaloutput,
soilmoisture_1981 zonaloutput,
soilmoisture_1982 zonaloutput,
soilmoisture_1983 zonaloutput,
soilmoisture_1984 zonaloutput,
soilmoisture_1985 zonaloutput,
soilmoisture_1986 zonaloutput,
soilmoisture_1987 zonaloutput,
soilmoisture_1988 zonaloutput,
soilmoisture_1989 zonaloutput,
soilmoisture_1990 zonaloutput,
soilmoisture_1991 zonaloutput,
soilmoisture_1992 zonaloutput,
soilmoisture_1993 zonaloutput,
soilmoisture_1994 zonaloutput,
soilmoisture_1995 zonaloutput,
soilmoisture_1996 zonaloutput,
soilmoisture_1997 zonaloutput,
soilmoisture_1998 zonaloutput,
soilmoisture_1999 zonaloutput,
soilmoisture_2000 zonaloutput,
soilmoisture_2001 zonaloutput,
soilmoisture_2002 zonaloutput,
soilmoisture_2003 zonaloutput,
soilmoisture_2004 zonaloutput,
soilmoisture_2005 zonaloutput,
soilmoisture_2006 zonaloutput,
soilmoisture_2007 zonaloutput,
soilmoisture_2008 zonaloutput,
soilmoisture_2009 zonaloutput,
soilmoisture_2010 zonaloutput,
soilmoisture_2011 zonaloutput,
soilmoisture_2012 zonaloutput,
soilmoisture_2013 zonaloutput,
soilmoisture_2014 zonaloutput,
soilmoisture_2015 zonaloutput,
soilmoisture_2016 zonaloutput,
soilmoisture_2017 zonaloutput,
soilmoisture_2018 zonaloutput,
soilmoisture_2019 zonaloutput) INNER JOIN hydrostn30_basin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_relativesoilmoisture_basin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_relativesoilmoisture_basin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (relativesoilmoisture_1958).zmean as relativesoilmoisture_zonalmean_1958,
       (relativesoilmoisture_1958).zmin as relativesoilmoisture_zonalmin_1958,
       (relativesoilmoisture_1958).zmax as relativesoilmoisture_zonalmax_1958
,(relativesoilmoisture_1959).zmean as relativesoilmoisture_zonalmean_1959,
       (relativesoilmoisture_1959).zmin as relativesoilmoisture_zonalmin_1959,
       (relativesoilmoisture_1959).zmax as relativesoilmoisture_zonalmax_1959
,(relativesoilmoisture_1960).zmean as relativesoilmoisture_zonalmean_1960,
       (relativesoilmoisture_1960).zmin as relativesoilmoisture_zonalmin_1960,
       (relativesoilmoisture_1960).zmax as relativesoilmoisture_zonalmax_1960
,(relativesoilmoisture_1961).zmean as relativesoilmoisture_zonalmean_1961,
       (relativesoilmoisture_1961).zmin as relativesoilmoisture_zonalmin_1961,
       (relativesoilmoisture_1961).zmax as relativesoilmoisture_zonalmax_1961
,(relativesoilmoisture_1962).zmean as relativesoilmoisture_zonalmean_1962,
       (relativesoilmoisture_1962).zmin as relativesoilmoisture_zonalmin_1962,
       (relativesoilmoisture_1962).zmax as relativesoilmoisture_zonalmax_1962
,(relativesoilmoisture_1963).zmean as relativesoilmoisture_zonalmean_1963,
       (relativesoilmoisture_1963).zmin as relativesoilmoisture_zonalmin_1963,
       (relativesoilmoisture_1963).zmax as relativesoilmoisture_zonalmax_1963
,(relativesoilmoisture_1964).zmean as relativesoilmoisture_zonalmean_1964,
       (relativesoilmoisture_1964).zmin as relativesoilmoisture_zonalmin_1964,
       (relativesoilmoisture_1964).zmax as relativesoilmoisture_zonalmax_1964
,(relativesoilmoisture_1965).zmean as relativesoilmoisture_zonalmean_1965,
       (relativesoilmoisture_1965).zmin as relativesoilmoisture_zonalmin_1965,
       (relativesoilmoisture_1965).zmax as relativesoilmoisture_zonalmax_1965
,(relativesoilmoisture_1966).zmean as relativesoilmoisture_zonalmean_1966,
       (relativesoilmoisture_1966).zmin as relativesoilmoisture_zonalmin_1966,
       (relativesoilmoisture_1966).zmax as relativesoilmoisture_zonalmax_1966
,(relativesoilmoisture_1967).zmean as relativesoilmoisture_zonalmean_1967,
       (relativesoilmoisture_1967).zmin as relativesoilmoisture_zonalmin_1967,
       (relativesoilmoisture_1967).zmax as relativesoilmoisture_zonalmax_1967
,(relativesoilmoisture_1968).zmean as relativesoilmoisture_zonalmean_1968,
       (relativesoilmoisture_1968).zmin as relativesoilmoisture_zonalmin_1968,
       (relativesoilmoisture_1968).zmax as relativesoilmoisture_zonalmax_1968
,(relativesoilmoisture_1969).zmean as relativesoilmoisture_zonalmean_1969,
       (relativesoilmoisture_1969).zmin as relativesoilmoisture_zonalmin_1969,
       (relativesoilmoisture_1969).zmax as relativesoilmoisture_zonalmax_1969
,(relativesoilmoisture_1970).zmean as relativesoilmoisture_zonalmean_1970,
       (relativesoilmoisture_1970).zmin as relativesoilmoisture_zonalmin_1970,
       (relativesoilmoisture_1970).zmax as relativesoilmoisture_zonalmax_1970
,(relativesoilmoisture_1971).zmean as relativesoilmoisture_zonalmean_1971,
       (relativesoilmoisture_1971).zmin as relativesoilmoisture_zonalmin_1971,
       (relativesoilmoisture_1971).zmax as relativesoilmoisture_zonalmax_1971
,(relativesoilmoisture_1972).zmean as relativesoilmoisture_zonalmean_1972,
       (relativesoilmoisture_1972).zmin as relativesoilmoisture_zonalmin_1972,
       (relativesoilmoisture_1972).zmax as relativesoilmoisture_zonalmax_1972
,(relativesoilmoisture_1973).zmean as relativesoilmoisture_zonalmean_1973,
       (relativesoilmoisture_1973).zmin as relativesoilmoisture_zonalmin_1973,
       (relativesoilmoisture_1973).zmax as relativesoilmoisture_zonalmax_1973
,(relativesoilmoisture_1974).zmean as relativesoilmoisture_zonalmean_1974,
       (relativesoilmoisture_1974).zmin as relativesoilmoisture_zonalmin_1974,
       (relativesoilmoisture_1974).zmax as relativesoilmoisture_zonalmax_1974
,(relativesoilmoisture_1975).zmean as relativesoilmoisture_zonalmean_1975,
       (relativesoilmoisture_1975).zmin as relativesoilmoisture_zonalmin_1975,
       (relativesoilmoisture_1975).zmax as relativesoilmoisture_zonalmax_1975
,(relativesoilmoisture_1976).zmean as relativesoilmoisture_zonalmean_1976,
       (relativesoilmoisture_1976).zmin as relativesoilmoisture_zonalmin_1976,
       (relativesoilmoisture_1976).zmax as relativesoilmoisture_zonalmax_1976
,(relativesoilmoisture_1977).zmean as relativesoilmoisture_zonalmean_1977,
       (relativesoilmoisture_1977).zmin as relativesoilmoisture_zonalmin_1977,
       (relativesoilmoisture_1977).zmax as relativesoilmoisture_zonalmax_1977
,(relativesoilmoisture_1978).zmean as relativesoilmoisture_zonalmean_1978,
       (relativesoilmoisture_1978).zmin as relativesoilmoisture_zonalmin_1978,
       (relativesoilmoisture_1978).zmax as relativesoilmoisture_zonalmax_1978
,(relativesoilmoisture_1979).zmean as relativesoilmoisture_zonalmean_1979,
       (relativesoilmoisture_1979).zmin as relativesoilmoisture_zonalmin_1979,
       (relativesoilmoisture_1979).zmax as relativesoilmoisture_zonalmax_1979
,(relativesoilmoisture_1980).zmean as relativesoilmoisture_zonalmean_1980,
       (relativesoilmoisture_1980).zmin as relativesoilmoisture_zonalmin_1980,
       (relativesoilmoisture_1980).zmax as relativesoilmoisture_zonalmax_1980
,(relativesoilmoisture_1981).zmean as relativesoilmoisture_zonalmean_1981,
       (relativesoilmoisture_1981).zmin as relativesoilmoisture_zonalmin_1981,
       (relativesoilmoisture_1981).zmax as relativesoilmoisture_zonalmax_1981
,(relativesoilmoisture_1982).zmean as relativesoilmoisture_zonalmean_1982,
       (relativesoilmoisture_1982).zmin as relativesoilmoisture_zonalmin_1982,
       (relativesoilmoisture_1982).zmax as relativesoilmoisture_zonalmax_1982
,(relativesoilmoisture_1983).zmean as relativesoilmoisture_zonalmean_1983,
       (relativesoilmoisture_1983).zmin as relativesoilmoisture_zonalmin_1983,
       (relativesoilmoisture_1983).zmax as relativesoilmoisture_zonalmax_1983
,(relativesoilmoisture_1984).zmean as relativesoilmoisture_zonalmean_1984,
       (relativesoilmoisture_1984).zmin as relativesoilmoisture_zonalmin_1984,
       (relativesoilmoisture_1984).zmax as relativesoilmoisture_zonalmax_1984
,(relativesoilmoisture_1985).zmean as relativesoilmoisture_zonalmean_1985,
       (relativesoilmoisture_1985).zmin as relativesoilmoisture_zonalmin_1985,
       (relativesoilmoisture_1985).zmax as relativesoilmoisture_zonalmax_1985
,(relativesoilmoisture_1986).zmean as relativesoilmoisture_zonalmean_1986,
       (relativesoilmoisture_1986).zmin as relativesoilmoisture_zonalmin_1986,
       (relativesoilmoisture_1986).zmax as relativesoilmoisture_zonalmax_1986
,(relativesoilmoisture_1987).zmean as relativesoilmoisture_zonalmean_1987,
       (relativesoilmoisture_1987).zmin as relativesoilmoisture_zonalmin_1987,
       (relativesoilmoisture_1987).zmax as relativesoilmoisture_zonalmax_1987
,(relativesoilmoisture_1988).zmean as relativesoilmoisture_zonalmean_1988,
       (relativesoilmoisture_1988).zmin as relativesoilmoisture_zonalmin_1988,
       (relativesoilmoisture_1988).zmax as relativesoilmoisture_zonalmax_1988
,(relativesoilmoisture_1989).zmean as relativesoilmoisture_zonalmean_1989,
       (relativesoilmoisture_1989).zmin as relativesoilmoisture_zonalmin_1989,
       (relativesoilmoisture_1989).zmax as relativesoilmoisture_zonalmax_1989
,(relativesoilmoisture_1990).zmean as relativesoilmoisture_zonalmean_1990,
       (relativesoilmoisture_1990).zmin as relativesoilmoisture_zonalmin_1990,
       (relativesoilmoisture_1990).zmax as relativesoilmoisture_zonalmax_1990
,(relativesoilmoisture_1991).zmean as relativesoilmoisture_zonalmean_1991,
       (relativesoilmoisture_1991).zmin as relativesoilmoisture_zonalmin_1991,
       (relativesoilmoisture_1991).zmax as relativesoilmoisture_zonalmax_1991
,(relativesoilmoisture_1992).zmean as relativesoilmoisture_zonalmean_1992,
       (relativesoilmoisture_1992).zmin as relativesoilmoisture_zonalmin_1992,
       (relativesoilmoisture_1992).zmax as relativesoilmoisture_zonalmax_1992
,(relativesoilmoisture_1993).zmean as relativesoilmoisture_zonalmean_1993,
       (relativesoilmoisture_1993).zmin as relativesoilmoisture_zonalmin_1993,
       (relativesoilmoisture_1993).zmax as relativesoilmoisture_zonalmax_1993
,(relativesoilmoisture_1994).zmean as relativesoilmoisture_zonalmean_1994,
       (relativesoilmoisture_1994).zmin as relativesoilmoisture_zonalmin_1994,
       (relativesoilmoisture_1994).zmax as relativesoilmoisture_zonalmax_1994
,(relativesoilmoisture_1995).zmean as relativesoilmoisture_zonalmean_1995,
       (relativesoilmoisture_1995).zmin as relativesoilmoisture_zonalmin_1995,
       (relativesoilmoisture_1995).zmax as relativesoilmoisture_zonalmax_1995
,(relativesoilmoisture_1996).zmean as relativesoilmoisture_zonalmean_1996,
       (relativesoilmoisture_1996).zmin as relativesoilmoisture_zonalmin_1996,
       (relativesoilmoisture_1996).zmax as relativesoilmoisture_zonalmax_1996
,(relativesoilmoisture_1997).zmean as relativesoilmoisture_zonalmean_1997,
       (relativesoilmoisture_1997).zmin as relativesoilmoisture_zonalmin_1997,
       (relativesoilmoisture_1997).zmax as relativesoilmoisture_zonalmax_1997
,(relativesoilmoisture_1998).zmean as relativesoilmoisture_zonalmean_1998,
       (relativesoilmoisture_1998).zmin as relativesoilmoisture_zonalmin_1998,
       (relativesoilmoisture_1998).zmax as relativesoilmoisture_zonalmax_1998
,(relativesoilmoisture_1999).zmean as relativesoilmoisture_zonalmean_1999,
       (relativesoilmoisture_1999).zmin as relativesoilmoisture_zonalmin_1999,
       (relativesoilmoisture_1999).zmax as relativesoilmoisture_zonalmax_1999
,(relativesoilmoisture_2000).zmean as relativesoilmoisture_zonalmean_2000,
       (relativesoilmoisture_2000).zmin as relativesoilmoisture_zonalmin_2000,
       (relativesoilmoisture_2000).zmax as relativesoilmoisture_zonalmax_2000
,(relativesoilmoisture_2001).zmean as relativesoilmoisture_zonalmean_2001,
       (relativesoilmoisture_2001).zmin as relativesoilmoisture_zonalmin_2001,
       (relativesoilmoisture_2001).zmax as relativesoilmoisture_zonalmax_2001
,(relativesoilmoisture_2002).zmean as relativesoilmoisture_zonalmean_2002,
       (relativesoilmoisture_2002).zmin as relativesoilmoisture_zonalmin_2002,
       (relativesoilmoisture_2002).zmax as relativesoilmoisture_zonalmax_2002
,(relativesoilmoisture_2003).zmean as relativesoilmoisture_zonalmean_2003,
       (relativesoilmoisture_2003).zmin as relativesoilmoisture_zonalmin_2003,
       (relativesoilmoisture_2003).zmax as relativesoilmoisture_zonalmax_2003
,(relativesoilmoisture_2004).zmean as relativesoilmoisture_zonalmean_2004,
       (relativesoilmoisture_2004).zmin as relativesoilmoisture_zonalmin_2004,
       (relativesoilmoisture_2004).zmax as relativesoilmoisture_zonalmax_2004
,(relativesoilmoisture_2005).zmean as relativesoilmoisture_zonalmean_2005,
       (relativesoilmoisture_2005).zmin as relativesoilmoisture_zonalmin_2005,
       (relativesoilmoisture_2005).zmax as relativesoilmoisture_zonalmax_2005
,(relativesoilmoisture_2006).zmean as relativesoilmoisture_zonalmean_2006,
       (relativesoilmoisture_2006).zmin as relativesoilmoisture_zonalmin_2006,
       (relativesoilmoisture_2006).zmax as relativesoilmoisture_zonalmax_2006
,(relativesoilmoisture_2007).zmean as relativesoilmoisture_zonalmean_2007,
       (relativesoilmoisture_2007).zmin as relativesoilmoisture_zonalmin_2007,
       (relativesoilmoisture_2007).zmax as relativesoilmoisture_zonalmax_2007
,(relativesoilmoisture_2008).zmean as relativesoilmoisture_zonalmean_2008,
       (relativesoilmoisture_2008).zmin as relativesoilmoisture_zonalmin_2008,
       (relativesoilmoisture_2008).zmax as relativesoilmoisture_zonalmax_2008
,(relativesoilmoisture_2009).zmean as relativesoilmoisture_zonalmean_2009,
       (relativesoilmoisture_2009).zmin as relativesoilmoisture_zonalmin_2009,
       (relativesoilmoisture_2009).zmax as relativesoilmoisture_zonalmax_2009
,(relativesoilmoisture_2010).zmean as relativesoilmoisture_zonalmean_2010,
       (relativesoilmoisture_2010).zmin as relativesoilmoisture_zonalmin_2010,
       (relativesoilmoisture_2010).zmax as relativesoilmoisture_zonalmax_2010
,(relativesoilmoisture_2011).zmean as relativesoilmoisture_zonalmean_2011,
       (relativesoilmoisture_2011).zmin as relativesoilmoisture_zonalmin_2011,
       (relativesoilmoisture_2011).zmax as relativesoilmoisture_zonalmax_2011
,(relativesoilmoisture_2012).zmean as relativesoilmoisture_zonalmean_2012,
       (relativesoilmoisture_2012).zmin as relativesoilmoisture_zonalmin_2012,
       (relativesoilmoisture_2012).zmax as relativesoilmoisture_zonalmax_2012
,(relativesoilmoisture_2013).zmean as relativesoilmoisture_zonalmean_2013,
       (relativesoilmoisture_2013).zmin as relativesoilmoisture_zonalmin_2013,
       (relativesoilmoisture_2013).zmax as relativesoilmoisture_zonalmax_2013
,(relativesoilmoisture_2014).zmean as relativesoilmoisture_zonalmean_2014,
       (relativesoilmoisture_2014).zmin as relativesoilmoisture_zonalmin_2014,
       (relativesoilmoisture_2014).zmax as relativesoilmoisture_zonalmax_2014
,(relativesoilmoisture_2015).zmean as relativesoilmoisture_zonalmean_2015,
       (relativesoilmoisture_2015).zmin as relativesoilmoisture_zonalmin_2015,
       (relativesoilmoisture_2015).zmax as relativesoilmoisture_zonalmax_2015
,(relativesoilmoisture_2016).zmean as relativesoilmoisture_zonalmean_2016,
       (relativesoilmoisture_2016).zmin as relativesoilmoisture_zonalmin_2016,
       (relativesoilmoisture_2016).zmax as relativesoilmoisture_zonalmax_2016
,(relativesoilmoisture_2017).zmean as relativesoilmoisture_zonalmean_2017,
       (relativesoilmoisture_2017).zmin as relativesoilmoisture_zonalmin_2017,
       (relativesoilmoisture_2017).zmax as relativesoilmoisture_zonalmax_2017
,(relativesoilmoisture_2018).zmean as relativesoilmoisture_zonalmean_2018,
       (relativesoilmoisture_2018).zmin as relativesoilmoisture_zonalmin_2018,
       (relativesoilmoisture_2018).zmax as relativesoilmoisture_zonalmax_2018
,(relativesoilmoisture_2019).zmean as relativesoilmoisture_zonalmean_2019,
       (relativesoilmoisture_2019).zmin as relativesoilmoisture_zonalmin_2019,
       (relativesoilmoisture_2019).zmax as relativesoilmoisture_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "relativesoilmoisture_basin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, relativesoilmoisture_1958 zonaloutput,
relativesoilmoisture_1959 zonaloutput,
relativesoilmoisture_1960 zonaloutput,
relativesoilmoisture_1961 zonaloutput,
relativesoilmoisture_1962 zonaloutput,
relativesoilmoisture_1963 zonaloutput,
relativesoilmoisture_1964 zonaloutput,
relativesoilmoisture_1965 zonaloutput,
relativesoilmoisture_1966 zonaloutput,
relativesoilmoisture_1967 zonaloutput,
relativesoilmoisture_1968 zonaloutput,
relativesoilmoisture_1969 zonaloutput,
relativesoilmoisture_1970 zonaloutput,
relativesoilmoisture_1971 zonaloutput,
relativesoilmoisture_1972 zonaloutput,
relativesoilmoisture_1973 zonaloutput,
relativesoilmoisture_1974 zonaloutput,
relativesoilmoisture_1975 zonaloutput,
relativesoilmoisture_1976 zonaloutput,
relativesoilmoisture_1977 zonaloutput,
relativesoilmoisture_1978 zonaloutput,
relativesoilmoisture_1979 zonaloutput,
relativesoilmoisture_1980 zonaloutput,
relativesoilmoisture_1981 zonaloutput,
relativesoilmoisture_1982 zonaloutput,
relativesoilmoisture_1983 zonaloutput,
relativesoilmoisture_1984 zonaloutput,
relativesoilmoisture_1985 zonaloutput,
relativesoilmoisture_1986 zonaloutput,
relativesoilmoisture_1987 zonaloutput,
relativesoilmoisture_1988 zonaloutput,
relativesoilmoisture_1989 zonaloutput,
relativesoilmoisture_1990 zonaloutput,
relativesoilmoisture_1991 zonaloutput,
relativesoilmoisture_1992 zonaloutput,
relativesoilmoisture_1993 zonaloutput,
relativesoilmoisture_1994 zonaloutput,
relativesoilmoisture_1995 zonaloutput,
relativesoilmoisture_1996 zonaloutput,
relativesoilmoisture_1997 zonaloutput,
relativesoilmoisture_1998 zonaloutput,
relativesoilmoisture_1999 zonaloutput,
relativesoilmoisture_2000 zonaloutput,
relativesoilmoisture_2001 zonaloutput,
relativesoilmoisture_2002 zonaloutput,
relativesoilmoisture_2003 zonaloutput,
relativesoilmoisture_2004 zonaloutput,
relativesoilmoisture_2005 zonaloutput,
relativesoilmoisture_2006 zonaloutput,
relativesoilmoisture_2007 zonaloutput,
relativesoilmoisture_2008 zonaloutput,
relativesoilmoisture_2009 zonaloutput,
relativesoilmoisture_2010 zonaloutput,
relativesoilmoisture_2011 zonaloutput,
relativesoilmoisture_2012 zonaloutput,
relativesoilmoisture_2013 zonaloutput,
relativesoilmoisture_2014 zonaloutput,
relativesoilmoisture_2015 zonaloutput,
relativesoilmoisture_2016 zonaloutput,
relativesoilmoisture_2017 zonaloutput,
relativesoilmoisture_2018 zonaloutput,
relativesoilmoisture_2019 zonaloutput) INNER JOIN hydrostn30_basin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_rainpet_basin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_rainpet_basin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (rainpet_1958).zmean as rainpet_zonalmean_1958,
       (rainpet_1958).zmin as rainpet_zonalmin_1958,
       (rainpet_1958).zmax as rainpet_zonalmax_1958
,(rainpet_1959).zmean as rainpet_zonalmean_1959,
       (rainpet_1959).zmin as rainpet_zonalmin_1959,
       (rainpet_1959).zmax as rainpet_zonalmax_1959
,(rainpet_1960).zmean as rainpet_zonalmean_1960,
       (rainpet_1960).zmin as rainpet_zonalmin_1960,
       (rainpet_1960).zmax as rainpet_zonalmax_1960
,(rainpet_1961).zmean as rainpet_zonalmean_1961,
       (rainpet_1961).zmin as rainpet_zonalmin_1961,
       (rainpet_1961).zmax as rainpet_zonalmax_1961
,(rainpet_1962).zmean as rainpet_zonalmean_1962,
       (rainpet_1962).zmin as rainpet_zonalmin_1962,
       (rainpet_1962).zmax as rainpet_zonalmax_1962
,(rainpet_1963).zmean as rainpet_zonalmean_1963,
       (rainpet_1963).zmin as rainpet_zonalmin_1963,
       (rainpet_1963).zmax as rainpet_zonalmax_1963
,(rainpet_1964).zmean as rainpet_zonalmean_1964,
       (rainpet_1964).zmin as rainpet_zonalmin_1964,
       (rainpet_1964).zmax as rainpet_zonalmax_1964
,(rainpet_1965).zmean as rainpet_zonalmean_1965,
       (rainpet_1965).zmin as rainpet_zonalmin_1965,
       (rainpet_1965).zmax as rainpet_zonalmax_1965
,(rainpet_1966).zmean as rainpet_zonalmean_1966,
       (rainpet_1966).zmin as rainpet_zonalmin_1966,
       (rainpet_1966).zmax as rainpet_zonalmax_1966
,(rainpet_1967).zmean as rainpet_zonalmean_1967,
       (rainpet_1967).zmin as rainpet_zonalmin_1967,
       (rainpet_1967).zmax as rainpet_zonalmax_1967
,(rainpet_1968).zmean as rainpet_zonalmean_1968,
       (rainpet_1968).zmin as rainpet_zonalmin_1968,
       (rainpet_1968).zmax as rainpet_zonalmax_1968
,(rainpet_1969).zmean as rainpet_zonalmean_1969,
       (rainpet_1969).zmin as rainpet_zonalmin_1969,
       (rainpet_1969).zmax as rainpet_zonalmax_1969
,(rainpet_1970).zmean as rainpet_zonalmean_1970,
       (rainpet_1970).zmin as rainpet_zonalmin_1970,
       (rainpet_1970).zmax as rainpet_zonalmax_1970
,(rainpet_1971).zmean as rainpet_zonalmean_1971,
       (rainpet_1971).zmin as rainpet_zonalmin_1971,
       (rainpet_1971).zmax as rainpet_zonalmax_1971
,(rainpet_1972).zmean as rainpet_zonalmean_1972,
       (rainpet_1972).zmin as rainpet_zonalmin_1972,
       (rainpet_1972).zmax as rainpet_zonalmax_1972
,(rainpet_1973).zmean as rainpet_zonalmean_1973,
       (rainpet_1973).zmin as rainpet_zonalmin_1973,
       (rainpet_1973).zmax as rainpet_zonalmax_1973
,(rainpet_1974).zmean as rainpet_zonalmean_1974,
       (rainpet_1974).zmin as rainpet_zonalmin_1974,
       (rainpet_1974).zmax as rainpet_zonalmax_1974
,(rainpet_1975).zmean as rainpet_zonalmean_1975,
       (rainpet_1975).zmin as rainpet_zonalmin_1975,
       (rainpet_1975).zmax as rainpet_zonalmax_1975
,(rainpet_1976).zmean as rainpet_zonalmean_1976,
       (rainpet_1976).zmin as rainpet_zonalmin_1976,
       (rainpet_1976).zmax as rainpet_zonalmax_1976
,(rainpet_1977).zmean as rainpet_zonalmean_1977,
       (rainpet_1977).zmin as rainpet_zonalmin_1977,
       (rainpet_1977).zmax as rainpet_zonalmax_1977
,(rainpet_1978).zmean as rainpet_zonalmean_1978,
       (rainpet_1978).zmin as rainpet_zonalmin_1978,
       (rainpet_1978).zmax as rainpet_zonalmax_1978
,(rainpet_1979).zmean as rainpet_zonalmean_1979,
       (rainpet_1979).zmin as rainpet_zonalmin_1979,
       (rainpet_1979).zmax as rainpet_zonalmax_1979
,(rainpet_1980).zmean as rainpet_zonalmean_1980,
       (rainpet_1980).zmin as rainpet_zonalmin_1980,
       (rainpet_1980).zmax as rainpet_zonalmax_1980
,(rainpet_1981).zmean as rainpet_zonalmean_1981,
       (rainpet_1981).zmin as rainpet_zonalmin_1981,
       (rainpet_1981).zmax as rainpet_zonalmax_1981
,(rainpet_1982).zmean as rainpet_zonalmean_1982,
       (rainpet_1982).zmin as rainpet_zonalmin_1982,
       (rainpet_1982).zmax as rainpet_zonalmax_1982
,(rainpet_1983).zmean as rainpet_zonalmean_1983,
       (rainpet_1983).zmin as rainpet_zonalmin_1983,
       (rainpet_1983).zmax as rainpet_zonalmax_1983
,(rainpet_1984).zmean as rainpet_zonalmean_1984,
       (rainpet_1984).zmin as rainpet_zonalmin_1984,
       (rainpet_1984).zmax as rainpet_zonalmax_1984
,(rainpet_1985).zmean as rainpet_zonalmean_1985,
       (rainpet_1985).zmin as rainpet_zonalmin_1985,
       (rainpet_1985).zmax as rainpet_zonalmax_1985
,(rainpet_1986).zmean as rainpet_zonalmean_1986,
       (rainpet_1986).zmin as rainpet_zonalmin_1986,
       (rainpet_1986).zmax as rainpet_zonalmax_1986
,(rainpet_1987).zmean as rainpet_zonalmean_1987,
       (rainpet_1987).zmin as rainpet_zonalmin_1987,
       (rainpet_1987).zmax as rainpet_zonalmax_1987
,(rainpet_1988).zmean as rainpet_zonalmean_1988,
       (rainpet_1988).zmin as rainpet_zonalmin_1988,
       (rainpet_1988).zmax as rainpet_zonalmax_1988
,(rainpet_1989).zmean as rainpet_zonalmean_1989,
       (rainpet_1989).zmin as rainpet_zonalmin_1989,
       (rainpet_1989).zmax as rainpet_zonalmax_1989
,(rainpet_1990).zmean as rainpet_zonalmean_1990,
       (rainpet_1990).zmin as rainpet_zonalmin_1990,
       (rainpet_1990).zmax as rainpet_zonalmax_1990
,(rainpet_1991).zmean as rainpet_zonalmean_1991,
       (rainpet_1991).zmin as rainpet_zonalmin_1991,
       (rainpet_1991).zmax as rainpet_zonalmax_1991
,(rainpet_1992).zmean as rainpet_zonalmean_1992,
       (rainpet_1992).zmin as rainpet_zonalmin_1992,
       (rainpet_1992).zmax as rainpet_zonalmax_1992
,(rainpet_1993).zmean as rainpet_zonalmean_1993,
       (rainpet_1993).zmin as rainpet_zonalmin_1993,
       (rainpet_1993).zmax as rainpet_zonalmax_1993
,(rainpet_1994).zmean as rainpet_zonalmean_1994,
       (rainpet_1994).zmin as rainpet_zonalmin_1994,
       (rainpet_1994).zmax as rainpet_zonalmax_1994
,(rainpet_1995).zmean as rainpet_zonalmean_1995,
       (rainpet_1995).zmin as rainpet_zonalmin_1995,
       (rainpet_1995).zmax as rainpet_zonalmax_1995
,(rainpet_1996).zmean as rainpet_zonalmean_1996,
       (rainpet_1996).zmin as rainpet_zonalmin_1996,
       (rainpet_1996).zmax as rainpet_zonalmax_1996
,(rainpet_1997).zmean as rainpet_zonalmean_1997,
       (rainpet_1997).zmin as rainpet_zonalmin_1997,
       (rainpet_1997).zmax as rainpet_zonalmax_1997
,(rainpet_1998).zmean as rainpet_zonalmean_1998,
       (rainpet_1998).zmin as rainpet_zonalmin_1998,
       (rainpet_1998).zmax as rainpet_zonalmax_1998
,(rainpet_1999).zmean as rainpet_zonalmean_1999,
       (rainpet_1999).zmin as rainpet_zonalmin_1999,
       (rainpet_1999).zmax as rainpet_zonalmax_1999
,(rainpet_2000).zmean as rainpet_zonalmean_2000,
       (rainpet_2000).zmin as rainpet_zonalmin_2000,
       (rainpet_2000).zmax as rainpet_zonalmax_2000
,(rainpet_2001).zmean as rainpet_zonalmean_2001,
       (rainpet_2001).zmin as rainpet_zonalmin_2001,
       (rainpet_2001).zmax as rainpet_zonalmax_2001
,(rainpet_2002).zmean as rainpet_zonalmean_2002,
       (rainpet_2002).zmin as rainpet_zonalmin_2002,
       (rainpet_2002).zmax as rainpet_zonalmax_2002
,(rainpet_2003).zmean as rainpet_zonalmean_2003,
       (rainpet_2003).zmin as rainpet_zonalmin_2003,
       (rainpet_2003).zmax as rainpet_zonalmax_2003
,(rainpet_2004).zmean as rainpet_zonalmean_2004,
       (rainpet_2004).zmin as rainpet_zonalmin_2004,
       (rainpet_2004).zmax as rainpet_zonalmax_2004
,(rainpet_2005).zmean as rainpet_zonalmean_2005,
       (rainpet_2005).zmin as rainpet_zonalmin_2005,
       (rainpet_2005).zmax as rainpet_zonalmax_2005
,(rainpet_2006).zmean as rainpet_zonalmean_2006,
       (rainpet_2006).zmin as rainpet_zonalmin_2006,
       (rainpet_2006).zmax as rainpet_zonalmax_2006
,(rainpet_2007).zmean as rainpet_zonalmean_2007,
       (rainpet_2007).zmin as rainpet_zonalmin_2007,
       (rainpet_2007).zmax as rainpet_zonalmax_2007
,(rainpet_2008).zmean as rainpet_zonalmean_2008,
       (rainpet_2008).zmin as rainpet_zonalmin_2008,
       (rainpet_2008).zmax as rainpet_zonalmax_2008
,(rainpet_2009).zmean as rainpet_zonalmean_2009,
       (rainpet_2009).zmin as rainpet_zonalmin_2009,
       (rainpet_2009).zmax as rainpet_zonalmax_2009
,(rainpet_2010).zmean as rainpet_zonalmean_2010,
       (rainpet_2010).zmin as rainpet_zonalmin_2010,
       (rainpet_2010).zmax as rainpet_zonalmax_2010
,(rainpet_2011).zmean as rainpet_zonalmean_2011,
       (rainpet_2011).zmin as rainpet_zonalmin_2011,
       (rainpet_2011).zmax as rainpet_zonalmax_2011
,(rainpet_2012).zmean as rainpet_zonalmean_2012,
       (rainpet_2012).zmin as rainpet_zonalmin_2012,
       (rainpet_2012).zmax as rainpet_zonalmax_2012
,(rainpet_2013).zmean as rainpet_zonalmean_2013,
       (rainpet_2013).zmin as rainpet_zonalmin_2013,
       (rainpet_2013).zmax as rainpet_zonalmax_2013
,(rainpet_2014).zmean as rainpet_zonalmean_2014,
       (rainpet_2014).zmin as rainpet_zonalmin_2014,
       (rainpet_2014).zmax as rainpet_zonalmax_2014
,(rainpet_2015).zmean as rainpet_zonalmean_2015,
       (rainpet_2015).zmin as rainpet_zonalmin_2015,
       (rainpet_2015).zmax as rainpet_zonalmax_2015
,(rainpet_2016).zmean as rainpet_zonalmean_2016,
       (rainpet_2016).zmin as rainpet_zonalmin_2016,
       (rainpet_2016).zmax as rainpet_zonalmax_2016
,(rainpet_2017).zmean as rainpet_zonalmean_2017,
       (rainpet_2017).zmin as rainpet_zonalmin_2017,
       (rainpet_2017).zmax as rainpet_zonalmax_2017
,(rainpet_2018).zmean as rainpet_zonalmean_2018,
       (rainpet_2018).zmin as rainpet_zonalmin_2018,
       (rainpet_2018).zmax as rainpet_zonalmax_2018
,(rainpet_2019).zmean as rainpet_zonalmean_2019,
       (rainpet_2019).zmin as rainpet_zonalmin_2019,
       (rainpet_2019).zmax as rainpet_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "rainpet_basin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, rainpet_1958 zonaloutput,
rainpet_1959 zonaloutput,
rainpet_1960 zonaloutput,
rainpet_1961 zonaloutput,
rainpet_1962 zonaloutput,
rainpet_1963 zonaloutput,
rainpet_1964 zonaloutput,
rainpet_1965 zonaloutput,
rainpet_1966 zonaloutput,
rainpet_1967 zonaloutput,
rainpet_1968 zonaloutput,
rainpet_1969 zonaloutput,
rainpet_1970 zonaloutput,
rainpet_1971 zonaloutput,
rainpet_1972 zonaloutput,
rainpet_1973 zonaloutput,
rainpet_1974 zonaloutput,
rainpet_1975 zonaloutput,
rainpet_1976 zonaloutput,
rainpet_1977 zonaloutput,
rainpet_1978 zonaloutput,
rainpet_1979 zonaloutput,
rainpet_1980 zonaloutput,
rainpet_1981 zonaloutput,
rainpet_1982 zonaloutput,
rainpet_1983 zonaloutput,
rainpet_1984 zonaloutput,
rainpet_1985 zonaloutput,
rainpet_1986 zonaloutput,
rainpet_1987 zonaloutput,
rainpet_1988 zonaloutput,
rainpet_1989 zonaloutput,
rainpet_1990 zonaloutput,
rainpet_1991 zonaloutput,
rainpet_1992 zonaloutput,
rainpet_1993 zonaloutput,
rainpet_1994 zonaloutput,
rainpet_1995 zonaloutput,
rainpet_1996 zonaloutput,
rainpet_1997 zonaloutput,
rainpet_1998 zonaloutput,
rainpet_1999 zonaloutput,
rainpet_2000 zonaloutput,
rainpet_2001 zonaloutput,
rainpet_2002 zonaloutput,
rainpet_2003 zonaloutput,
rainpet_2004 zonaloutput,
rainpet_2005 zonaloutput,
rainpet_2006 zonaloutput,
rainpet_2007 zonaloutput,
rainpet_2008 zonaloutput,
rainpet_2009 zonaloutput,
rainpet_2010 zonaloutput,
rainpet_2011 zonaloutput,
rainpet_2012 zonaloutput,
rainpet_2013 zonaloutput,
rainpet_2014 zonaloutput,
rainpet_2015 zonaloutput,
rainpet_2016 zonaloutput,
rainpet_2017 zonaloutput,
rainpet_2018 zonaloutput,
rainpet_2019 zonaloutput) INNER JOIN hydrostn30_basin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_snowpack_basin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_snowpack_basin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (snowpack_1958).zmean as snowpack_zonalmean_1958,
       (snowpack_1958).zmin as snowpack_zonalmin_1958,
       (snowpack_1958).zmax as snowpack_zonalmax_1958
,(snowpack_1959).zmean as snowpack_zonalmean_1959,
       (snowpack_1959).zmin as snowpack_zonalmin_1959,
       (snowpack_1959).zmax as snowpack_zonalmax_1959
,(snowpack_1960).zmean as snowpack_zonalmean_1960,
       (snowpack_1960).zmin as snowpack_zonalmin_1960,
       (snowpack_1960).zmax as snowpack_zonalmax_1960
,(snowpack_1961).zmean as snowpack_zonalmean_1961,
       (snowpack_1961).zmin as snowpack_zonalmin_1961,
       (snowpack_1961).zmax as snowpack_zonalmax_1961
,(snowpack_1962).zmean as snowpack_zonalmean_1962,
       (snowpack_1962).zmin as snowpack_zonalmin_1962,
       (snowpack_1962).zmax as snowpack_zonalmax_1962
,(snowpack_1963).zmean as snowpack_zonalmean_1963,
       (snowpack_1963).zmin as snowpack_zonalmin_1963,
       (snowpack_1963).zmax as snowpack_zonalmax_1963
,(snowpack_1964).zmean as snowpack_zonalmean_1964,
       (snowpack_1964).zmin as snowpack_zonalmin_1964,
       (snowpack_1964).zmax as snowpack_zonalmax_1964
,(snowpack_1965).zmean as snowpack_zonalmean_1965,
       (snowpack_1965).zmin as snowpack_zonalmin_1965,
       (snowpack_1965).zmax as snowpack_zonalmax_1965
,(snowpack_1966).zmean as snowpack_zonalmean_1966,
       (snowpack_1966).zmin as snowpack_zonalmin_1966,
       (snowpack_1966).zmax as snowpack_zonalmax_1966
,(snowpack_1967).zmean as snowpack_zonalmean_1967,
       (snowpack_1967).zmin as snowpack_zonalmin_1967,
       (snowpack_1967).zmax as snowpack_zonalmax_1967
,(snowpack_1968).zmean as snowpack_zonalmean_1968,
       (snowpack_1968).zmin as snowpack_zonalmin_1968,
       (snowpack_1968).zmax as snowpack_zonalmax_1968
,(snowpack_1969).zmean as snowpack_zonalmean_1969,
       (snowpack_1969).zmin as snowpack_zonalmin_1969,
       (snowpack_1969).zmax as snowpack_zonalmax_1969
,(snowpack_1970).zmean as snowpack_zonalmean_1970,
       (snowpack_1970).zmin as snowpack_zonalmin_1970,
       (snowpack_1970).zmax as snowpack_zonalmax_1970
,(snowpack_1971).zmean as snowpack_zonalmean_1971,
       (snowpack_1971).zmin as snowpack_zonalmin_1971,
       (snowpack_1971).zmax as snowpack_zonalmax_1971
,(snowpack_1972).zmean as snowpack_zonalmean_1972,
       (snowpack_1972).zmin as snowpack_zonalmin_1972,
       (snowpack_1972).zmax as snowpack_zonalmax_1972
,(snowpack_1973).zmean as snowpack_zonalmean_1973,
       (snowpack_1973).zmin as snowpack_zonalmin_1973,
       (snowpack_1973).zmax as snowpack_zonalmax_1973
,(snowpack_1974).zmean as snowpack_zonalmean_1974,
       (snowpack_1974).zmin as snowpack_zonalmin_1974,
       (snowpack_1974).zmax as snowpack_zonalmax_1974
,(snowpack_1975).zmean as snowpack_zonalmean_1975,
       (snowpack_1975).zmin as snowpack_zonalmin_1975,
       (snowpack_1975).zmax as snowpack_zonalmax_1975
,(snowpack_1976).zmean as snowpack_zonalmean_1976,
       (snowpack_1976).zmin as snowpack_zonalmin_1976,
       (snowpack_1976).zmax as snowpack_zonalmax_1976
,(snowpack_1977).zmean as snowpack_zonalmean_1977,
       (snowpack_1977).zmin as snowpack_zonalmin_1977,
       (snowpack_1977).zmax as snowpack_zonalmax_1977
,(snowpack_1978).zmean as snowpack_zonalmean_1978,
       (snowpack_1978).zmin as snowpack_zonalmin_1978,
       (snowpack_1978).zmax as snowpack_zonalmax_1978
,(snowpack_1979).zmean as snowpack_zonalmean_1979,
       (snowpack_1979).zmin as snowpack_zonalmin_1979,
       (snowpack_1979).zmax as snowpack_zonalmax_1979
,(snowpack_1980).zmean as snowpack_zonalmean_1980,
       (snowpack_1980).zmin as snowpack_zonalmin_1980,
       (snowpack_1980).zmax as snowpack_zonalmax_1980
,(snowpack_1981).zmean as snowpack_zonalmean_1981,
       (snowpack_1981).zmin as snowpack_zonalmin_1981,
       (snowpack_1981).zmax as snowpack_zonalmax_1981
,(snowpack_1982).zmean as snowpack_zonalmean_1982,
       (snowpack_1982).zmin as snowpack_zonalmin_1982,
       (snowpack_1982).zmax as snowpack_zonalmax_1982
,(snowpack_1983).zmean as snowpack_zonalmean_1983,
       (snowpack_1983).zmin as snowpack_zonalmin_1983,
       (snowpack_1983).zmax as snowpack_zonalmax_1983
,(snowpack_1984).zmean as snowpack_zonalmean_1984,
       (snowpack_1984).zmin as snowpack_zonalmin_1984,
       (snowpack_1984).zmax as snowpack_zonalmax_1984
,(snowpack_1985).zmean as snowpack_zonalmean_1985,
       (snowpack_1985).zmin as snowpack_zonalmin_1985,
       (snowpack_1985).zmax as snowpack_zonalmax_1985
,(snowpack_1986).zmean as snowpack_zonalmean_1986,
       (snowpack_1986).zmin as snowpack_zonalmin_1986,
       (snowpack_1986).zmax as snowpack_zonalmax_1986
,(snowpack_1987).zmean as snowpack_zonalmean_1987,
       (snowpack_1987).zmin as snowpack_zonalmin_1987,
       (snowpack_1987).zmax as snowpack_zonalmax_1987
,(snowpack_1988).zmean as snowpack_zonalmean_1988,
       (snowpack_1988).zmin as snowpack_zonalmin_1988,
       (snowpack_1988).zmax as snowpack_zonalmax_1988
,(snowpack_1989).zmean as snowpack_zonalmean_1989,
       (snowpack_1989).zmin as snowpack_zonalmin_1989,
       (snowpack_1989).zmax as snowpack_zonalmax_1989
,(snowpack_1990).zmean as snowpack_zonalmean_1990,
       (snowpack_1990).zmin as snowpack_zonalmin_1990,
       (snowpack_1990).zmax as snowpack_zonalmax_1990
,(snowpack_1991).zmean as snowpack_zonalmean_1991,
       (snowpack_1991).zmin as snowpack_zonalmin_1991,
       (snowpack_1991).zmax as snowpack_zonalmax_1991
,(snowpack_1992).zmean as snowpack_zonalmean_1992,
       (snowpack_1992).zmin as snowpack_zonalmin_1992,
       (snowpack_1992).zmax as snowpack_zonalmax_1992
,(snowpack_1993).zmean as snowpack_zonalmean_1993,
       (snowpack_1993).zmin as snowpack_zonalmin_1993,
       (snowpack_1993).zmax as snowpack_zonalmax_1993
,(snowpack_1994).zmean as snowpack_zonalmean_1994,
       (snowpack_1994).zmin as snowpack_zonalmin_1994,
       (snowpack_1994).zmax as snowpack_zonalmax_1994
,(snowpack_1995).zmean as snowpack_zonalmean_1995,
       (snowpack_1995).zmin as snowpack_zonalmin_1995,
       (snowpack_1995).zmax as snowpack_zonalmax_1995
,(snowpack_1996).zmean as snowpack_zonalmean_1996,
       (snowpack_1996).zmin as snowpack_zonalmin_1996,
       (snowpack_1996).zmax as snowpack_zonalmax_1996
,(snowpack_1997).zmean as snowpack_zonalmean_1997,
       (snowpack_1997).zmin as snowpack_zonalmin_1997,
       (snowpack_1997).zmax as snowpack_zonalmax_1997
,(snowpack_1998).zmean as snowpack_zonalmean_1998,
       (snowpack_1998).zmin as snowpack_zonalmin_1998,
       (snowpack_1998).zmax as snowpack_zonalmax_1998
,(snowpack_1999).zmean as snowpack_zonalmean_1999,
       (snowpack_1999).zmin as snowpack_zonalmin_1999,
       (snowpack_1999).zmax as snowpack_zonalmax_1999
,(snowpack_2000).zmean as snowpack_zonalmean_2000,
       (snowpack_2000).zmin as snowpack_zonalmin_2000,
       (snowpack_2000).zmax as snowpack_zonalmax_2000
,(snowpack_2001).zmean as snowpack_zonalmean_2001,
       (snowpack_2001).zmin as snowpack_zonalmin_2001,
       (snowpack_2001).zmax as snowpack_zonalmax_2001
,(snowpack_2002).zmean as snowpack_zonalmean_2002,
       (snowpack_2002).zmin as snowpack_zonalmin_2002,
       (snowpack_2002).zmax as snowpack_zonalmax_2002
,(snowpack_2003).zmean as snowpack_zonalmean_2003,
       (snowpack_2003).zmin as snowpack_zonalmin_2003,
       (snowpack_2003).zmax as snowpack_zonalmax_2003
,(snowpack_2004).zmean as snowpack_zonalmean_2004,
       (snowpack_2004).zmin as snowpack_zonalmin_2004,
       (snowpack_2004).zmax as snowpack_zonalmax_2004
,(snowpack_2005).zmean as snowpack_zonalmean_2005,
       (snowpack_2005).zmin as snowpack_zonalmin_2005,
       (snowpack_2005).zmax as snowpack_zonalmax_2005
,(snowpack_2006).zmean as snowpack_zonalmean_2006,
       (snowpack_2006).zmin as snowpack_zonalmin_2006,
       (snowpack_2006).zmax as snowpack_zonalmax_2006
,(snowpack_2007).zmean as snowpack_zonalmean_2007,
       (snowpack_2007).zmin as snowpack_zonalmin_2007,
       (snowpack_2007).zmax as snowpack_zonalmax_2007
,(snowpack_2008).zmean as snowpack_zonalmean_2008,
       (snowpack_2008).zmin as snowpack_zonalmin_2008,
       (snowpack_2008).zmax as snowpack_zonalmax_2008
,(snowpack_2009).zmean as snowpack_zonalmean_2009,
       (snowpack_2009).zmin as snowpack_zonalmin_2009,
       (snowpack_2009).zmax as snowpack_zonalmax_2009
,(snowpack_2010).zmean as snowpack_zonalmean_2010,
       (snowpack_2010).zmin as snowpack_zonalmin_2010,
       (snowpack_2010).zmax as snowpack_zonalmax_2010
,(snowpack_2011).zmean as snowpack_zonalmean_2011,
       (snowpack_2011).zmin as snowpack_zonalmin_2011,
       (snowpack_2011).zmax as snowpack_zonalmax_2011
,(snowpack_2012).zmean as snowpack_zonalmean_2012,
       (snowpack_2012).zmin as snowpack_zonalmin_2012,
       (snowpack_2012).zmax as snowpack_zonalmax_2012
,(snowpack_2013).zmean as snowpack_zonalmean_2013,
       (snowpack_2013).zmin as snowpack_zonalmin_2013,
       (snowpack_2013).zmax as snowpack_zonalmax_2013
,(snowpack_2014).zmean as snowpack_zonalmean_2014,
       (snowpack_2014).zmin as snowpack_zonalmin_2014,
       (snowpack_2014).zmax as snowpack_zonalmax_2014
,(snowpack_2015).zmean as snowpack_zonalmean_2015,
       (snowpack_2015).zmin as snowpack_zonalmin_2015,
       (snowpack_2015).zmax as snowpack_zonalmax_2015
,(snowpack_2016).zmean as snowpack_zonalmean_2016,
       (snowpack_2016).zmin as snowpack_zonalmin_2016,
       (snowpack_2016).zmax as snowpack_zonalmax_2016
,(snowpack_2017).zmean as snowpack_zonalmean_2017,
       (snowpack_2017).zmin as snowpack_zonalmin_2017,
       (snowpack_2017).zmax as snowpack_zonalmax_2017
,(snowpack_2018).zmean as snowpack_zonalmean_2018,
       (snowpack_2018).zmin as snowpack_zonalmin_2018,
       (snowpack_2018).zmax as snowpack_zonalmax_2018
,(snowpack_2019).zmean as snowpack_zonalmean_2019,
       (snowpack_2019).zmin as snowpack_zonalmin_2019,
       (snowpack_2019).zmax as snowpack_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "snowpack_basin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, snowpack_1958 zonaloutput,
snowpack_1959 zonaloutput,
snowpack_1960 zonaloutput,
snowpack_1961 zonaloutput,
snowpack_1962 zonaloutput,
snowpack_1963 zonaloutput,
snowpack_1964 zonaloutput,
snowpack_1965 zonaloutput,
snowpack_1966 zonaloutput,
snowpack_1967 zonaloutput,
snowpack_1968 zonaloutput,
snowpack_1969 zonaloutput,
snowpack_1970 zonaloutput,
snowpack_1971 zonaloutput,
snowpack_1972 zonaloutput,
snowpack_1973 zonaloutput,
snowpack_1974 zonaloutput,
snowpack_1975 zonaloutput,
snowpack_1976 zonaloutput,
snowpack_1977 zonaloutput,
snowpack_1978 zonaloutput,
snowpack_1979 zonaloutput,
snowpack_1980 zonaloutput,
snowpack_1981 zonaloutput,
snowpack_1982 zonaloutput,
snowpack_1983 zonaloutput,
snowpack_1984 zonaloutput,
snowpack_1985 zonaloutput,
snowpack_1986 zonaloutput,
snowpack_1987 zonaloutput,
snowpack_1988 zonaloutput,
snowpack_1989 zonaloutput,
snowpack_1990 zonaloutput,
snowpack_1991 zonaloutput,
snowpack_1992 zonaloutput,
snowpack_1993 zonaloutput,
snowpack_1994 zonaloutput,
snowpack_1995 zonaloutput,
snowpack_1996 zonaloutput,
snowpack_1997 zonaloutput,
snowpack_1998 zonaloutput,
snowpack_1999 zonaloutput,
snowpack_2000 zonaloutput,
snowpack_2001 zonaloutput,
snowpack_2002 zonaloutput,
snowpack_2003 zonaloutput,
snowpack_2004 zonaloutput,
snowpack_2005 zonaloutput,
snowpack_2006 zonaloutput,
snowpack_2007 zonaloutput,
snowpack_2008 zonaloutput,
snowpack_2009 zonaloutput,
snowpack_2010 zonaloutput,
snowpack_2011 zonaloutput,
snowpack_2012 zonaloutput,
snowpack_2013 zonaloutput,
snowpack_2014 zonaloutput,
snowpack_2015 zonaloutput,
snowpack_2016 zonaloutput,
snowpack_2017 zonaloutput,
snowpack_2018 zonaloutput,
snowpack_2019 zonaloutput) INNER JOIN hydrostn30_basin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_runoff_basin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_runoff_basin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (runoff_1958).zmean as runoff_zonalmean_1958,
       (runoff_1958).zmin as runoff_zonalmin_1958,
       (runoff_1958).zmax as runoff_zonalmax_1958
,(runoff_1959).zmean as runoff_zonalmean_1959,
       (runoff_1959).zmin as runoff_zonalmin_1959,
       (runoff_1959).zmax as runoff_zonalmax_1959
,(runoff_1960).zmean as runoff_zonalmean_1960,
       (runoff_1960).zmin as runoff_zonalmin_1960,
       (runoff_1960).zmax as runoff_zonalmax_1960
,(runoff_1961).zmean as runoff_zonalmean_1961,
       (runoff_1961).zmin as runoff_zonalmin_1961,
       (runoff_1961).zmax as runoff_zonalmax_1961
,(runoff_1962).zmean as runoff_zonalmean_1962,
       (runoff_1962).zmin as runoff_zonalmin_1962,
       (runoff_1962).zmax as runoff_zonalmax_1962
,(runoff_1963).zmean as runoff_zonalmean_1963,
       (runoff_1963).zmin as runoff_zonalmin_1963,
       (runoff_1963).zmax as runoff_zonalmax_1963
,(runoff_1964).zmean as runoff_zonalmean_1964,
       (runoff_1964).zmin as runoff_zonalmin_1964,
       (runoff_1964).zmax as runoff_zonalmax_1964
,(runoff_1965).zmean as runoff_zonalmean_1965,
       (runoff_1965).zmin as runoff_zonalmin_1965,
       (runoff_1965).zmax as runoff_zonalmax_1965
,(runoff_1966).zmean as runoff_zonalmean_1966,
       (runoff_1966).zmin as runoff_zonalmin_1966,
       (runoff_1966).zmax as runoff_zonalmax_1966
,(runoff_1967).zmean as runoff_zonalmean_1967,
       (runoff_1967).zmin as runoff_zonalmin_1967,
       (runoff_1967).zmax as runoff_zonalmax_1967
,(runoff_1968).zmean as runoff_zonalmean_1968,
       (runoff_1968).zmin as runoff_zonalmin_1968,
       (runoff_1968).zmax as runoff_zonalmax_1968
,(runoff_1969).zmean as runoff_zonalmean_1969,
       (runoff_1969).zmin as runoff_zonalmin_1969,
       (runoff_1969).zmax as runoff_zonalmax_1969
,(runoff_1970).zmean as runoff_zonalmean_1970,
       (runoff_1970).zmin as runoff_zonalmin_1970,
       (runoff_1970).zmax as runoff_zonalmax_1970
,(runoff_1971).zmean as runoff_zonalmean_1971,
       (runoff_1971).zmin as runoff_zonalmin_1971,
       (runoff_1971).zmax as runoff_zonalmax_1971
,(runoff_1972).zmean as runoff_zonalmean_1972,
       (runoff_1972).zmin as runoff_zonalmin_1972,
       (runoff_1972).zmax as runoff_zonalmax_1972
,(runoff_1973).zmean as runoff_zonalmean_1973,
       (runoff_1973).zmin as runoff_zonalmin_1973,
       (runoff_1973).zmax as runoff_zonalmax_1973
,(runoff_1974).zmean as runoff_zonalmean_1974,
       (runoff_1974).zmin as runoff_zonalmin_1974,
       (runoff_1974).zmax as runoff_zonalmax_1974
,(runoff_1975).zmean as runoff_zonalmean_1975,
       (runoff_1975).zmin as runoff_zonalmin_1975,
       (runoff_1975).zmax as runoff_zonalmax_1975
,(runoff_1976).zmean as runoff_zonalmean_1976,
       (runoff_1976).zmin as runoff_zonalmin_1976,
       (runoff_1976).zmax as runoff_zonalmax_1976
,(runoff_1977).zmean as runoff_zonalmean_1977,
       (runoff_1977).zmin as runoff_zonalmin_1977,
       (runoff_1977).zmax as runoff_zonalmax_1977
,(runoff_1978).zmean as runoff_zonalmean_1978,
       (runoff_1978).zmin as runoff_zonalmin_1978,
       (runoff_1978).zmax as runoff_zonalmax_1978
,(runoff_1979).zmean as runoff_zonalmean_1979,
       (runoff_1979).zmin as runoff_zonalmin_1979,
       (runoff_1979).zmax as runoff_zonalmax_1979
,(runoff_1980).zmean as runoff_zonalmean_1980,
       (runoff_1980).zmin as runoff_zonalmin_1980,
       (runoff_1980).zmax as runoff_zonalmax_1980
,(runoff_1981).zmean as runoff_zonalmean_1981,
       (runoff_1981).zmin as runoff_zonalmin_1981,
       (runoff_1981).zmax as runoff_zonalmax_1981
,(runoff_1982).zmean as runoff_zonalmean_1982,
       (runoff_1982).zmin as runoff_zonalmin_1982,
       (runoff_1982).zmax as runoff_zonalmax_1982
,(runoff_1983).zmean as runoff_zonalmean_1983,
       (runoff_1983).zmin as runoff_zonalmin_1983,
       (runoff_1983).zmax as runoff_zonalmax_1983
,(runoff_1984).zmean as runoff_zonalmean_1984,
       (runoff_1984).zmin as runoff_zonalmin_1984,
       (runoff_1984).zmax as runoff_zonalmax_1984
,(runoff_1985).zmean as runoff_zonalmean_1985,
       (runoff_1985).zmin as runoff_zonalmin_1985,
       (runoff_1985).zmax as runoff_zonalmax_1985
,(runoff_1986).zmean as runoff_zonalmean_1986,
       (runoff_1986).zmin as runoff_zonalmin_1986,
       (runoff_1986).zmax as runoff_zonalmax_1986
,(runoff_1987).zmean as runoff_zonalmean_1987,
       (runoff_1987).zmin as runoff_zonalmin_1987,
       (runoff_1987).zmax as runoff_zonalmax_1987
,(runoff_1988).zmean as runoff_zonalmean_1988,
       (runoff_1988).zmin as runoff_zonalmin_1988,
       (runoff_1988).zmax as runoff_zonalmax_1988
,(runoff_1989).zmean as runoff_zonalmean_1989,
       (runoff_1989).zmin as runoff_zonalmin_1989,
       (runoff_1989).zmax as runoff_zonalmax_1989
,(runoff_1990).zmean as runoff_zonalmean_1990,
       (runoff_1990).zmin as runoff_zonalmin_1990,
       (runoff_1990).zmax as runoff_zonalmax_1990
,(runoff_1991).zmean as runoff_zonalmean_1991,
       (runoff_1991).zmin as runoff_zonalmin_1991,
       (runoff_1991).zmax as runoff_zonalmax_1991
,(runoff_1992).zmean as runoff_zonalmean_1992,
       (runoff_1992).zmin as runoff_zonalmin_1992,
       (runoff_1992).zmax as runoff_zonalmax_1992
,(runoff_1993).zmean as runoff_zonalmean_1993,
       (runoff_1993).zmin as runoff_zonalmin_1993,
       (runoff_1993).zmax as runoff_zonalmax_1993
,(runoff_1994).zmean as runoff_zonalmean_1994,
       (runoff_1994).zmin as runoff_zonalmin_1994,
       (runoff_1994).zmax as runoff_zonalmax_1994
,(runoff_1995).zmean as runoff_zonalmean_1995,
       (runoff_1995).zmin as runoff_zonalmin_1995,
       (runoff_1995).zmax as runoff_zonalmax_1995
,(runoff_1996).zmean as runoff_zonalmean_1996,
       (runoff_1996).zmin as runoff_zonalmin_1996,
       (runoff_1996).zmax as runoff_zonalmax_1996
,(runoff_1997).zmean as runoff_zonalmean_1997,
       (runoff_1997).zmin as runoff_zonalmin_1997,
       (runoff_1997).zmax as runoff_zonalmax_1997
,(runoff_1998).zmean as runoff_zonalmean_1998,
       (runoff_1998).zmin as runoff_zonalmin_1998,
       (runoff_1998).zmax as runoff_zonalmax_1998
,(runoff_1999).zmean as runoff_zonalmean_1999,
       (runoff_1999).zmin as runoff_zonalmin_1999,
       (runoff_1999).zmax as runoff_zonalmax_1999
,(runoff_2000).zmean as runoff_zonalmean_2000,
       (runoff_2000).zmin as runoff_zonalmin_2000,
       (runoff_2000).zmax as runoff_zonalmax_2000
,(runoff_2001).zmean as runoff_zonalmean_2001,
       (runoff_2001).zmin as runoff_zonalmin_2001,
       (runoff_2001).zmax as runoff_zonalmax_2001
,(runoff_2002).zmean as runoff_zonalmean_2002,
       (runoff_2002).zmin as runoff_zonalmin_2002,
       (runoff_2002).zmax as runoff_zonalmax_2002
,(runoff_2003).zmean as runoff_zonalmean_2003,
       (runoff_2003).zmin as runoff_zonalmin_2003,
       (runoff_2003).zmax as runoff_zonalmax_2003
,(runoff_2004).zmean as runoff_zonalmean_2004,
       (runoff_2004).zmin as runoff_zonalmin_2004,
       (runoff_2004).zmax as runoff_zonalmax_2004
,(runoff_2005).zmean as runoff_zonalmean_2005,
       (runoff_2005).zmin as runoff_zonalmin_2005,
       (runoff_2005).zmax as runoff_zonalmax_2005
,(runoff_2006).zmean as runoff_zonalmean_2006,
       (runoff_2006).zmin as runoff_zonalmin_2006,
       (runoff_2006).zmax as runoff_zonalmax_2006
,(runoff_2007).zmean as runoff_zonalmean_2007,
       (runoff_2007).zmin as runoff_zonalmin_2007,
       (runoff_2007).zmax as runoff_zonalmax_2007
,(runoff_2008).zmean as runoff_zonalmean_2008,
       (runoff_2008).zmin as runoff_zonalmin_2008,
       (runoff_2008).zmax as runoff_zonalmax_2008
,(runoff_2009).zmean as runoff_zonalmean_2009,
       (runoff_2009).zmin as runoff_zonalmin_2009,
       (runoff_2009).zmax as runoff_zonalmax_2009
,(runoff_2010).zmean as runoff_zonalmean_2010,
       (runoff_2010).zmin as runoff_zonalmin_2010,
       (runoff_2010).zmax as runoff_zonalmax_2010
,(runoff_2011).zmean as runoff_zonalmean_2011,
       (runoff_2011).zmin as runoff_zonalmin_2011,
       (runoff_2011).zmax as runoff_zonalmax_2011
,(runoff_2012).zmean as runoff_zonalmean_2012,
       (runoff_2012).zmin as runoff_zonalmin_2012,
       (runoff_2012).zmax as runoff_zonalmax_2012
,(runoff_2013).zmean as runoff_zonalmean_2013,
       (runoff_2013).zmin as runoff_zonalmin_2013,
       (runoff_2013).zmax as runoff_zonalmax_2013
,(runoff_2014).zmean as runoff_zonalmean_2014,
       (runoff_2014).zmin as runoff_zonalmin_2014,
       (runoff_2014).zmax as runoff_zonalmax_2014
,(runoff_2015).zmean as runoff_zonalmean_2015,
       (runoff_2015).zmin as runoff_zonalmin_2015,
       (runoff_2015).zmax as runoff_zonalmax_2015
,(runoff_2016).zmean as runoff_zonalmean_2016,
       (runoff_2016).zmin as runoff_zonalmin_2016,
       (runoff_2016).zmax as runoff_zonalmax_2016
,(runoff_2017).zmean as runoff_zonalmean_2017,
       (runoff_2017).zmin as runoff_zonalmin_2017,
       (runoff_2017).zmax as runoff_zonalmax_2017
,(runoff_2018).zmean as runoff_zonalmean_2018,
       (runoff_2018).zmin as runoff_zonalmin_2018,
       (runoff_2018).zmax as runoff_zonalmax_2018
,(runoff_2019).zmean as runoff_zonalmean_2019,
       (runoff_2019).zmin as runoff_zonalmin_2019,
       (runoff_2019).zmax as runoff_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "runoff_basin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, runoff_1958 zonaloutput,
runoff_1959 zonaloutput,
runoff_1960 zonaloutput,
runoff_1961 zonaloutput,
runoff_1962 zonaloutput,
runoff_1963 zonaloutput,
runoff_1964 zonaloutput,
runoff_1965 zonaloutput,
runoff_1966 zonaloutput,
runoff_1967 zonaloutput,
runoff_1968 zonaloutput,
runoff_1969 zonaloutput,
runoff_1970 zonaloutput,
runoff_1971 zonaloutput,
runoff_1972 zonaloutput,
runoff_1973 zonaloutput,
runoff_1974 zonaloutput,
runoff_1975 zonaloutput,
runoff_1976 zonaloutput,
runoff_1977 zonaloutput,
runoff_1978 zonaloutput,
runoff_1979 zonaloutput,
runoff_1980 zonaloutput,
runoff_1981 zonaloutput,
runoff_1982 zonaloutput,
runoff_1983 zonaloutput,
runoff_1984 zonaloutput,
runoff_1985 zonaloutput,
runoff_1986 zonaloutput,
runoff_1987 zonaloutput,
runoff_1988 zonaloutput,
runoff_1989 zonaloutput,
runoff_1990 zonaloutput,
runoff_1991 zonaloutput,
runoff_1992 zonaloutput,
runoff_1993 zonaloutput,
runoff_1994 zonaloutput,
runoff_1995 zonaloutput,
runoff_1996 zonaloutput,
runoff_1997 zonaloutput,
runoff_1998 zonaloutput,
runoff_1999 zonaloutput,
runoff_2000 zonaloutput,
runoff_2001 zonaloutput,
runoff_2002 zonaloutput,
runoff_2003 zonaloutput,
runoff_2004 zonaloutput,
runoff_2005 zonaloutput,
runoff_2006 zonaloutput,
runoff_2007 zonaloutput,
runoff_2008 zonaloutput,
runoff_2009 zonaloutput,
runoff_2010 zonaloutput,
runoff_2011 zonaloutput,
runoff_2012 zonaloutput,
runoff_2013 zonaloutput,
runoff_2014 zonaloutput,
runoff_2015 zonaloutput,
runoff_2016 zonaloutput,
runoff_2017 zonaloutput,
runoff_2018 zonaloutput,
runoff_2019 zonaloutput) INNER JOIN hydrostn30_basin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_evapotranspiration_subbasin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_evapotranspiration_subbasin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (evapotranspiration_1958).zmean as evapotranspiration_zonalmean_1958,
       (evapotranspiration_1958).zmin as evapotranspiration_zonalmin_1958,
       (evapotranspiration_1958).zmax as evapotranspiration_zonalmax_1958
,(evapotranspiration_1959).zmean as evapotranspiration_zonalmean_1959,
       (evapotranspiration_1959).zmin as evapotranspiration_zonalmin_1959,
       (evapotranspiration_1959).zmax as evapotranspiration_zonalmax_1959
,(evapotranspiration_1960).zmean as evapotranspiration_zonalmean_1960,
       (evapotranspiration_1960).zmin as evapotranspiration_zonalmin_1960,
       (evapotranspiration_1960).zmax as evapotranspiration_zonalmax_1960
,(evapotranspiration_1961).zmean as evapotranspiration_zonalmean_1961,
       (evapotranspiration_1961).zmin as evapotranspiration_zonalmin_1961,
       (evapotranspiration_1961).zmax as evapotranspiration_zonalmax_1961
,(evapotranspiration_1962).zmean as evapotranspiration_zonalmean_1962,
       (evapotranspiration_1962).zmin as evapotranspiration_zonalmin_1962,
       (evapotranspiration_1962).zmax as evapotranspiration_zonalmax_1962
,(evapotranspiration_1963).zmean as evapotranspiration_zonalmean_1963,
       (evapotranspiration_1963).zmin as evapotranspiration_zonalmin_1963,
       (evapotranspiration_1963).zmax as evapotranspiration_zonalmax_1963
,(evapotranspiration_1964).zmean as evapotranspiration_zonalmean_1964,
       (evapotranspiration_1964).zmin as evapotranspiration_zonalmin_1964,
       (evapotranspiration_1964).zmax as evapotranspiration_zonalmax_1964
,(evapotranspiration_1965).zmean as evapotranspiration_zonalmean_1965,
       (evapotranspiration_1965).zmin as evapotranspiration_zonalmin_1965,
       (evapotranspiration_1965).zmax as evapotranspiration_zonalmax_1965
,(evapotranspiration_1966).zmean as evapotranspiration_zonalmean_1966,
       (evapotranspiration_1966).zmin as evapotranspiration_zonalmin_1966,
       (evapotranspiration_1966).zmax as evapotranspiration_zonalmax_1966
,(evapotranspiration_1967).zmean as evapotranspiration_zonalmean_1967,
       (evapotranspiration_1967).zmin as evapotranspiration_zonalmin_1967,
       (evapotranspiration_1967).zmax as evapotranspiration_zonalmax_1967
,(evapotranspiration_1968).zmean as evapotranspiration_zonalmean_1968,
       (evapotranspiration_1968).zmin as evapotranspiration_zonalmin_1968,
       (evapotranspiration_1968).zmax as evapotranspiration_zonalmax_1968
,(evapotranspiration_1969).zmean as evapotranspiration_zonalmean_1969,
       (evapotranspiration_1969).zmin as evapotranspiration_zonalmin_1969,
       (evapotranspiration_1969).zmax as evapotranspiration_zonalmax_1969
,(evapotranspiration_1970).zmean as evapotranspiration_zonalmean_1970,
       (evapotranspiration_1970).zmin as evapotranspiration_zonalmin_1970,
       (evapotranspiration_1970).zmax as evapotranspiration_zonalmax_1970
,(evapotranspiration_1971).zmean as evapotranspiration_zonalmean_1971,
       (evapotranspiration_1971).zmin as evapotranspiration_zonalmin_1971,
       (evapotranspiration_1971).zmax as evapotranspiration_zonalmax_1971
,(evapotranspiration_1972).zmean as evapotranspiration_zonalmean_1972,
       (evapotranspiration_1972).zmin as evapotranspiration_zonalmin_1972,
       (evapotranspiration_1972).zmax as evapotranspiration_zonalmax_1972
,(evapotranspiration_1973).zmean as evapotranspiration_zonalmean_1973,
       (evapotranspiration_1973).zmin as evapotranspiration_zonalmin_1973,
       (evapotranspiration_1973).zmax as evapotranspiration_zonalmax_1973
,(evapotranspiration_1974).zmean as evapotranspiration_zonalmean_1974,
       (evapotranspiration_1974).zmin as evapotranspiration_zonalmin_1974,
       (evapotranspiration_1974).zmax as evapotranspiration_zonalmax_1974
,(evapotranspiration_1975).zmean as evapotranspiration_zonalmean_1975,
       (evapotranspiration_1975).zmin as evapotranspiration_zonalmin_1975,
       (evapotranspiration_1975).zmax as evapotranspiration_zonalmax_1975
,(evapotranspiration_1976).zmean as evapotranspiration_zonalmean_1976,
       (evapotranspiration_1976).zmin as evapotranspiration_zonalmin_1976,
       (evapotranspiration_1976).zmax as evapotranspiration_zonalmax_1976
,(evapotranspiration_1977).zmean as evapotranspiration_zonalmean_1977,
       (evapotranspiration_1977).zmin as evapotranspiration_zonalmin_1977,
       (evapotranspiration_1977).zmax as evapotranspiration_zonalmax_1977
,(evapotranspiration_1978).zmean as evapotranspiration_zonalmean_1978,
       (evapotranspiration_1978).zmin as evapotranspiration_zonalmin_1978,
       (evapotranspiration_1978).zmax as evapotranspiration_zonalmax_1978
,(evapotranspiration_1979).zmean as evapotranspiration_zonalmean_1979,
       (evapotranspiration_1979).zmin as evapotranspiration_zonalmin_1979,
       (evapotranspiration_1979).zmax as evapotranspiration_zonalmax_1979
,(evapotranspiration_1980).zmean as evapotranspiration_zonalmean_1980,
       (evapotranspiration_1980).zmin as evapotranspiration_zonalmin_1980,
       (evapotranspiration_1980).zmax as evapotranspiration_zonalmax_1980
,(evapotranspiration_1981).zmean as evapotranspiration_zonalmean_1981,
       (evapotranspiration_1981).zmin as evapotranspiration_zonalmin_1981,
       (evapotranspiration_1981).zmax as evapotranspiration_zonalmax_1981
,(evapotranspiration_1982).zmean as evapotranspiration_zonalmean_1982,
       (evapotranspiration_1982).zmin as evapotranspiration_zonalmin_1982,
       (evapotranspiration_1982).zmax as evapotranspiration_zonalmax_1982
,(evapotranspiration_1983).zmean as evapotranspiration_zonalmean_1983,
       (evapotranspiration_1983).zmin as evapotranspiration_zonalmin_1983,
       (evapotranspiration_1983).zmax as evapotranspiration_zonalmax_1983
,(evapotranspiration_1984).zmean as evapotranspiration_zonalmean_1984,
       (evapotranspiration_1984).zmin as evapotranspiration_zonalmin_1984,
       (evapotranspiration_1984).zmax as evapotranspiration_zonalmax_1984
,(evapotranspiration_1985).zmean as evapotranspiration_zonalmean_1985,
       (evapotranspiration_1985).zmin as evapotranspiration_zonalmin_1985,
       (evapotranspiration_1985).zmax as evapotranspiration_zonalmax_1985
,(evapotranspiration_1986).zmean as evapotranspiration_zonalmean_1986,
       (evapotranspiration_1986).zmin as evapotranspiration_zonalmin_1986,
       (evapotranspiration_1986).zmax as evapotranspiration_zonalmax_1986
,(evapotranspiration_1987).zmean as evapotranspiration_zonalmean_1987,
       (evapotranspiration_1987).zmin as evapotranspiration_zonalmin_1987,
       (evapotranspiration_1987).zmax as evapotranspiration_zonalmax_1987
,(evapotranspiration_1988).zmean as evapotranspiration_zonalmean_1988,
       (evapotranspiration_1988).zmin as evapotranspiration_zonalmin_1988,
       (evapotranspiration_1988).zmax as evapotranspiration_zonalmax_1988
,(evapotranspiration_1989).zmean as evapotranspiration_zonalmean_1989,
       (evapotranspiration_1989).zmin as evapotranspiration_zonalmin_1989,
       (evapotranspiration_1989).zmax as evapotranspiration_zonalmax_1989
,(evapotranspiration_1990).zmean as evapotranspiration_zonalmean_1990,
       (evapotranspiration_1990).zmin as evapotranspiration_zonalmin_1990,
       (evapotranspiration_1990).zmax as evapotranspiration_zonalmax_1990
,(evapotranspiration_1991).zmean as evapotranspiration_zonalmean_1991,
       (evapotranspiration_1991).zmin as evapotranspiration_zonalmin_1991,
       (evapotranspiration_1991).zmax as evapotranspiration_zonalmax_1991
,(evapotranspiration_1992).zmean as evapotranspiration_zonalmean_1992,
       (evapotranspiration_1992).zmin as evapotranspiration_zonalmin_1992,
       (evapotranspiration_1992).zmax as evapotranspiration_zonalmax_1992
,(evapotranspiration_1993).zmean as evapotranspiration_zonalmean_1993,
       (evapotranspiration_1993).zmin as evapotranspiration_zonalmin_1993,
       (evapotranspiration_1993).zmax as evapotranspiration_zonalmax_1993
,(evapotranspiration_1994).zmean as evapotranspiration_zonalmean_1994,
       (evapotranspiration_1994).zmin as evapotranspiration_zonalmin_1994,
       (evapotranspiration_1994).zmax as evapotranspiration_zonalmax_1994
,(evapotranspiration_1995).zmean as evapotranspiration_zonalmean_1995,
       (evapotranspiration_1995).zmin as evapotranspiration_zonalmin_1995,
       (evapotranspiration_1995).zmax as evapotranspiration_zonalmax_1995
,(evapotranspiration_1996).zmean as evapotranspiration_zonalmean_1996,
       (evapotranspiration_1996).zmin as evapotranspiration_zonalmin_1996,
       (evapotranspiration_1996).zmax as evapotranspiration_zonalmax_1996
,(evapotranspiration_1997).zmean as evapotranspiration_zonalmean_1997,
       (evapotranspiration_1997).zmin as evapotranspiration_zonalmin_1997,
       (evapotranspiration_1997).zmax as evapotranspiration_zonalmax_1997
,(evapotranspiration_1998).zmean as evapotranspiration_zonalmean_1998,
       (evapotranspiration_1998).zmin as evapotranspiration_zonalmin_1998,
       (evapotranspiration_1998).zmax as evapotranspiration_zonalmax_1998
,(evapotranspiration_1999).zmean as evapotranspiration_zonalmean_1999,
       (evapotranspiration_1999).zmin as evapotranspiration_zonalmin_1999,
       (evapotranspiration_1999).zmax as evapotranspiration_zonalmax_1999
,(evapotranspiration_2000).zmean as evapotranspiration_zonalmean_2000,
       (evapotranspiration_2000).zmin as evapotranspiration_zonalmin_2000,
       (evapotranspiration_2000).zmax as evapotranspiration_zonalmax_2000
,(evapotranspiration_2001).zmean as evapotranspiration_zonalmean_2001,
       (evapotranspiration_2001).zmin as evapotranspiration_zonalmin_2001,
       (evapotranspiration_2001).zmax as evapotranspiration_zonalmax_2001
,(evapotranspiration_2002).zmean as evapotranspiration_zonalmean_2002,
       (evapotranspiration_2002).zmin as evapotranspiration_zonalmin_2002,
       (evapotranspiration_2002).zmax as evapotranspiration_zonalmax_2002
,(evapotranspiration_2003).zmean as evapotranspiration_zonalmean_2003,
       (evapotranspiration_2003).zmin as evapotranspiration_zonalmin_2003,
       (evapotranspiration_2003).zmax as evapotranspiration_zonalmax_2003
,(evapotranspiration_2004).zmean as evapotranspiration_zonalmean_2004,
       (evapotranspiration_2004).zmin as evapotranspiration_zonalmin_2004,
       (evapotranspiration_2004).zmax as evapotranspiration_zonalmax_2004
,(evapotranspiration_2005).zmean as evapotranspiration_zonalmean_2005,
       (evapotranspiration_2005).zmin as evapotranspiration_zonalmin_2005,
       (evapotranspiration_2005).zmax as evapotranspiration_zonalmax_2005
,(evapotranspiration_2006).zmean as evapotranspiration_zonalmean_2006,
       (evapotranspiration_2006).zmin as evapotranspiration_zonalmin_2006,
       (evapotranspiration_2006).zmax as evapotranspiration_zonalmax_2006
,(evapotranspiration_2007).zmean as evapotranspiration_zonalmean_2007,
       (evapotranspiration_2007).zmin as evapotranspiration_zonalmin_2007,
       (evapotranspiration_2007).zmax as evapotranspiration_zonalmax_2007
,(evapotranspiration_2008).zmean as evapotranspiration_zonalmean_2008,
       (evapotranspiration_2008).zmin as evapotranspiration_zonalmin_2008,
       (evapotranspiration_2008).zmax as evapotranspiration_zonalmax_2008
,(evapotranspiration_2009).zmean as evapotranspiration_zonalmean_2009,
       (evapotranspiration_2009).zmin as evapotranspiration_zonalmin_2009,
       (evapotranspiration_2009).zmax as evapotranspiration_zonalmax_2009
,(evapotranspiration_2010).zmean as evapotranspiration_zonalmean_2010,
       (evapotranspiration_2010).zmin as evapotranspiration_zonalmin_2010,
       (evapotranspiration_2010).zmax as evapotranspiration_zonalmax_2010
,(evapotranspiration_2011).zmean as evapotranspiration_zonalmean_2011,
       (evapotranspiration_2011).zmin as evapotranspiration_zonalmin_2011,
       (evapotranspiration_2011).zmax as evapotranspiration_zonalmax_2011
,(evapotranspiration_2012).zmean as evapotranspiration_zonalmean_2012,
       (evapotranspiration_2012).zmin as evapotranspiration_zonalmin_2012,
       (evapotranspiration_2012).zmax as evapotranspiration_zonalmax_2012
,(evapotranspiration_2013).zmean as evapotranspiration_zonalmean_2013,
       (evapotranspiration_2013).zmin as evapotranspiration_zonalmin_2013,
       (evapotranspiration_2013).zmax as evapotranspiration_zonalmax_2013
,(evapotranspiration_2014).zmean as evapotranspiration_zonalmean_2014,
       (evapotranspiration_2014).zmin as evapotranspiration_zonalmin_2014,
       (evapotranspiration_2014).zmax as evapotranspiration_zonalmax_2014
,(evapotranspiration_2015).zmean as evapotranspiration_zonalmean_2015,
       (evapotranspiration_2015).zmin as evapotranspiration_zonalmin_2015,
       (evapotranspiration_2015).zmax as evapotranspiration_zonalmax_2015
,(evapotranspiration_2016).zmean as evapotranspiration_zonalmean_2016,
       (evapotranspiration_2016).zmin as evapotranspiration_zonalmin_2016,
       (evapotranspiration_2016).zmax as evapotranspiration_zonalmax_2016
,(evapotranspiration_2017).zmean as evapotranspiration_zonalmean_2017,
       (evapotranspiration_2017).zmin as evapotranspiration_zonalmin_2017,
       (evapotranspiration_2017).zmax as evapotranspiration_zonalmax_2017
,(evapotranspiration_2018).zmean as evapotranspiration_zonalmean_2018,
       (evapotranspiration_2018).zmin as evapotranspiration_zonalmin_2018,
       (evapotranspiration_2018).zmax as evapotranspiration_zonalmax_2018
,(evapotranspiration_2019).zmean as evapotranspiration_zonalmean_2019,
       (evapotranspiration_2019).zmin as evapotranspiration_zonalmin_2019,
       (evapotranspiration_2019).zmax as evapotranspiration_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "evapotranspiration_subbasin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, evapotranspiration_1958 zonaloutput,
evapotranspiration_1959 zonaloutput,
evapotranspiration_1960 zonaloutput,
evapotranspiration_1961 zonaloutput,
evapotranspiration_1962 zonaloutput,
evapotranspiration_1963 zonaloutput,
evapotranspiration_1964 zonaloutput,
evapotranspiration_1965 zonaloutput,
evapotranspiration_1966 zonaloutput,
evapotranspiration_1967 zonaloutput,
evapotranspiration_1968 zonaloutput,
evapotranspiration_1969 zonaloutput,
evapotranspiration_1970 zonaloutput,
evapotranspiration_1971 zonaloutput,
evapotranspiration_1972 zonaloutput,
evapotranspiration_1973 zonaloutput,
evapotranspiration_1974 zonaloutput,
evapotranspiration_1975 zonaloutput,
evapotranspiration_1976 zonaloutput,
evapotranspiration_1977 zonaloutput,
evapotranspiration_1978 zonaloutput,
evapotranspiration_1979 zonaloutput,
evapotranspiration_1980 zonaloutput,
evapotranspiration_1981 zonaloutput,
evapotranspiration_1982 zonaloutput,
evapotranspiration_1983 zonaloutput,
evapotranspiration_1984 zonaloutput,
evapotranspiration_1985 zonaloutput,
evapotranspiration_1986 zonaloutput,
evapotranspiration_1987 zonaloutput,
evapotranspiration_1988 zonaloutput,
evapotranspiration_1989 zonaloutput,
evapotranspiration_1990 zonaloutput,
evapotranspiration_1991 zonaloutput,
evapotranspiration_1992 zonaloutput,
evapotranspiration_1993 zonaloutput,
evapotranspiration_1994 zonaloutput,
evapotranspiration_1995 zonaloutput,
evapotranspiration_1996 zonaloutput,
evapotranspiration_1997 zonaloutput,
evapotranspiration_1998 zonaloutput,
evapotranspiration_1999 zonaloutput,
evapotranspiration_2000 zonaloutput,
evapotranspiration_2001 zonaloutput,
evapotranspiration_2002 zonaloutput,
evapotranspiration_2003 zonaloutput,
evapotranspiration_2004 zonaloutput,
evapotranspiration_2005 zonaloutput,
evapotranspiration_2006 zonaloutput,
evapotranspiration_2007 zonaloutput,
evapotranspiration_2008 zonaloutput,
evapotranspiration_2009 zonaloutput,
evapotranspiration_2010 zonaloutput,
evapotranspiration_2011 zonaloutput,
evapotranspiration_2012 zonaloutput,
evapotranspiration_2013 zonaloutput,
evapotranspiration_2014 zonaloutput,
evapotranspiration_2015 zonaloutput,
evapotranspiration_2016 zonaloutput,
evapotranspiration_2017 zonaloutput,
evapotranspiration_2018 zonaloutput,
evapotranspiration_2019 zonaloutput) INNER JOIN hydrostn30_subbasin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_soilmoisture_subbasin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_soilmoisture_subbasin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (soilmoisture_1958).zmean as soilmoisture_zonalmean_1958,
       (soilmoisture_1958).zmin as soilmoisture_zonalmin_1958,
       (soilmoisture_1958).zmax as soilmoisture_zonalmax_1958
,(soilmoisture_1959).zmean as soilmoisture_zonalmean_1959,
       (soilmoisture_1959).zmin as soilmoisture_zonalmin_1959,
       (soilmoisture_1959).zmax as soilmoisture_zonalmax_1959
,(soilmoisture_1960).zmean as soilmoisture_zonalmean_1960,
       (soilmoisture_1960).zmin as soilmoisture_zonalmin_1960,
       (soilmoisture_1960).zmax as soilmoisture_zonalmax_1960
,(soilmoisture_1961).zmean as soilmoisture_zonalmean_1961,
       (soilmoisture_1961).zmin as soilmoisture_zonalmin_1961,
       (soilmoisture_1961).zmax as soilmoisture_zonalmax_1961
,(soilmoisture_1962).zmean as soilmoisture_zonalmean_1962,
       (soilmoisture_1962).zmin as soilmoisture_zonalmin_1962,
       (soilmoisture_1962).zmax as soilmoisture_zonalmax_1962
,(soilmoisture_1963).zmean as soilmoisture_zonalmean_1963,
       (soilmoisture_1963).zmin as soilmoisture_zonalmin_1963,
       (soilmoisture_1963).zmax as soilmoisture_zonalmax_1963
,(soilmoisture_1964).zmean as soilmoisture_zonalmean_1964,
       (soilmoisture_1964).zmin as soilmoisture_zonalmin_1964,
       (soilmoisture_1964).zmax as soilmoisture_zonalmax_1964
,(soilmoisture_1965).zmean as soilmoisture_zonalmean_1965,
       (soilmoisture_1965).zmin as soilmoisture_zonalmin_1965,
       (soilmoisture_1965).zmax as soilmoisture_zonalmax_1965
,(soilmoisture_1966).zmean as soilmoisture_zonalmean_1966,
       (soilmoisture_1966).zmin as soilmoisture_zonalmin_1966,
       (soilmoisture_1966).zmax as soilmoisture_zonalmax_1966
,(soilmoisture_1967).zmean as soilmoisture_zonalmean_1967,
       (soilmoisture_1967).zmin as soilmoisture_zonalmin_1967,
       (soilmoisture_1967).zmax as soilmoisture_zonalmax_1967
,(soilmoisture_1968).zmean as soilmoisture_zonalmean_1968,
       (soilmoisture_1968).zmin as soilmoisture_zonalmin_1968,
       (soilmoisture_1968).zmax as soilmoisture_zonalmax_1968
,(soilmoisture_1969).zmean as soilmoisture_zonalmean_1969,
       (soilmoisture_1969).zmin as soilmoisture_zonalmin_1969,
       (soilmoisture_1969).zmax as soilmoisture_zonalmax_1969
,(soilmoisture_1970).zmean as soilmoisture_zonalmean_1970,
       (soilmoisture_1970).zmin as soilmoisture_zonalmin_1970,
       (soilmoisture_1970).zmax as soilmoisture_zonalmax_1970
,(soilmoisture_1971).zmean as soilmoisture_zonalmean_1971,
       (soilmoisture_1971).zmin as soilmoisture_zonalmin_1971,
       (soilmoisture_1971).zmax as soilmoisture_zonalmax_1971
,(soilmoisture_1972).zmean as soilmoisture_zonalmean_1972,
       (soilmoisture_1972).zmin as soilmoisture_zonalmin_1972,
       (soilmoisture_1972).zmax as soilmoisture_zonalmax_1972
,(soilmoisture_1973).zmean as soilmoisture_zonalmean_1973,
       (soilmoisture_1973).zmin as soilmoisture_zonalmin_1973,
       (soilmoisture_1973).zmax as soilmoisture_zonalmax_1973
,(soilmoisture_1974).zmean as soilmoisture_zonalmean_1974,
       (soilmoisture_1974).zmin as soilmoisture_zonalmin_1974,
       (soilmoisture_1974).zmax as soilmoisture_zonalmax_1974
,(soilmoisture_1975).zmean as soilmoisture_zonalmean_1975,
       (soilmoisture_1975).zmin as soilmoisture_zonalmin_1975,
       (soilmoisture_1975).zmax as soilmoisture_zonalmax_1975
,(soilmoisture_1976).zmean as soilmoisture_zonalmean_1976,
       (soilmoisture_1976).zmin as soilmoisture_zonalmin_1976,
       (soilmoisture_1976).zmax as soilmoisture_zonalmax_1976
,(soilmoisture_1977).zmean as soilmoisture_zonalmean_1977,
       (soilmoisture_1977).zmin as soilmoisture_zonalmin_1977,
       (soilmoisture_1977).zmax as soilmoisture_zonalmax_1977
,(soilmoisture_1978).zmean as soilmoisture_zonalmean_1978,
       (soilmoisture_1978).zmin as soilmoisture_zonalmin_1978,
       (soilmoisture_1978).zmax as soilmoisture_zonalmax_1978
,(soilmoisture_1979).zmean as soilmoisture_zonalmean_1979,
       (soilmoisture_1979).zmin as soilmoisture_zonalmin_1979,
       (soilmoisture_1979).zmax as soilmoisture_zonalmax_1979
,(soilmoisture_1980).zmean as soilmoisture_zonalmean_1980,
       (soilmoisture_1980).zmin as soilmoisture_zonalmin_1980,
       (soilmoisture_1980).zmax as soilmoisture_zonalmax_1980
,(soilmoisture_1981).zmean as soilmoisture_zonalmean_1981,
       (soilmoisture_1981).zmin as soilmoisture_zonalmin_1981,
       (soilmoisture_1981).zmax as soilmoisture_zonalmax_1981
,(soilmoisture_1982).zmean as soilmoisture_zonalmean_1982,
       (soilmoisture_1982).zmin as soilmoisture_zonalmin_1982,
       (soilmoisture_1982).zmax as soilmoisture_zonalmax_1982
,(soilmoisture_1983).zmean as soilmoisture_zonalmean_1983,
       (soilmoisture_1983).zmin as soilmoisture_zonalmin_1983,
       (soilmoisture_1983).zmax as soilmoisture_zonalmax_1983
,(soilmoisture_1984).zmean as soilmoisture_zonalmean_1984,
       (soilmoisture_1984).zmin as soilmoisture_zonalmin_1984,
       (soilmoisture_1984).zmax as soilmoisture_zonalmax_1984
,(soilmoisture_1985).zmean as soilmoisture_zonalmean_1985,
       (soilmoisture_1985).zmin as soilmoisture_zonalmin_1985,
       (soilmoisture_1985).zmax as soilmoisture_zonalmax_1985
,(soilmoisture_1986).zmean as soilmoisture_zonalmean_1986,
       (soilmoisture_1986).zmin as soilmoisture_zonalmin_1986,
       (soilmoisture_1986).zmax as soilmoisture_zonalmax_1986
,(soilmoisture_1987).zmean as soilmoisture_zonalmean_1987,
       (soilmoisture_1987).zmin as soilmoisture_zonalmin_1987,
       (soilmoisture_1987).zmax as soilmoisture_zonalmax_1987
,(soilmoisture_1988).zmean as soilmoisture_zonalmean_1988,
       (soilmoisture_1988).zmin as soilmoisture_zonalmin_1988,
       (soilmoisture_1988).zmax as soilmoisture_zonalmax_1988
,(soilmoisture_1989).zmean as soilmoisture_zonalmean_1989,
       (soilmoisture_1989).zmin as soilmoisture_zonalmin_1989,
       (soilmoisture_1989).zmax as soilmoisture_zonalmax_1989
,(soilmoisture_1990).zmean as soilmoisture_zonalmean_1990,
       (soilmoisture_1990).zmin as soilmoisture_zonalmin_1990,
       (soilmoisture_1990).zmax as soilmoisture_zonalmax_1990
,(soilmoisture_1991).zmean as soilmoisture_zonalmean_1991,
       (soilmoisture_1991).zmin as soilmoisture_zonalmin_1991,
       (soilmoisture_1991).zmax as soilmoisture_zonalmax_1991
,(soilmoisture_1992).zmean as soilmoisture_zonalmean_1992,
       (soilmoisture_1992).zmin as soilmoisture_zonalmin_1992,
       (soilmoisture_1992).zmax as soilmoisture_zonalmax_1992
,(soilmoisture_1993).zmean as soilmoisture_zonalmean_1993,
       (soilmoisture_1993).zmin as soilmoisture_zonalmin_1993,
       (soilmoisture_1993).zmax as soilmoisture_zonalmax_1993
,(soilmoisture_1994).zmean as soilmoisture_zonalmean_1994,
       (soilmoisture_1994).zmin as soilmoisture_zonalmin_1994,
       (soilmoisture_1994).zmax as soilmoisture_zonalmax_1994
,(soilmoisture_1995).zmean as soilmoisture_zonalmean_1995,
       (soilmoisture_1995).zmin as soilmoisture_zonalmin_1995,
       (soilmoisture_1995).zmax as soilmoisture_zonalmax_1995
,(soilmoisture_1996).zmean as soilmoisture_zonalmean_1996,
       (soilmoisture_1996).zmin as soilmoisture_zonalmin_1996,
       (soilmoisture_1996).zmax as soilmoisture_zonalmax_1996
,(soilmoisture_1997).zmean as soilmoisture_zonalmean_1997,
       (soilmoisture_1997).zmin as soilmoisture_zonalmin_1997,
       (soilmoisture_1997).zmax as soilmoisture_zonalmax_1997
,(soilmoisture_1998).zmean as soilmoisture_zonalmean_1998,
       (soilmoisture_1998).zmin as soilmoisture_zonalmin_1998,
       (soilmoisture_1998).zmax as soilmoisture_zonalmax_1998
,(soilmoisture_1999).zmean as soilmoisture_zonalmean_1999,
       (soilmoisture_1999).zmin as soilmoisture_zonalmin_1999,
       (soilmoisture_1999).zmax as soilmoisture_zonalmax_1999
,(soilmoisture_2000).zmean as soilmoisture_zonalmean_2000,
       (soilmoisture_2000).zmin as soilmoisture_zonalmin_2000,
       (soilmoisture_2000).zmax as soilmoisture_zonalmax_2000
,(soilmoisture_2001).zmean as soilmoisture_zonalmean_2001,
       (soilmoisture_2001).zmin as soilmoisture_zonalmin_2001,
       (soilmoisture_2001).zmax as soilmoisture_zonalmax_2001
,(soilmoisture_2002).zmean as soilmoisture_zonalmean_2002,
       (soilmoisture_2002).zmin as soilmoisture_zonalmin_2002,
       (soilmoisture_2002).zmax as soilmoisture_zonalmax_2002
,(soilmoisture_2003).zmean as soilmoisture_zonalmean_2003,
       (soilmoisture_2003).zmin as soilmoisture_zonalmin_2003,
       (soilmoisture_2003).zmax as soilmoisture_zonalmax_2003
,(soilmoisture_2004).zmean as soilmoisture_zonalmean_2004,
       (soilmoisture_2004).zmin as soilmoisture_zonalmin_2004,
       (soilmoisture_2004).zmax as soilmoisture_zonalmax_2004
,(soilmoisture_2005).zmean as soilmoisture_zonalmean_2005,
       (soilmoisture_2005).zmin as soilmoisture_zonalmin_2005,
       (soilmoisture_2005).zmax as soilmoisture_zonalmax_2005
,(soilmoisture_2006).zmean as soilmoisture_zonalmean_2006,
       (soilmoisture_2006).zmin as soilmoisture_zonalmin_2006,
       (soilmoisture_2006).zmax as soilmoisture_zonalmax_2006
,(soilmoisture_2007).zmean as soilmoisture_zonalmean_2007,
       (soilmoisture_2007).zmin as soilmoisture_zonalmin_2007,
       (soilmoisture_2007).zmax as soilmoisture_zonalmax_2007
,(soilmoisture_2008).zmean as soilmoisture_zonalmean_2008,
       (soilmoisture_2008).zmin as soilmoisture_zonalmin_2008,
       (soilmoisture_2008).zmax as soilmoisture_zonalmax_2008
,(soilmoisture_2009).zmean as soilmoisture_zonalmean_2009,
       (soilmoisture_2009).zmin as soilmoisture_zonalmin_2009,
       (soilmoisture_2009).zmax as soilmoisture_zonalmax_2009
,(soilmoisture_2010).zmean as soilmoisture_zonalmean_2010,
       (soilmoisture_2010).zmin as soilmoisture_zonalmin_2010,
       (soilmoisture_2010).zmax as soilmoisture_zonalmax_2010
,(soilmoisture_2011).zmean as soilmoisture_zonalmean_2011,
       (soilmoisture_2011).zmin as soilmoisture_zonalmin_2011,
       (soilmoisture_2011).zmax as soilmoisture_zonalmax_2011
,(soilmoisture_2012).zmean as soilmoisture_zonalmean_2012,
       (soilmoisture_2012).zmin as soilmoisture_zonalmin_2012,
       (soilmoisture_2012).zmax as soilmoisture_zonalmax_2012
,(soilmoisture_2013).zmean as soilmoisture_zonalmean_2013,
       (soilmoisture_2013).zmin as soilmoisture_zonalmin_2013,
       (soilmoisture_2013).zmax as soilmoisture_zonalmax_2013
,(soilmoisture_2014).zmean as soilmoisture_zonalmean_2014,
       (soilmoisture_2014).zmin as soilmoisture_zonalmin_2014,
       (soilmoisture_2014).zmax as soilmoisture_zonalmax_2014
,(soilmoisture_2015).zmean as soilmoisture_zonalmean_2015,
       (soilmoisture_2015).zmin as soilmoisture_zonalmin_2015,
       (soilmoisture_2015).zmax as soilmoisture_zonalmax_2015
,(soilmoisture_2016).zmean as soilmoisture_zonalmean_2016,
       (soilmoisture_2016).zmin as soilmoisture_zonalmin_2016,
       (soilmoisture_2016).zmax as soilmoisture_zonalmax_2016
,(soilmoisture_2017).zmean as soilmoisture_zonalmean_2017,
       (soilmoisture_2017).zmin as soilmoisture_zonalmin_2017,
       (soilmoisture_2017).zmax as soilmoisture_zonalmax_2017
,(soilmoisture_2018).zmean as soilmoisture_zonalmean_2018,
       (soilmoisture_2018).zmin as soilmoisture_zonalmin_2018,
       (soilmoisture_2018).zmax as soilmoisture_zonalmax_2018
,(soilmoisture_2019).zmean as soilmoisture_zonalmean_2019,
       (soilmoisture_2019).zmin as soilmoisture_zonalmin_2019,
       (soilmoisture_2019).zmax as soilmoisture_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "soilmoisture_subbasin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, soilmoisture_1958 zonaloutput,
soilmoisture_1959 zonaloutput,
soilmoisture_1960 zonaloutput,
soilmoisture_1961 zonaloutput,
soilmoisture_1962 zonaloutput,
soilmoisture_1963 zonaloutput,
soilmoisture_1964 zonaloutput,
soilmoisture_1965 zonaloutput,
soilmoisture_1966 zonaloutput,
soilmoisture_1967 zonaloutput,
soilmoisture_1968 zonaloutput,
soilmoisture_1969 zonaloutput,
soilmoisture_1970 zonaloutput,
soilmoisture_1971 zonaloutput,
soilmoisture_1972 zonaloutput,
soilmoisture_1973 zonaloutput,
soilmoisture_1974 zonaloutput,
soilmoisture_1975 zonaloutput,
soilmoisture_1976 zonaloutput,
soilmoisture_1977 zonaloutput,
soilmoisture_1978 zonaloutput,
soilmoisture_1979 zonaloutput,
soilmoisture_1980 zonaloutput,
soilmoisture_1981 zonaloutput,
soilmoisture_1982 zonaloutput,
soilmoisture_1983 zonaloutput,
soilmoisture_1984 zonaloutput,
soilmoisture_1985 zonaloutput,
soilmoisture_1986 zonaloutput,
soilmoisture_1987 zonaloutput,
soilmoisture_1988 zonaloutput,
soilmoisture_1989 zonaloutput,
soilmoisture_1990 zonaloutput,
soilmoisture_1991 zonaloutput,
soilmoisture_1992 zonaloutput,
soilmoisture_1993 zonaloutput,
soilmoisture_1994 zonaloutput,
soilmoisture_1995 zonaloutput,
soilmoisture_1996 zonaloutput,
soilmoisture_1997 zonaloutput,
soilmoisture_1998 zonaloutput,
soilmoisture_1999 zonaloutput,
soilmoisture_2000 zonaloutput,
soilmoisture_2001 zonaloutput,
soilmoisture_2002 zonaloutput,
soilmoisture_2003 zonaloutput,
soilmoisture_2004 zonaloutput,
soilmoisture_2005 zonaloutput,
soilmoisture_2006 zonaloutput,
soilmoisture_2007 zonaloutput,
soilmoisture_2008 zonaloutput,
soilmoisture_2009 zonaloutput,
soilmoisture_2010 zonaloutput,
soilmoisture_2011 zonaloutput,
soilmoisture_2012 zonaloutput,
soilmoisture_2013 zonaloutput,
soilmoisture_2014 zonaloutput,
soilmoisture_2015 zonaloutput,
soilmoisture_2016 zonaloutput,
soilmoisture_2017 zonaloutput,
soilmoisture_2018 zonaloutput,
soilmoisture_2019 zonaloutput) INNER JOIN hydrostn30_subbasin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_relativesoilmoisture_subbasin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_relativesoilmoisture_subbasin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (relativesoilmoisture_1958).zmean as relativesoilmoisture_zonalmean_1958,
       (relativesoilmoisture_1958).zmin as relativesoilmoisture_zonalmin_1958,
       (relativesoilmoisture_1958).zmax as relativesoilmoisture_zonalmax_1958
,(relativesoilmoisture_1959).zmean as relativesoilmoisture_zonalmean_1959,
       (relativesoilmoisture_1959).zmin as relativesoilmoisture_zonalmin_1959,
       (relativesoilmoisture_1959).zmax as relativesoilmoisture_zonalmax_1959
,(relativesoilmoisture_1960).zmean as relativesoilmoisture_zonalmean_1960,
       (relativesoilmoisture_1960).zmin as relativesoilmoisture_zonalmin_1960,
       (relativesoilmoisture_1960).zmax as relativesoilmoisture_zonalmax_1960
,(relativesoilmoisture_1961).zmean as relativesoilmoisture_zonalmean_1961,
       (relativesoilmoisture_1961).zmin as relativesoilmoisture_zonalmin_1961,
       (relativesoilmoisture_1961).zmax as relativesoilmoisture_zonalmax_1961
,(relativesoilmoisture_1962).zmean as relativesoilmoisture_zonalmean_1962,
       (relativesoilmoisture_1962).zmin as relativesoilmoisture_zonalmin_1962,
       (relativesoilmoisture_1962).zmax as relativesoilmoisture_zonalmax_1962
,(relativesoilmoisture_1963).zmean as relativesoilmoisture_zonalmean_1963,
       (relativesoilmoisture_1963).zmin as relativesoilmoisture_zonalmin_1963,
       (relativesoilmoisture_1963).zmax as relativesoilmoisture_zonalmax_1963
,(relativesoilmoisture_1964).zmean as relativesoilmoisture_zonalmean_1964,
       (relativesoilmoisture_1964).zmin as relativesoilmoisture_zonalmin_1964,
       (relativesoilmoisture_1964).zmax as relativesoilmoisture_zonalmax_1964
,(relativesoilmoisture_1965).zmean as relativesoilmoisture_zonalmean_1965,
       (relativesoilmoisture_1965).zmin as relativesoilmoisture_zonalmin_1965,
       (relativesoilmoisture_1965).zmax as relativesoilmoisture_zonalmax_1965
,(relativesoilmoisture_1966).zmean as relativesoilmoisture_zonalmean_1966,
       (relativesoilmoisture_1966).zmin as relativesoilmoisture_zonalmin_1966,
       (relativesoilmoisture_1966).zmax as relativesoilmoisture_zonalmax_1966
,(relativesoilmoisture_1967).zmean as relativesoilmoisture_zonalmean_1967,
       (relativesoilmoisture_1967).zmin as relativesoilmoisture_zonalmin_1967,
       (relativesoilmoisture_1967).zmax as relativesoilmoisture_zonalmax_1967
,(relativesoilmoisture_1968).zmean as relativesoilmoisture_zonalmean_1968,
       (relativesoilmoisture_1968).zmin as relativesoilmoisture_zonalmin_1968,
       (relativesoilmoisture_1968).zmax as relativesoilmoisture_zonalmax_1968
,(relativesoilmoisture_1969).zmean as relativesoilmoisture_zonalmean_1969,
       (relativesoilmoisture_1969).zmin as relativesoilmoisture_zonalmin_1969,
       (relativesoilmoisture_1969).zmax as relativesoilmoisture_zonalmax_1969
,(relativesoilmoisture_1970).zmean as relativesoilmoisture_zonalmean_1970,
       (relativesoilmoisture_1970).zmin as relativesoilmoisture_zonalmin_1970,
       (relativesoilmoisture_1970).zmax as relativesoilmoisture_zonalmax_1970
,(relativesoilmoisture_1971).zmean as relativesoilmoisture_zonalmean_1971,
       (relativesoilmoisture_1971).zmin as relativesoilmoisture_zonalmin_1971,
       (relativesoilmoisture_1971).zmax as relativesoilmoisture_zonalmax_1971
,(relativesoilmoisture_1972).zmean as relativesoilmoisture_zonalmean_1972,
       (relativesoilmoisture_1972).zmin as relativesoilmoisture_zonalmin_1972,
       (relativesoilmoisture_1972).zmax as relativesoilmoisture_zonalmax_1972
,(relativesoilmoisture_1973).zmean as relativesoilmoisture_zonalmean_1973,
       (relativesoilmoisture_1973).zmin as relativesoilmoisture_zonalmin_1973,
       (relativesoilmoisture_1973).zmax as relativesoilmoisture_zonalmax_1973
,(relativesoilmoisture_1974).zmean as relativesoilmoisture_zonalmean_1974,
       (relativesoilmoisture_1974).zmin as relativesoilmoisture_zonalmin_1974,
       (relativesoilmoisture_1974).zmax as relativesoilmoisture_zonalmax_1974
,(relativesoilmoisture_1975).zmean as relativesoilmoisture_zonalmean_1975,
       (relativesoilmoisture_1975).zmin as relativesoilmoisture_zonalmin_1975,
       (relativesoilmoisture_1975).zmax as relativesoilmoisture_zonalmax_1975
,(relativesoilmoisture_1976).zmean as relativesoilmoisture_zonalmean_1976,
       (relativesoilmoisture_1976).zmin as relativesoilmoisture_zonalmin_1976,
       (relativesoilmoisture_1976).zmax as relativesoilmoisture_zonalmax_1976
,(relativesoilmoisture_1977).zmean as relativesoilmoisture_zonalmean_1977,
       (relativesoilmoisture_1977).zmin as relativesoilmoisture_zonalmin_1977,
       (relativesoilmoisture_1977).zmax as relativesoilmoisture_zonalmax_1977
,(relativesoilmoisture_1978).zmean as relativesoilmoisture_zonalmean_1978,
       (relativesoilmoisture_1978).zmin as relativesoilmoisture_zonalmin_1978,
       (relativesoilmoisture_1978).zmax as relativesoilmoisture_zonalmax_1978
,(relativesoilmoisture_1979).zmean as relativesoilmoisture_zonalmean_1979,
       (relativesoilmoisture_1979).zmin as relativesoilmoisture_zonalmin_1979,
       (relativesoilmoisture_1979).zmax as relativesoilmoisture_zonalmax_1979
,(relativesoilmoisture_1980).zmean as relativesoilmoisture_zonalmean_1980,
       (relativesoilmoisture_1980).zmin as relativesoilmoisture_zonalmin_1980,
       (relativesoilmoisture_1980).zmax as relativesoilmoisture_zonalmax_1980
,(relativesoilmoisture_1981).zmean as relativesoilmoisture_zonalmean_1981,
       (relativesoilmoisture_1981).zmin as relativesoilmoisture_zonalmin_1981,
       (relativesoilmoisture_1981).zmax as relativesoilmoisture_zonalmax_1981
,(relativesoilmoisture_1982).zmean as relativesoilmoisture_zonalmean_1982,
       (relativesoilmoisture_1982).zmin as relativesoilmoisture_zonalmin_1982,
       (relativesoilmoisture_1982).zmax as relativesoilmoisture_zonalmax_1982
,(relativesoilmoisture_1983).zmean as relativesoilmoisture_zonalmean_1983,
       (relativesoilmoisture_1983).zmin as relativesoilmoisture_zonalmin_1983,
       (relativesoilmoisture_1983).zmax as relativesoilmoisture_zonalmax_1983
,(relativesoilmoisture_1984).zmean as relativesoilmoisture_zonalmean_1984,
       (relativesoilmoisture_1984).zmin as relativesoilmoisture_zonalmin_1984,
       (relativesoilmoisture_1984).zmax as relativesoilmoisture_zonalmax_1984
,(relativesoilmoisture_1985).zmean as relativesoilmoisture_zonalmean_1985,
       (relativesoilmoisture_1985).zmin as relativesoilmoisture_zonalmin_1985,
       (relativesoilmoisture_1985).zmax as relativesoilmoisture_zonalmax_1985
,(relativesoilmoisture_1986).zmean as relativesoilmoisture_zonalmean_1986,
       (relativesoilmoisture_1986).zmin as relativesoilmoisture_zonalmin_1986,
       (relativesoilmoisture_1986).zmax as relativesoilmoisture_zonalmax_1986
,(relativesoilmoisture_1987).zmean as relativesoilmoisture_zonalmean_1987,
       (relativesoilmoisture_1987).zmin as relativesoilmoisture_zonalmin_1987,
       (relativesoilmoisture_1987).zmax as relativesoilmoisture_zonalmax_1987
,(relativesoilmoisture_1988).zmean as relativesoilmoisture_zonalmean_1988,
       (relativesoilmoisture_1988).zmin as relativesoilmoisture_zonalmin_1988,
       (relativesoilmoisture_1988).zmax as relativesoilmoisture_zonalmax_1988
,(relativesoilmoisture_1989).zmean as relativesoilmoisture_zonalmean_1989,
       (relativesoilmoisture_1989).zmin as relativesoilmoisture_zonalmin_1989,
       (relativesoilmoisture_1989).zmax as relativesoilmoisture_zonalmax_1989
,(relativesoilmoisture_1990).zmean as relativesoilmoisture_zonalmean_1990,
       (relativesoilmoisture_1990).zmin as relativesoilmoisture_zonalmin_1990,
       (relativesoilmoisture_1990).zmax as relativesoilmoisture_zonalmax_1990
,(relativesoilmoisture_1991).zmean as relativesoilmoisture_zonalmean_1991,
       (relativesoilmoisture_1991).zmin as relativesoilmoisture_zonalmin_1991,
       (relativesoilmoisture_1991).zmax as relativesoilmoisture_zonalmax_1991
,(relativesoilmoisture_1992).zmean as relativesoilmoisture_zonalmean_1992,
       (relativesoilmoisture_1992).zmin as relativesoilmoisture_zonalmin_1992,
       (relativesoilmoisture_1992).zmax as relativesoilmoisture_zonalmax_1992
,(relativesoilmoisture_1993).zmean as relativesoilmoisture_zonalmean_1993,
       (relativesoilmoisture_1993).zmin as relativesoilmoisture_zonalmin_1993,
       (relativesoilmoisture_1993).zmax as relativesoilmoisture_zonalmax_1993
,(relativesoilmoisture_1994).zmean as relativesoilmoisture_zonalmean_1994,
       (relativesoilmoisture_1994).zmin as relativesoilmoisture_zonalmin_1994,
       (relativesoilmoisture_1994).zmax as relativesoilmoisture_zonalmax_1994
,(relativesoilmoisture_1995).zmean as relativesoilmoisture_zonalmean_1995,
       (relativesoilmoisture_1995).zmin as relativesoilmoisture_zonalmin_1995,
       (relativesoilmoisture_1995).zmax as relativesoilmoisture_zonalmax_1995
,(relativesoilmoisture_1996).zmean as relativesoilmoisture_zonalmean_1996,
       (relativesoilmoisture_1996).zmin as relativesoilmoisture_zonalmin_1996,
       (relativesoilmoisture_1996).zmax as relativesoilmoisture_zonalmax_1996
,(relativesoilmoisture_1997).zmean as relativesoilmoisture_zonalmean_1997,
       (relativesoilmoisture_1997).zmin as relativesoilmoisture_zonalmin_1997,
       (relativesoilmoisture_1997).zmax as relativesoilmoisture_zonalmax_1997
,(relativesoilmoisture_1998).zmean as relativesoilmoisture_zonalmean_1998,
       (relativesoilmoisture_1998).zmin as relativesoilmoisture_zonalmin_1998,
       (relativesoilmoisture_1998).zmax as relativesoilmoisture_zonalmax_1998
,(relativesoilmoisture_1999).zmean as relativesoilmoisture_zonalmean_1999,
       (relativesoilmoisture_1999).zmin as relativesoilmoisture_zonalmin_1999,
       (relativesoilmoisture_1999).zmax as relativesoilmoisture_zonalmax_1999
,(relativesoilmoisture_2000).zmean as relativesoilmoisture_zonalmean_2000,
       (relativesoilmoisture_2000).zmin as relativesoilmoisture_zonalmin_2000,
       (relativesoilmoisture_2000).zmax as relativesoilmoisture_zonalmax_2000
,(relativesoilmoisture_2001).zmean as relativesoilmoisture_zonalmean_2001,
       (relativesoilmoisture_2001).zmin as relativesoilmoisture_zonalmin_2001,
       (relativesoilmoisture_2001).zmax as relativesoilmoisture_zonalmax_2001
,(relativesoilmoisture_2002).zmean as relativesoilmoisture_zonalmean_2002,
       (relativesoilmoisture_2002).zmin as relativesoilmoisture_zonalmin_2002,
       (relativesoilmoisture_2002).zmax as relativesoilmoisture_zonalmax_2002
,(relativesoilmoisture_2003).zmean as relativesoilmoisture_zonalmean_2003,
       (relativesoilmoisture_2003).zmin as relativesoilmoisture_zonalmin_2003,
       (relativesoilmoisture_2003).zmax as relativesoilmoisture_zonalmax_2003
,(relativesoilmoisture_2004).zmean as relativesoilmoisture_zonalmean_2004,
       (relativesoilmoisture_2004).zmin as relativesoilmoisture_zonalmin_2004,
       (relativesoilmoisture_2004).zmax as relativesoilmoisture_zonalmax_2004
,(relativesoilmoisture_2005).zmean as relativesoilmoisture_zonalmean_2005,
       (relativesoilmoisture_2005).zmin as relativesoilmoisture_zonalmin_2005,
       (relativesoilmoisture_2005).zmax as relativesoilmoisture_zonalmax_2005
,(relativesoilmoisture_2006).zmean as relativesoilmoisture_zonalmean_2006,
       (relativesoilmoisture_2006).zmin as relativesoilmoisture_zonalmin_2006,
       (relativesoilmoisture_2006).zmax as relativesoilmoisture_zonalmax_2006
,(relativesoilmoisture_2007).zmean as relativesoilmoisture_zonalmean_2007,
       (relativesoilmoisture_2007).zmin as relativesoilmoisture_zonalmin_2007,
       (relativesoilmoisture_2007).zmax as relativesoilmoisture_zonalmax_2007
,(relativesoilmoisture_2008).zmean as relativesoilmoisture_zonalmean_2008,
       (relativesoilmoisture_2008).zmin as relativesoilmoisture_zonalmin_2008,
       (relativesoilmoisture_2008).zmax as relativesoilmoisture_zonalmax_2008
,(relativesoilmoisture_2009).zmean as relativesoilmoisture_zonalmean_2009,
       (relativesoilmoisture_2009).zmin as relativesoilmoisture_zonalmin_2009,
       (relativesoilmoisture_2009).zmax as relativesoilmoisture_zonalmax_2009
,(relativesoilmoisture_2010).zmean as relativesoilmoisture_zonalmean_2010,
       (relativesoilmoisture_2010).zmin as relativesoilmoisture_zonalmin_2010,
       (relativesoilmoisture_2010).zmax as relativesoilmoisture_zonalmax_2010
,(relativesoilmoisture_2011).zmean as relativesoilmoisture_zonalmean_2011,
       (relativesoilmoisture_2011).zmin as relativesoilmoisture_zonalmin_2011,
       (relativesoilmoisture_2011).zmax as relativesoilmoisture_zonalmax_2011
,(relativesoilmoisture_2012).zmean as relativesoilmoisture_zonalmean_2012,
       (relativesoilmoisture_2012).zmin as relativesoilmoisture_zonalmin_2012,
       (relativesoilmoisture_2012).zmax as relativesoilmoisture_zonalmax_2012
,(relativesoilmoisture_2013).zmean as relativesoilmoisture_zonalmean_2013,
       (relativesoilmoisture_2013).zmin as relativesoilmoisture_zonalmin_2013,
       (relativesoilmoisture_2013).zmax as relativesoilmoisture_zonalmax_2013
,(relativesoilmoisture_2014).zmean as relativesoilmoisture_zonalmean_2014,
       (relativesoilmoisture_2014).zmin as relativesoilmoisture_zonalmin_2014,
       (relativesoilmoisture_2014).zmax as relativesoilmoisture_zonalmax_2014
,(relativesoilmoisture_2015).zmean as relativesoilmoisture_zonalmean_2015,
       (relativesoilmoisture_2015).zmin as relativesoilmoisture_zonalmin_2015,
       (relativesoilmoisture_2015).zmax as relativesoilmoisture_zonalmax_2015
,(relativesoilmoisture_2016).zmean as relativesoilmoisture_zonalmean_2016,
       (relativesoilmoisture_2016).zmin as relativesoilmoisture_zonalmin_2016,
       (relativesoilmoisture_2016).zmax as relativesoilmoisture_zonalmax_2016
,(relativesoilmoisture_2017).zmean as relativesoilmoisture_zonalmean_2017,
       (relativesoilmoisture_2017).zmin as relativesoilmoisture_zonalmin_2017,
       (relativesoilmoisture_2017).zmax as relativesoilmoisture_zonalmax_2017
,(relativesoilmoisture_2018).zmean as relativesoilmoisture_zonalmean_2018,
       (relativesoilmoisture_2018).zmin as relativesoilmoisture_zonalmin_2018,
       (relativesoilmoisture_2018).zmax as relativesoilmoisture_zonalmax_2018
,(relativesoilmoisture_2019).zmean as relativesoilmoisture_zonalmean_2019,
       (relativesoilmoisture_2019).zmin as relativesoilmoisture_zonalmin_2019,
       (relativesoilmoisture_2019).zmax as relativesoilmoisture_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "relativesoilmoisture_subbasin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, relativesoilmoisture_1958 zonaloutput,
relativesoilmoisture_1959 zonaloutput,
relativesoilmoisture_1960 zonaloutput,
relativesoilmoisture_1961 zonaloutput,
relativesoilmoisture_1962 zonaloutput,
relativesoilmoisture_1963 zonaloutput,
relativesoilmoisture_1964 zonaloutput,
relativesoilmoisture_1965 zonaloutput,
relativesoilmoisture_1966 zonaloutput,
relativesoilmoisture_1967 zonaloutput,
relativesoilmoisture_1968 zonaloutput,
relativesoilmoisture_1969 zonaloutput,
relativesoilmoisture_1970 zonaloutput,
relativesoilmoisture_1971 zonaloutput,
relativesoilmoisture_1972 zonaloutput,
relativesoilmoisture_1973 zonaloutput,
relativesoilmoisture_1974 zonaloutput,
relativesoilmoisture_1975 zonaloutput,
relativesoilmoisture_1976 zonaloutput,
relativesoilmoisture_1977 zonaloutput,
relativesoilmoisture_1978 zonaloutput,
relativesoilmoisture_1979 zonaloutput,
relativesoilmoisture_1980 zonaloutput,
relativesoilmoisture_1981 zonaloutput,
relativesoilmoisture_1982 zonaloutput,
relativesoilmoisture_1983 zonaloutput,
relativesoilmoisture_1984 zonaloutput,
relativesoilmoisture_1985 zonaloutput,
relativesoilmoisture_1986 zonaloutput,
relativesoilmoisture_1987 zonaloutput,
relativesoilmoisture_1988 zonaloutput,
relativesoilmoisture_1989 zonaloutput,
relativesoilmoisture_1990 zonaloutput,
relativesoilmoisture_1991 zonaloutput,
relativesoilmoisture_1992 zonaloutput,
relativesoilmoisture_1993 zonaloutput,
relativesoilmoisture_1994 zonaloutput,
relativesoilmoisture_1995 zonaloutput,
relativesoilmoisture_1996 zonaloutput,
relativesoilmoisture_1997 zonaloutput,
relativesoilmoisture_1998 zonaloutput,
relativesoilmoisture_1999 zonaloutput,
relativesoilmoisture_2000 zonaloutput,
relativesoilmoisture_2001 zonaloutput,
relativesoilmoisture_2002 zonaloutput,
relativesoilmoisture_2003 zonaloutput,
relativesoilmoisture_2004 zonaloutput,
relativesoilmoisture_2005 zonaloutput,
relativesoilmoisture_2006 zonaloutput,
relativesoilmoisture_2007 zonaloutput,
relativesoilmoisture_2008 zonaloutput,
relativesoilmoisture_2009 zonaloutput,
relativesoilmoisture_2010 zonaloutput,
relativesoilmoisture_2011 zonaloutput,
relativesoilmoisture_2012 zonaloutput,
relativesoilmoisture_2013 zonaloutput,
relativesoilmoisture_2014 zonaloutput,
relativesoilmoisture_2015 zonaloutput,
relativesoilmoisture_2016 zonaloutput,
relativesoilmoisture_2017 zonaloutput,
relativesoilmoisture_2018 zonaloutput,
relativesoilmoisture_2019 zonaloutput) INNER JOIN hydrostn30_subbasin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_rainpet_subbasin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_rainpet_subbasin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (rainpet_1958).zmean as rainpet_zonalmean_1958,
       (rainpet_1958).zmin as rainpet_zonalmin_1958,
       (rainpet_1958).zmax as rainpet_zonalmax_1958
,(rainpet_1959).zmean as rainpet_zonalmean_1959,
       (rainpet_1959).zmin as rainpet_zonalmin_1959,
       (rainpet_1959).zmax as rainpet_zonalmax_1959
,(rainpet_1960).zmean as rainpet_zonalmean_1960,
       (rainpet_1960).zmin as rainpet_zonalmin_1960,
       (rainpet_1960).zmax as rainpet_zonalmax_1960
,(rainpet_1961).zmean as rainpet_zonalmean_1961,
       (rainpet_1961).zmin as rainpet_zonalmin_1961,
       (rainpet_1961).zmax as rainpet_zonalmax_1961
,(rainpet_1962).zmean as rainpet_zonalmean_1962,
       (rainpet_1962).zmin as rainpet_zonalmin_1962,
       (rainpet_1962).zmax as rainpet_zonalmax_1962
,(rainpet_1963).zmean as rainpet_zonalmean_1963,
       (rainpet_1963).zmin as rainpet_zonalmin_1963,
       (rainpet_1963).zmax as rainpet_zonalmax_1963
,(rainpet_1964).zmean as rainpet_zonalmean_1964,
       (rainpet_1964).zmin as rainpet_zonalmin_1964,
       (rainpet_1964).zmax as rainpet_zonalmax_1964
,(rainpet_1965).zmean as rainpet_zonalmean_1965,
       (rainpet_1965).zmin as rainpet_zonalmin_1965,
       (rainpet_1965).zmax as rainpet_zonalmax_1965
,(rainpet_1966).zmean as rainpet_zonalmean_1966,
       (rainpet_1966).zmin as rainpet_zonalmin_1966,
       (rainpet_1966).zmax as rainpet_zonalmax_1966
,(rainpet_1967).zmean as rainpet_zonalmean_1967,
       (rainpet_1967).zmin as rainpet_zonalmin_1967,
       (rainpet_1967).zmax as rainpet_zonalmax_1967
,(rainpet_1968).zmean as rainpet_zonalmean_1968,
       (rainpet_1968).zmin as rainpet_zonalmin_1968,
       (rainpet_1968).zmax as rainpet_zonalmax_1968
,(rainpet_1969).zmean as rainpet_zonalmean_1969,
       (rainpet_1969).zmin as rainpet_zonalmin_1969,
       (rainpet_1969).zmax as rainpet_zonalmax_1969
,(rainpet_1970).zmean as rainpet_zonalmean_1970,
       (rainpet_1970).zmin as rainpet_zonalmin_1970,
       (rainpet_1970).zmax as rainpet_zonalmax_1970
,(rainpet_1971).zmean as rainpet_zonalmean_1971,
       (rainpet_1971).zmin as rainpet_zonalmin_1971,
       (rainpet_1971).zmax as rainpet_zonalmax_1971
,(rainpet_1972).zmean as rainpet_zonalmean_1972,
       (rainpet_1972).zmin as rainpet_zonalmin_1972,
       (rainpet_1972).zmax as rainpet_zonalmax_1972
,(rainpet_1973).zmean as rainpet_zonalmean_1973,
       (rainpet_1973).zmin as rainpet_zonalmin_1973,
       (rainpet_1973).zmax as rainpet_zonalmax_1973
,(rainpet_1974).zmean as rainpet_zonalmean_1974,
       (rainpet_1974).zmin as rainpet_zonalmin_1974,
       (rainpet_1974).zmax as rainpet_zonalmax_1974
,(rainpet_1975).zmean as rainpet_zonalmean_1975,
       (rainpet_1975).zmin as rainpet_zonalmin_1975,
       (rainpet_1975).zmax as rainpet_zonalmax_1975
,(rainpet_1976).zmean as rainpet_zonalmean_1976,
       (rainpet_1976).zmin as rainpet_zonalmin_1976,
       (rainpet_1976).zmax as rainpet_zonalmax_1976
,(rainpet_1977).zmean as rainpet_zonalmean_1977,
       (rainpet_1977).zmin as rainpet_zonalmin_1977,
       (rainpet_1977).zmax as rainpet_zonalmax_1977
,(rainpet_1978).zmean as rainpet_zonalmean_1978,
       (rainpet_1978).zmin as rainpet_zonalmin_1978,
       (rainpet_1978).zmax as rainpet_zonalmax_1978
,(rainpet_1979).zmean as rainpet_zonalmean_1979,
       (rainpet_1979).zmin as rainpet_zonalmin_1979,
       (rainpet_1979).zmax as rainpet_zonalmax_1979
,(rainpet_1980).zmean as rainpet_zonalmean_1980,
       (rainpet_1980).zmin as rainpet_zonalmin_1980,
       (rainpet_1980).zmax as rainpet_zonalmax_1980
,(rainpet_1981).zmean as rainpet_zonalmean_1981,
       (rainpet_1981).zmin as rainpet_zonalmin_1981,
       (rainpet_1981).zmax as rainpet_zonalmax_1981
,(rainpet_1982).zmean as rainpet_zonalmean_1982,
       (rainpet_1982).zmin as rainpet_zonalmin_1982,
       (rainpet_1982).zmax as rainpet_zonalmax_1982
,(rainpet_1983).zmean as rainpet_zonalmean_1983,
       (rainpet_1983).zmin as rainpet_zonalmin_1983,
       (rainpet_1983).zmax as rainpet_zonalmax_1983
,(rainpet_1984).zmean as rainpet_zonalmean_1984,
       (rainpet_1984).zmin as rainpet_zonalmin_1984,
       (rainpet_1984).zmax as rainpet_zonalmax_1984
,(rainpet_1985).zmean as rainpet_zonalmean_1985,
       (rainpet_1985).zmin as rainpet_zonalmin_1985,
       (rainpet_1985).zmax as rainpet_zonalmax_1985
,(rainpet_1986).zmean as rainpet_zonalmean_1986,
       (rainpet_1986).zmin as rainpet_zonalmin_1986,
       (rainpet_1986).zmax as rainpet_zonalmax_1986
,(rainpet_1987).zmean as rainpet_zonalmean_1987,
       (rainpet_1987).zmin as rainpet_zonalmin_1987,
       (rainpet_1987).zmax as rainpet_zonalmax_1987
,(rainpet_1988).zmean as rainpet_zonalmean_1988,
       (rainpet_1988).zmin as rainpet_zonalmin_1988,
       (rainpet_1988).zmax as rainpet_zonalmax_1988
,(rainpet_1989).zmean as rainpet_zonalmean_1989,
       (rainpet_1989).zmin as rainpet_zonalmin_1989,
       (rainpet_1989).zmax as rainpet_zonalmax_1989
,(rainpet_1990).zmean as rainpet_zonalmean_1990,
       (rainpet_1990).zmin as rainpet_zonalmin_1990,
       (rainpet_1990).zmax as rainpet_zonalmax_1990
,(rainpet_1991).zmean as rainpet_zonalmean_1991,
       (rainpet_1991).zmin as rainpet_zonalmin_1991,
       (rainpet_1991).zmax as rainpet_zonalmax_1991
,(rainpet_1992).zmean as rainpet_zonalmean_1992,
       (rainpet_1992).zmin as rainpet_zonalmin_1992,
       (rainpet_1992).zmax as rainpet_zonalmax_1992
,(rainpet_1993).zmean as rainpet_zonalmean_1993,
       (rainpet_1993).zmin as rainpet_zonalmin_1993,
       (rainpet_1993).zmax as rainpet_zonalmax_1993
,(rainpet_1994).zmean as rainpet_zonalmean_1994,
       (rainpet_1994).zmin as rainpet_zonalmin_1994,
       (rainpet_1994).zmax as rainpet_zonalmax_1994
,(rainpet_1995).zmean as rainpet_zonalmean_1995,
       (rainpet_1995).zmin as rainpet_zonalmin_1995,
       (rainpet_1995).zmax as rainpet_zonalmax_1995
,(rainpet_1996).zmean as rainpet_zonalmean_1996,
       (rainpet_1996).zmin as rainpet_zonalmin_1996,
       (rainpet_1996).zmax as rainpet_zonalmax_1996
,(rainpet_1997).zmean as rainpet_zonalmean_1997,
       (rainpet_1997).zmin as rainpet_zonalmin_1997,
       (rainpet_1997).zmax as rainpet_zonalmax_1997
,(rainpet_1998).zmean as rainpet_zonalmean_1998,
       (rainpet_1998).zmin as rainpet_zonalmin_1998,
       (rainpet_1998).zmax as rainpet_zonalmax_1998
,(rainpet_1999).zmean as rainpet_zonalmean_1999,
       (rainpet_1999).zmin as rainpet_zonalmin_1999,
       (rainpet_1999).zmax as rainpet_zonalmax_1999
,(rainpet_2000).zmean as rainpet_zonalmean_2000,
       (rainpet_2000).zmin as rainpet_zonalmin_2000,
       (rainpet_2000).zmax as rainpet_zonalmax_2000
,(rainpet_2001).zmean as rainpet_zonalmean_2001,
       (rainpet_2001).zmin as rainpet_zonalmin_2001,
       (rainpet_2001).zmax as rainpet_zonalmax_2001
,(rainpet_2002).zmean as rainpet_zonalmean_2002,
       (rainpet_2002).zmin as rainpet_zonalmin_2002,
       (rainpet_2002).zmax as rainpet_zonalmax_2002
,(rainpet_2003).zmean as rainpet_zonalmean_2003,
       (rainpet_2003).zmin as rainpet_zonalmin_2003,
       (rainpet_2003).zmax as rainpet_zonalmax_2003
,(rainpet_2004).zmean as rainpet_zonalmean_2004,
       (rainpet_2004).zmin as rainpet_zonalmin_2004,
       (rainpet_2004).zmax as rainpet_zonalmax_2004
,(rainpet_2005).zmean as rainpet_zonalmean_2005,
       (rainpet_2005).zmin as rainpet_zonalmin_2005,
       (rainpet_2005).zmax as rainpet_zonalmax_2005
,(rainpet_2006).zmean as rainpet_zonalmean_2006,
       (rainpet_2006).zmin as rainpet_zonalmin_2006,
       (rainpet_2006).zmax as rainpet_zonalmax_2006
,(rainpet_2007).zmean as rainpet_zonalmean_2007,
       (rainpet_2007).zmin as rainpet_zonalmin_2007,
       (rainpet_2007).zmax as rainpet_zonalmax_2007
,(rainpet_2008).zmean as rainpet_zonalmean_2008,
       (rainpet_2008).zmin as rainpet_zonalmin_2008,
       (rainpet_2008).zmax as rainpet_zonalmax_2008
,(rainpet_2009).zmean as rainpet_zonalmean_2009,
       (rainpet_2009).zmin as rainpet_zonalmin_2009,
       (rainpet_2009).zmax as rainpet_zonalmax_2009
,(rainpet_2010).zmean as rainpet_zonalmean_2010,
       (rainpet_2010).zmin as rainpet_zonalmin_2010,
       (rainpet_2010).zmax as rainpet_zonalmax_2010
,(rainpet_2011).zmean as rainpet_zonalmean_2011,
       (rainpet_2011).zmin as rainpet_zonalmin_2011,
       (rainpet_2011).zmax as rainpet_zonalmax_2011
,(rainpet_2012).zmean as rainpet_zonalmean_2012,
       (rainpet_2012).zmin as rainpet_zonalmin_2012,
       (rainpet_2012).zmax as rainpet_zonalmax_2012
,(rainpet_2013).zmean as rainpet_zonalmean_2013,
       (rainpet_2013).zmin as rainpet_zonalmin_2013,
       (rainpet_2013).zmax as rainpet_zonalmax_2013
,(rainpet_2014).zmean as rainpet_zonalmean_2014,
       (rainpet_2014).zmin as rainpet_zonalmin_2014,
       (rainpet_2014).zmax as rainpet_zonalmax_2014
,(rainpet_2015).zmean as rainpet_zonalmean_2015,
       (rainpet_2015).zmin as rainpet_zonalmin_2015,
       (rainpet_2015).zmax as rainpet_zonalmax_2015
,(rainpet_2016).zmean as rainpet_zonalmean_2016,
       (rainpet_2016).zmin as rainpet_zonalmin_2016,
       (rainpet_2016).zmax as rainpet_zonalmax_2016
,(rainpet_2017).zmean as rainpet_zonalmean_2017,
       (rainpet_2017).zmin as rainpet_zonalmin_2017,
       (rainpet_2017).zmax as rainpet_zonalmax_2017
,(rainpet_2018).zmean as rainpet_zonalmean_2018,
       (rainpet_2018).zmin as rainpet_zonalmin_2018,
       (rainpet_2018).zmax as rainpet_zonalmax_2018
,(rainpet_2019).zmean as rainpet_zonalmean_2019,
       (rainpet_2019).zmin as rainpet_zonalmin_2019,
       (rainpet_2019).zmax as rainpet_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "rainpet_subbasin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, rainpet_1958 zonaloutput,
rainpet_1959 zonaloutput,
rainpet_1960 zonaloutput,
rainpet_1961 zonaloutput,
rainpet_1962 zonaloutput,
rainpet_1963 zonaloutput,
rainpet_1964 zonaloutput,
rainpet_1965 zonaloutput,
rainpet_1966 zonaloutput,
rainpet_1967 zonaloutput,
rainpet_1968 zonaloutput,
rainpet_1969 zonaloutput,
rainpet_1970 zonaloutput,
rainpet_1971 zonaloutput,
rainpet_1972 zonaloutput,
rainpet_1973 zonaloutput,
rainpet_1974 zonaloutput,
rainpet_1975 zonaloutput,
rainpet_1976 zonaloutput,
rainpet_1977 zonaloutput,
rainpet_1978 zonaloutput,
rainpet_1979 zonaloutput,
rainpet_1980 zonaloutput,
rainpet_1981 zonaloutput,
rainpet_1982 zonaloutput,
rainpet_1983 zonaloutput,
rainpet_1984 zonaloutput,
rainpet_1985 zonaloutput,
rainpet_1986 zonaloutput,
rainpet_1987 zonaloutput,
rainpet_1988 zonaloutput,
rainpet_1989 zonaloutput,
rainpet_1990 zonaloutput,
rainpet_1991 zonaloutput,
rainpet_1992 zonaloutput,
rainpet_1993 zonaloutput,
rainpet_1994 zonaloutput,
rainpet_1995 zonaloutput,
rainpet_1996 zonaloutput,
rainpet_1997 zonaloutput,
rainpet_1998 zonaloutput,
rainpet_1999 zonaloutput,
rainpet_2000 zonaloutput,
rainpet_2001 zonaloutput,
rainpet_2002 zonaloutput,
rainpet_2003 zonaloutput,
rainpet_2004 zonaloutput,
rainpet_2005 zonaloutput,
rainpet_2006 zonaloutput,
rainpet_2007 zonaloutput,
rainpet_2008 zonaloutput,
rainpet_2009 zonaloutput,
rainpet_2010 zonaloutput,
rainpet_2011 zonaloutput,
rainpet_2012 zonaloutput,
rainpet_2013 zonaloutput,
rainpet_2014 zonaloutput,
rainpet_2015 zonaloutput,
rainpet_2016 zonaloutput,
rainpet_2017 zonaloutput,
rainpet_2018 zonaloutput,
rainpet_2019 zonaloutput) INNER JOIN hydrostn30_subbasin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_snowpack_subbasin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_snowpack_subbasin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (snowpack_1958).zmean as snowpack_zonalmean_1958,
       (snowpack_1958).zmin as snowpack_zonalmin_1958,
       (snowpack_1958).zmax as snowpack_zonalmax_1958
,(snowpack_1959).zmean as snowpack_zonalmean_1959,
       (snowpack_1959).zmin as snowpack_zonalmin_1959,
       (snowpack_1959).zmax as snowpack_zonalmax_1959
,(snowpack_1960).zmean as snowpack_zonalmean_1960,
       (snowpack_1960).zmin as snowpack_zonalmin_1960,
       (snowpack_1960).zmax as snowpack_zonalmax_1960
,(snowpack_1961).zmean as snowpack_zonalmean_1961,
       (snowpack_1961).zmin as snowpack_zonalmin_1961,
       (snowpack_1961).zmax as snowpack_zonalmax_1961
,(snowpack_1962).zmean as snowpack_zonalmean_1962,
       (snowpack_1962).zmin as snowpack_zonalmin_1962,
       (snowpack_1962).zmax as snowpack_zonalmax_1962
,(snowpack_1963).zmean as snowpack_zonalmean_1963,
       (snowpack_1963).zmin as snowpack_zonalmin_1963,
       (snowpack_1963).zmax as snowpack_zonalmax_1963
,(snowpack_1964).zmean as snowpack_zonalmean_1964,
       (snowpack_1964).zmin as snowpack_zonalmin_1964,
       (snowpack_1964).zmax as snowpack_zonalmax_1964
,(snowpack_1965).zmean as snowpack_zonalmean_1965,
       (snowpack_1965).zmin as snowpack_zonalmin_1965,
       (snowpack_1965).zmax as snowpack_zonalmax_1965
,(snowpack_1966).zmean as snowpack_zonalmean_1966,
       (snowpack_1966).zmin as snowpack_zonalmin_1966,
       (snowpack_1966).zmax as snowpack_zonalmax_1966
,(snowpack_1967).zmean as snowpack_zonalmean_1967,
       (snowpack_1967).zmin as snowpack_zonalmin_1967,
       (snowpack_1967).zmax as snowpack_zonalmax_1967
,(snowpack_1968).zmean as snowpack_zonalmean_1968,
       (snowpack_1968).zmin as snowpack_zonalmin_1968,
       (snowpack_1968).zmax as snowpack_zonalmax_1968
,(snowpack_1969).zmean as snowpack_zonalmean_1969,
       (snowpack_1969).zmin as snowpack_zonalmin_1969,
       (snowpack_1969).zmax as snowpack_zonalmax_1969
,(snowpack_1970).zmean as snowpack_zonalmean_1970,
       (snowpack_1970).zmin as snowpack_zonalmin_1970,
       (snowpack_1970).zmax as snowpack_zonalmax_1970
,(snowpack_1971).zmean as snowpack_zonalmean_1971,
       (snowpack_1971).zmin as snowpack_zonalmin_1971,
       (snowpack_1971).zmax as snowpack_zonalmax_1971
,(snowpack_1972).zmean as snowpack_zonalmean_1972,
       (snowpack_1972).zmin as snowpack_zonalmin_1972,
       (snowpack_1972).zmax as snowpack_zonalmax_1972
,(snowpack_1973).zmean as snowpack_zonalmean_1973,
       (snowpack_1973).zmin as snowpack_zonalmin_1973,
       (snowpack_1973).zmax as snowpack_zonalmax_1973
,(snowpack_1974).zmean as snowpack_zonalmean_1974,
       (snowpack_1974).zmin as snowpack_zonalmin_1974,
       (snowpack_1974).zmax as snowpack_zonalmax_1974
,(snowpack_1975).zmean as snowpack_zonalmean_1975,
       (snowpack_1975).zmin as snowpack_zonalmin_1975,
       (snowpack_1975).zmax as snowpack_zonalmax_1975
,(snowpack_1976).zmean as snowpack_zonalmean_1976,
       (snowpack_1976).zmin as snowpack_zonalmin_1976,
       (snowpack_1976).zmax as snowpack_zonalmax_1976
,(snowpack_1977).zmean as snowpack_zonalmean_1977,
       (snowpack_1977).zmin as snowpack_zonalmin_1977,
       (snowpack_1977).zmax as snowpack_zonalmax_1977
,(snowpack_1978).zmean as snowpack_zonalmean_1978,
       (snowpack_1978).zmin as snowpack_zonalmin_1978,
       (snowpack_1978).zmax as snowpack_zonalmax_1978
,(snowpack_1979).zmean as snowpack_zonalmean_1979,
       (snowpack_1979).zmin as snowpack_zonalmin_1979,
       (snowpack_1979).zmax as snowpack_zonalmax_1979
,(snowpack_1980).zmean as snowpack_zonalmean_1980,
       (snowpack_1980).zmin as snowpack_zonalmin_1980,
       (snowpack_1980).zmax as snowpack_zonalmax_1980
,(snowpack_1981).zmean as snowpack_zonalmean_1981,
       (snowpack_1981).zmin as snowpack_zonalmin_1981,
       (snowpack_1981).zmax as snowpack_zonalmax_1981
,(snowpack_1982).zmean as snowpack_zonalmean_1982,
       (snowpack_1982).zmin as snowpack_zonalmin_1982,
       (snowpack_1982).zmax as snowpack_zonalmax_1982
,(snowpack_1983).zmean as snowpack_zonalmean_1983,
       (snowpack_1983).zmin as snowpack_zonalmin_1983,
       (snowpack_1983).zmax as snowpack_zonalmax_1983
,(snowpack_1984).zmean as snowpack_zonalmean_1984,
       (snowpack_1984).zmin as snowpack_zonalmin_1984,
       (snowpack_1984).zmax as snowpack_zonalmax_1984
,(snowpack_1985).zmean as snowpack_zonalmean_1985,
       (snowpack_1985).zmin as snowpack_zonalmin_1985,
       (snowpack_1985).zmax as snowpack_zonalmax_1985
,(snowpack_1986).zmean as snowpack_zonalmean_1986,
       (snowpack_1986).zmin as snowpack_zonalmin_1986,
       (snowpack_1986).zmax as snowpack_zonalmax_1986
,(snowpack_1987).zmean as snowpack_zonalmean_1987,
       (snowpack_1987).zmin as snowpack_zonalmin_1987,
       (snowpack_1987).zmax as snowpack_zonalmax_1987
,(snowpack_1988).zmean as snowpack_zonalmean_1988,
       (snowpack_1988).zmin as snowpack_zonalmin_1988,
       (snowpack_1988).zmax as snowpack_zonalmax_1988
,(snowpack_1989).zmean as snowpack_zonalmean_1989,
       (snowpack_1989).zmin as snowpack_zonalmin_1989,
       (snowpack_1989).zmax as snowpack_zonalmax_1989
,(snowpack_1990).zmean as snowpack_zonalmean_1990,
       (snowpack_1990).zmin as snowpack_zonalmin_1990,
       (snowpack_1990).zmax as snowpack_zonalmax_1990
,(snowpack_1991).zmean as snowpack_zonalmean_1991,
       (snowpack_1991).zmin as snowpack_zonalmin_1991,
       (snowpack_1991).zmax as snowpack_zonalmax_1991
,(snowpack_1992).zmean as snowpack_zonalmean_1992,
       (snowpack_1992).zmin as snowpack_zonalmin_1992,
       (snowpack_1992).zmax as snowpack_zonalmax_1992
,(snowpack_1993).zmean as snowpack_zonalmean_1993,
       (snowpack_1993).zmin as snowpack_zonalmin_1993,
       (snowpack_1993).zmax as snowpack_zonalmax_1993
,(snowpack_1994).zmean as snowpack_zonalmean_1994,
       (snowpack_1994).zmin as snowpack_zonalmin_1994,
       (snowpack_1994).zmax as snowpack_zonalmax_1994
,(snowpack_1995).zmean as snowpack_zonalmean_1995,
       (snowpack_1995).zmin as snowpack_zonalmin_1995,
       (snowpack_1995).zmax as snowpack_zonalmax_1995
,(snowpack_1996).zmean as snowpack_zonalmean_1996,
       (snowpack_1996).zmin as snowpack_zonalmin_1996,
       (snowpack_1996).zmax as snowpack_zonalmax_1996
,(snowpack_1997).zmean as snowpack_zonalmean_1997,
       (snowpack_1997).zmin as snowpack_zonalmin_1997,
       (snowpack_1997).zmax as snowpack_zonalmax_1997
,(snowpack_1998).zmean as snowpack_zonalmean_1998,
       (snowpack_1998).zmin as snowpack_zonalmin_1998,
       (snowpack_1998).zmax as snowpack_zonalmax_1998
,(snowpack_1999).zmean as snowpack_zonalmean_1999,
       (snowpack_1999).zmin as snowpack_zonalmin_1999,
       (snowpack_1999).zmax as snowpack_zonalmax_1999
,(snowpack_2000).zmean as snowpack_zonalmean_2000,
       (snowpack_2000).zmin as snowpack_zonalmin_2000,
       (snowpack_2000).zmax as snowpack_zonalmax_2000
,(snowpack_2001).zmean as snowpack_zonalmean_2001,
       (snowpack_2001).zmin as snowpack_zonalmin_2001,
       (snowpack_2001).zmax as snowpack_zonalmax_2001
,(snowpack_2002).zmean as snowpack_zonalmean_2002,
       (snowpack_2002).zmin as snowpack_zonalmin_2002,
       (snowpack_2002).zmax as snowpack_zonalmax_2002
,(snowpack_2003).zmean as snowpack_zonalmean_2003,
       (snowpack_2003).zmin as snowpack_zonalmin_2003,
       (snowpack_2003).zmax as snowpack_zonalmax_2003
,(snowpack_2004).zmean as snowpack_zonalmean_2004,
       (snowpack_2004).zmin as snowpack_zonalmin_2004,
       (snowpack_2004).zmax as snowpack_zonalmax_2004
,(snowpack_2005).zmean as snowpack_zonalmean_2005,
       (snowpack_2005).zmin as snowpack_zonalmin_2005,
       (snowpack_2005).zmax as snowpack_zonalmax_2005
,(snowpack_2006).zmean as snowpack_zonalmean_2006,
       (snowpack_2006).zmin as snowpack_zonalmin_2006,
       (snowpack_2006).zmax as snowpack_zonalmax_2006
,(snowpack_2007).zmean as snowpack_zonalmean_2007,
       (snowpack_2007).zmin as snowpack_zonalmin_2007,
       (snowpack_2007).zmax as snowpack_zonalmax_2007
,(snowpack_2008).zmean as snowpack_zonalmean_2008,
       (snowpack_2008).zmin as snowpack_zonalmin_2008,
       (snowpack_2008).zmax as snowpack_zonalmax_2008
,(snowpack_2009).zmean as snowpack_zonalmean_2009,
       (snowpack_2009).zmin as snowpack_zonalmin_2009,
       (snowpack_2009).zmax as snowpack_zonalmax_2009
,(snowpack_2010).zmean as snowpack_zonalmean_2010,
       (snowpack_2010).zmin as snowpack_zonalmin_2010,
       (snowpack_2010).zmax as snowpack_zonalmax_2010
,(snowpack_2011).zmean as snowpack_zonalmean_2011,
       (snowpack_2011).zmin as snowpack_zonalmin_2011,
       (snowpack_2011).zmax as snowpack_zonalmax_2011
,(snowpack_2012).zmean as snowpack_zonalmean_2012,
       (snowpack_2012).zmin as snowpack_zonalmin_2012,
       (snowpack_2012).zmax as snowpack_zonalmax_2012
,(snowpack_2013).zmean as snowpack_zonalmean_2013,
       (snowpack_2013).zmin as snowpack_zonalmin_2013,
       (snowpack_2013).zmax as snowpack_zonalmax_2013
,(snowpack_2014).zmean as snowpack_zonalmean_2014,
       (snowpack_2014).zmin as snowpack_zonalmin_2014,
       (snowpack_2014).zmax as snowpack_zonalmax_2014
,(snowpack_2015).zmean as snowpack_zonalmean_2015,
       (snowpack_2015).zmin as snowpack_zonalmin_2015,
       (snowpack_2015).zmax as snowpack_zonalmax_2015
,(snowpack_2016).zmean as snowpack_zonalmean_2016,
       (snowpack_2016).zmin as snowpack_zonalmin_2016,
       (snowpack_2016).zmax as snowpack_zonalmax_2016
,(snowpack_2017).zmean as snowpack_zonalmean_2017,
       (snowpack_2017).zmin as snowpack_zonalmin_2017,
       (snowpack_2017).zmax as snowpack_zonalmax_2017
,(snowpack_2018).zmean as snowpack_zonalmean_2018,
       (snowpack_2018).zmin as snowpack_zonalmin_2018,
       (snowpack_2018).zmax as snowpack_zonalmax_2018
,(snowpack_2019).zmean as snowpack_zonalmean_2019,
       (snowpack_2019).zmin as snowpack_zonalmin_2019,
       (snowpack_2019).zmax as snowpack_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "snowpack_subbasin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, snowpack_1958 zonaloutput,
snowpack_1959 zonaloutput,
snowpack_1960 zonaloutput,
snowpack_1961 zonaloutput,
snowpack_1962 zonaloutput,
snowpack_1963 zonaloutput,
snowpack_1964 zonaloutput,
snowpack_1965 zonaloutput,
snowpack_1966 zonaloutput,
snowpack_1967 zonaloutput,
snowpack_1968 zonaloutput,
snowpack_1969 zonaloutput,
snowpack_1970 zonaloutput,
snowpack_1971 zonaloutput,
snowpack_1972 zonaloutput,
snowpack_1973 zonaloutput,
snowpack_1974 zonaloutput,
snowpack_1975 zonaloutput,
snowpack_1976 zonaloutput,
snowpack_1977 zonaloutput,
snowpack_1978 zonaloutput,
snowpack_1979 zonaloutput,
snowpack_1980 zonaloutput,
snowpack_1981 zonaloutput,
snowpack_1982 zonaloutput,
snowpack_1983 zonaloutput,
snowpack_1984 zonaloutput,
snowpack_1985 zonaloutput,
snowpack_1986 zonaloutput,
snowpack_1987 zonaloutput,
snowpack_1988 zonaloutput,
snowpack_1989 zonaloutput,
snowpack_1990 zonaloutput,
snowpack_1991 zonaloutput,
snowpack_1992 zonaloutput,
snowpack_1993 zonaloutput,
snowpack_1994 zonaloutput,
snowpack_1995 zonaloutput,
snowpack_1996 zonaloutput,
snowpack_1997 zonaloutput,
snowpack_1998 zonaloutput,
snowpack_1999 zonaloutput,
snowpack_2000 zonaloutput,
snowpack_2001 zonaloutput,
snowpack_2002 zonaloutput,
snowpack_2003 zonaloutput,
snowpack_2004 zonaloutput,
snowpack_2005 zonaloutput,
snowpack_2006 zonaloutput,
snowpack_2007 zonaloutput,
snowpack_2008 zonaloutput,
snowpack_2009 zonaloutput,
snowpack_2010 zonaloutput,
snowpack_2011 zonaloutput,
snowpack_2012 zonaloutput,
snowpack_2013 zonaloutput,
snowpack_2014 zonaloutput,
snowpack_2015 zonaloutput,
snowpack_2016 zonaloutput,
snowpack_2017 zonaloutput,
snowpack_2018 zonaloutput,
snowpack_2019 zonaloutput) INNER JOIN hydrostn30_subbasin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_runoff_subbasin_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_runoff_subbasin_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (runoff_1958).zmean as runoff_zonalmean_1958,
       (runoff_1958).zmin as runoff_zonalmin_1958,
       (runoff_1958).zmax as runoff_zonalmax_1958
,(runoff_1959).zmean as runoff_zonalmean_1959,
       (runoff_1959).zmin as runoff_zonalmin_1959,
       (runoff_1959).zmax as runoff_zonalmax_1959
,(runoff_1960).zmean as runoff_zonalmean_1960,
       (runoff_1960).zmin as runoff_zonalmin_1960,
       (runoff_1960).zmax as runoff_zonalmax_1960
,(runoff_1961).zmean as runoff_zonalmean_1961,
       (runoff_1961).zmin as runoff_zonalmin_1961,
       (runoff_1961).zmax as runoff_zonalmax_1961
,(runoff_1962).zmean as runoff_zonalmean_1962,
       (runoff_1962).zmin as runoff_zonalmin_1962,
       (runoff_1962).zmax as runoff_zonalmax_1962
,(runoff_1963).zmean as runoff_zonalmean_1963,
       (runoff_1963).zmin as runoff_zonalmin_1963,
       (runoff_1963).zmax as runoff_zonalmax_1963
,(runoff_1964).zmean as runoff_zonalmean_1964,
       (runoff_1964).zmin as runoff_zonalmin_1964,
       (runoff_1964).zmax as runoff_zonalmax_1964
,(runoff_1965).zmean as runoff_zonalmean_1965,
       (runoff_1965).zmin as runoff_zonalmin_1965,
       (runoff_1965).zmax as runoff_zonalmax_1965
,(runoff_1966).zmean as runoff_zonalmean_1966,
       (runoff_1966).zmin as runoff_zonalmin_1966,
       (runoff_1966).zmax as runoff_zonalmax_1966
,(runoff_1967).zmean as runoff_zonalmean_1967,
       (runoff_1967).zmin as runoff_zonalmin_1967,
       (runoff_1967).zmax as runoff_zonalmax_1967
,(runoff_1968).zmean as runoff_zonalmean_1968,
       (runoff_1968).zmin as runoff_zonalmin_1968,
       (runoff_1968).zmax as runoff_zonalmax_1968
,(runoff_1969).zmean as runoff_zonalmean_1969,
       (runoff_1969).zmin as runoff_zonalmin_1969,
       (runoff_1969).zmax as runoff_zonalmax_1969
,(runoff_1970).zmean as runoff_zonalmean_1970,
       (runoff_1970).zmin as runoff_zonalmin_1970,
       (runoff_1970).zmax as runoff_zonalmax_1970
,(runoff_1971).zmean as runoff_zonalmean_1971,
       (runoff_1971).zmin as runoff_zonalmin_1971,
       (runoff_1971).zmax as runoff_zonalmax_1971
,(runoff_1972).zmean as runoff_zonalmean_1972,
       (runoff_1972).zmin as runoff_zonalmin_1972,
       (runoff_1972).zmax as runoff_zonalmax_1972
,(runoff_1973).zmean as runoff_zonalmean_1973,
       (runoff_1973).zmin as runoff_zonalmin_1973,
       (runoff_1973).zmax as runoff_zonalmax_1973
,(runoff_1974).zmean as runoff_zonalmean_1974,
       (runoff_1974).zmin as runoff_zonalmin_1974,
       (runoff_1974).zmax as runoff_zonalmax_1974
,(runoff_1975).zmean as runoff_zonalmean_1975,
       (runoff_1975).zmin as runoff_zonalmin_1975,
       (runoff_1975).zmax as runoff_zonalmax_1975
,(runoff_1976).zmean as runoff_zonalmean_1976,
       (runoff_1976).zmin as runoff_zonalmin_1976,
       (runoff_1976).zmax as runoff_zonalmax_1976
,(runoff_1977).zmean as runoff_zonalmean_1977,
       (runoff_1977).zmin as runoff_zonalmin_1977,
       (runoff_1977).zmax as runoff_zonalmax_1977
,(runoff_1978).zmean as runoff_zonalmean_1978,
       (runoff_1978).zmin as runoff_zonalmin_1978,
       (runoff_1978).zmax as runoff_zonalmax_1978
,(runoff_1979).zmean as runoff_zonalmean_1979,
       (runoff_1979).zmin as runoff_zonalmin_1979,
       (runoff_1979).zmax as runoff_zonalmax_1979
,(runoff_1980).zmean as runoff_zonalmean_1980,
       (runoff_1980).zmin as runoff_zonalmin_1980,
       (runoff_1980).zmax as runoff_zonalmax_1980
,(runoff_1981).zmean as runoff_zonalmean_1981,
       (runoff_1981).zmin as runoff_zonalmin_1981,
       (runoff_1981).zmax as runoff_zonalmax_1981
,(runoff_1982).zmean as runoff_zonalmean_1982,
       (runoff_1982).zmin as runoff_zonalmin_1982,
       (runoff_1982).zmax as runoff_zonalmax_1982
,(runoff_1983).zmean as runoff_zonalmean_1983,
       (runoff_1983).zmin as runoff_zonalmin_1983,
       (runoff_1983).zmax as runoff_zonalmax_1983
,(runoff_1984).zmean as runoff_zonalmean_1984,
       (runoff_1984).zmin as runoff_zonalmin_1984,
       (runoff_1984).zmax as runoff_zonalmax_1984
,(runoff_1985).zmean as runoff_zonalmean_1985,
       (runoff_1985).zmin as runoff_zonalmin_1985,
       (runoff_1985).zmax as runoff_zonalmax_1985
,(runoff_1986).zmean as runoff_zonalmean_1986,
       (runoff_1986).zmin as runoff_zonalmin_1986,
       (runoff_1986).zmax as runoff_zonalmax_1986
,(runoff_1987).zmean as runoff_zonalmean_1987,
       (runoff_1987).zmin as runoff_zonalmin_1987,
       (runoff_1987).zmax as runoff_zonalmax_1987
,(runoff_1988).zmean as runoff_zonalmean_1988,
       (runoff_1988).zmin as runoff_zonalmin_1988,
       (runoff_1988).zmax as runoff_zonalmax_1988
,(runoff_1989).zmean as runoff_zonalmean_1989,
       (runoff_1989).zmin as runoff_zonalmin_1989,
       (runoff_1989).zmax as runoff_zonalmax_1989
,(runoff_1990).zmean as runoff_zonalmean_1990,
       (runoff_1990).zmin as runoff_zonalmin_1990,
       (runoff_1990).zmax as runoff_zonalmax_1990
,(runoff_1991).zmean as runoff_zonalmean_1991,
       (runoff_1991).zmin as runoff_zonalmin_1991,
       (runoff_1991).zmax as runoff_zonalmax_1991
,(runoff_1992).zmean as runoff_zonalmean_1992,
       (runoff_1992).zmin as runoff_zonalmin_1992,
       (runoff_1992).zmax as runoff_zonalmax_1992
,(runoff_1993).zmean as runoff_zonalmean_1993,
       (runoff_1993).zmin as runoff_zonalmin_1993,
       (runoff_1993).zmax as runoff_zonalmax_1993
,(runoff_1994).zmean as runoff_zonalmean_1994,
       (runoff_1994).zmin as runoff_zonalmin_1994,
       (runoff_1994).zmax as runoff_zonalmax_1994
,(runoff_1995).zmean as runoff_zonalmean_1995,
       (runoff_1995).zmin as runoff_zonalmin_1995,
       (runoff_1995).zmax as runoff_zonalmax_1995
,(runoff_1996).zmean as runoff_zonalmean_1996,
       (runoff_1996).zmin as runoff_zonalmin_1996,
       (runoff_1996).zmax as runoff_zonalmax_1996
,(runoff_1997).zmean as runoff_zonalmean_1997,
       (runoff_1997).zmin as runoff_zonalmin_1997,
       (runoff_1997).zmax as runoff_zonalmax_1997
,(runoff_1998).zmean as runoff_zonalmean_1998,
       (runoff_1998).zmin as runoff_zonalmin_1998,
       (runoff_1998).zmax as runoff_zonalmax_1998
,(runoff_1999).zmean as runoff_zonalmean_1999,
       (runoff_1999).zmin as runoff_zonalmin_1999,
       (runoff_1999).zmax as runoff_zonalmax_1999
,(runoff_2000).zmean as runoff_zonalmean_2000,
       (runoff_2000).zmin as runoff_zonalmin_2000,
       (runoff_2000).zmax as runoff_zonalmax_2000
,(runoff_2001).zmean as runoff_zonalmean_2001,
       (runoff_2001).zmin as runoff_zonalmin_2001,
       (runoff_2001).zmax as runoff_zonalmax_2001
,(runoff_2002).zmean as runoff_zonalmean_2002,
       (runoff_2002).zmin as runoff_zonalmin_2002,
       (runoff_2002).zmax as runoff_zonalmax_2002
,(runoff_2003).zmean as runoff_zonalmean_2003,
       (runoff_2003).zmin as runoff_zonalmin_2003,
       (runoff_2003).zmax as runoff_zonalmax_2003
,(runoff_2004).zmean as runoff_zonalmean_2004,
       (runoff_2004).zmin as runoff_zonalmin_2004,
       (runoff_2004).zmax as runoff_zonalmax_2004
,(runoff_2005).zmean as runoff_zonalmean_2005,
       (runoff_2005).zmin as runoff_zonalmin_2005,
       (runoff_2005).zmax as runoff_zonalmax_2005
,(runoff_2006).zmean as runoff_zonalmean_2006,
       (runoff_2006).zmin as runoff_zonalmin_2006,
       (runoff_2006).zmax as runoff_zonalmax_2006
,(runoff_2007).zmean as runoff_zonalmean_2007,
       (runoff_2007).zmin as runoff_zonalmin_2007,
       (runoff_2007).zmax as runoff_zonalmax_2007
,(runoff_2008).zmean as runoff_zonalmean_2008,
       (runoff_2008).zmin as runoff_zonalmin_2008,
       (runoff_2008).zmax as runoff_zonalmax_2008
,(runoff_2009).zmean as runoff_zonalmean_2009,
       (runoff_2009).zmin as runoff_zonalmin_2009,
       (runoff_2009).zmax as runoff_zonalmax_2009
,(runoff_2010).zmean as runoff_zonalmean_2010,
       (runoff_2010).zmin as runoff_zonalmin_2010,
       (runoff_2010).zmax as runoff_zonalmax_2010
,(runoff_2011).zmean as runoff_zonalmean_2011,
       (runoff_2011).zmin as runoff_zonalmin_2011,
       (runoff_2011).zmax as runoff_zonalmax_2011
,(runoff_2012).zmean as runoff_zonalmean_2012,
       (runoff_2012).zmin as runoff_zonalmin_2012,
       (runoff_2012).zmax as runoff_zonalmax_2012
,(runoff_2013).zmean as runoff_zonalmean_2013,
       (runoff_2013).zmin as runoff_zonalmin_2013,
       (runoff_2013).zmax as runoff_zonalmax_2013
,(runoff_2014).zmean as runoff_zonalmean_2014,
       (runoff_2014).zmin as runoff_zonalmin_2014,
       (runoff_2014).zmax as runoff_zonalmax_2014
,(runoff_2015).zmean as runoff_zonalmean_2015,
       (runoff_2015).zmin as runoff_zonalmin_2015,
       (runoff_2015).zmax as runoff_zonalmax_2015
,(runoff_2016).zmean as runoff_zonalmean_2016,
       (runoff_2016).zmin as runoff_zonalmin_2016,
       (runoff_2016).zmax as runoff_zonalmax_2016
,(runoff_2017).zmean as runoff_zonalmean_2017,
       (runoff_2017).zmin as runoff_zonalmin_2017,
       (runoff_2017).zmax as runoff_zonalmax_2017
,(runoff_2018).zmean as runoff_zonalmean_2018,
       (runoff_2018).zmin as runoff_zonalmin_2018,
       (runoff_2018).zmax as runoff_zonalmax_2018
,(runoff_2019).zmean as runoff_zonalmean_2019,
       (runoff_2019).zmin as runoff_zonalmin_2019,
       (runoff_2019).zmax as runoff_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "runoff_subbasin_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, runoff_1958 zonaloutput,
runoff_1959 zonaloutput,
runoff_1960 zonaloutput,
runoff_1961 zonaloutput,
runoff_1962 zonaloutput,
runoff_1963 zonaloutput,
runoff_1964 zonaloutput,
runoff_1965 zonaloutput,
runoff_1966 zonaloutput,
runoff_1967 zonaloutput,
runoff_1968 zonaloutput,
runoff_1969 zonaloutput,
runoff_1970 zonaloutput,
runoff_1971 zonaloutput,
runoff_1972 zonaloutput,
runoff_1973 zonaloutput,
runoff_1974 zonaloutput,
runoff_1975 zonaloutput,
runoff_1976 zonaloutput,
runoff_1977 zonaloutput,
runoff_1978 zonaloutput,
runoff_1979 zonaloutput,
runoff_1980 zonaloutput,
runoff_1981 zonaloutput,
runoff_1982 zonaloutput,
runoff_1983 zonaloutput,
runoff_1984 zonaloutput,
runoff_1985 zonaloutput,
runoff_1986 zonaloutput,
runoff_1987 zonaloutput,
runoff_1988 zonaloutput,
runoff_1989 zonaloutput,
runoff_1990 zonaloutput,
runoff_1991 zonaloutput,
runoff_1992 zonaloutput,
runoff_1993 zonaloutput,
runoff_1994 zonaloutput,
runoff_1995 zonaloutput,
runoff_1996 zonaloutput,
runoff_1997 zonaloutput,
runoff_1998 zonaloutput,
runoff_1999 zonaloutput,
runoff_2000 zonaloutput,
runoff_2001 zonaloutput,
runoff_2002 zonaloutput,
runoff_2003 zonaloutput,
runoff_2004 zonaloutput,
runoff_2005 zonaloutput,
runoff_2006 zonaloutput,
runoff_2007 zonaloutput,
runoff_2008 zonaloutput,
runoff_2009 zonaloutput,
runoff_2010 zonaloutput,
runoff_2011 zonaloutput,
runoff_2012 zonaloutput,
runoff_2013 zonaloutput,
runoff_2014 zonaloutput,
runoff_2015 zonaloutput,
runoff_2016 zonaloutput,
runoff_2017 zonaloutput,
runoff_2018 zonaloutput,
runoff_2019 zonaloutput) INNER JOIN hydrostn30_subbasin_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_evapotranspiration_country_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_evapotranspiration_country_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (evapotranspiration_1958).zmean as evapotranspiration_zonalmean_1958,
       (evapotranspiration_1958).zmin as evapotranspiration_zonalmin_1958,
       (evapotranspiration_1958).zmax as evapotranspiration_zonalmax_1958
,(evapotranspiration_1959).zmean as evapotranspiration_zonalmean_1959,
       (evapotranspiration_1959).zmin as evapotranspiration_zonalmin_1959,
       (evapotranspiration_1959).zmax as evapotranspiration_zonalmax_1959
,(evapotranspiration_1960).zmean as evapotranspiration_zonalmean_1960,
       (evapotranspiration_1960).zmin as evapotranspiration_zonalmin_1960,
       (evapotranspiration_1960).zmax as evapotranspiration_zonalmax_1960
,(evapotranspiration_1961).zmean as evapotranspiration_zonalmean_1961,
       (evapotranspiration_1961).zmin as evapotranspiration_zonalmin_1961,
       (evapotranspiration_1961).zmax as evapotranspiration_zonalmax_1961
,(evapotranspiration_1962).zmean as evapotranspiration_zonalmean_1962,
       (evapotranspiration_1962).zmin as evapotranspiration_zonalmin_1962,
       (evapotranspiration_1962).zmax as evapotranspiration_zonalmax_1962
,(evapotranspiration_1963).zmean as evapotranspiration_zonalmean_1963,
       (evapotranspiration_1963).zmin as evapotranspiration_zonalmin_1963,
       (evapotranspiration_1963).zmax as evapotranspiration_zonalmax_1963
,(evapotranspiration_1964).zmean as evapotranspiration_zonalmean_1964,
       (evapotranspiration_1964).zmin as evapotranspiration_zonalmin_1964,
       (evapotranspiration_1964).zmax as evapotranspiration_zonalmax_1964
,(evapotranspiration_1965).zmean as evapotranspiration_zonalmean_1965,
       (evapotranspiration_1965).zmin as evapotranspiration_zonalmin_1965,
       (evapotranspiration_1965).zmax as evapotranspiration_zonalmax_1965
,(evapotranspiration_1966).zmean as evapotranspiration_zonalmean_1966,
       (evapotranspiration_1966).zmin as evapotranspiration_zonalmin_1966,
       (evapotranspiration_1966).zmax as evapotranspiration_zonalmax_1966
,(evapotranspiration_1967).zmean as evapotranspiration_zonalmean_1967,
       (evapotranspiration_1967).zmin as evapotranspiration_zonalmin_1967,
       (evapotranspiration_1967).zmax as evapotranspiration_zonalmax_1967
,(evapotranspiration_1968).zmean as evapotranspiration_zonalmean_1968,
       (evapotranspiration_1968).zmin as evapotranspiration_zonalmin_1968,
       (evapotranspiration_1968).zmax as evapotranspiration_zonalmax_1968
,(evapotranspiration_1969).zmean as evapotranspiration_zonalmean_1969,
       (evapotranspiration_1969).zmin as evapotranspiration_zonalmin_1969,
       (evapotranspiration_1969).zmax as evapotranspiration_zonalmax_1969
,(evapotranspiration_1970).zmean as evapotranspiration_zonalmean_1970,
       (evapotranspiration_1970).zmin as evapotranspiration_zonalmin_1970,
       (evapotranspiration_1970).zmax as evapotranspiration_zonalmax_1970
,(evapotranspiration_1971).zmean as evapotranspiration_zonalmean_1971,
       (evapotranspiration_1971).zmin as evapotranspiration_zonalmin_1971,
       (evapotranspiration_1971).zmax as evapotranspiration_zonalmax_1971
,(evapotranspiration_1972).zmean as evapotranspiration_zonalmean_1972,
       (evapotranspiration_1972).zmin as evapotranspiration_zonalmin_1972,
       (evapotranspiration_1972).zmax as evapotranspiration_zonalmax_1972
,(evapotranspiration_1973).zmean as evapotranspiration_zonalmean_1973,
       (evapotranspiration_1973).zmin as evapotranspiration_zonalmin_1973,
       (evapotranspiration_1973).zmax as evapotranspiration_zonalmax_1973
,(evapotranspiration_1974).zmean as evapotranspiration_zonalmean_1974,
       (evapotranspiration_1974).zmin as evapotranspiration_zonalmin_1974,
       (evapotranspiration_1974).zmax as evapotranspiration_zonalmax_1974
,(evapotranspiration_1975).zmean as evapotranspiration_zonalmean_1975,
       (evapotranspiration_1975).zmin as evapotranspiration_zonalmin_1975,
       (evapotranspiration_1975).zmax as evapotranspiration_zonalmax_1975
,(evapotranspiration_1976).zmean as evapotranspiration_zonalmean_1976,
       (evapotranspiration_1976).zmin as evapotranspiration_zonalmin_1976,
       (evapotranspiration_1976).zmax as evapotranspiration_zonalmax_1976
,(evapotranspiration_1977).zmean as evapotranspiration_zonalmean_1977,
       (evapotranspiration_1977).zmin as evapotranspiration_zonalmin_1977,
       (evapotranspiration_1977).zmax as evapotranspiration_zonalmax_1977
,(evapotranspiration_1978).zmean as evapotranspiration_zonalmean_1978,
       (evapotranspiration_1978).zmin as evapotranspiration_zonalmin_1978,
       (evapotranspiration_1978).zmax as evapotranspiration_zonalmax_1978
,(evapotranspiration_1979).zmean as evapotranspiration_zonalmean_1979,
       (evapotranspiration_1979).zmin as evapotranspiration_zonalmin_1979,
       (evapotranspiration_1979).zmax as evapotranspiration_zonalmax_1979
,(evapotranspiration_1980).zmean as evapotranspiration_zonalmean_1980,
       (evapotranspiration_1980).zmin as evapotranspiration_zonalmin_1980,
       (evapotranspiration_1980).zmax as evapotranspiration_zonalmax_1980
,(evapotranspiration_1981).zmean as evapotranspiration_zonalmean_1981,
       (evapotranspiration_1981).zmin as evapotranspiration_zonalmin_1981,
       (evapotranspiration_1981).zmax as evapotranspiration_zonalmax_1981
,(evapotranspiration_1982).zmean as evapotranspiration_zonalmean_1982,
       (evapotranspiration_1982).zmin as evapotranspiration_zonalmin_1982,
       (evapotranspiration_1982).zmax as evapotranspiration_zonalmax_1982
,(evapotranspiration_1983).zmean as evapotranspiration_zonalmean_1983,
       (evapotranspiration_1983).zmin as evapotranspiration_zonalmin_1983,
       (evapotranspiration_1983).zmax as evapotranspiration_zonalmax_1983
,(evapotranspiration_1984).zmean as evapotranspiration_zonalmean_1984,
       (evapotranspiration_1984).zmin as evapotranspiration_zonalmin_1984,
       (evapotranspiration_1984).zmax as evapotranspiration_zonalmax_1984
,(evapotranspiration_1985).zmean as evapotranspiration_zonalmean_1985,
       (evapotranspiration_1985).zmin as evapotranspiration_zonalmin_1985,
       (evapotranspiration_1985).zmax as evapotranspiration_zonalmax_1985
,(evapotranspiration_1986).zmean as evapotranspiration_zonalmean_1986,
       (evapotranspiration_1986).zmin as evapotranspiration_zonalmin_1986,
       (evapotranspiration_1986).zmax as evapotranspiration_zonalmax_1986
,(evapotranspiration_1987).zmean as evapotranspiration_zonalmean_1987,
       (evapotranspiration_1987).zmin as evapotranspiration_zonalmin_1987,
       (evapotranspiration_1987).zmax as evapotranspiration_zonalmax_1987
,(evapotranspiration_1988).zmean as evapotranspiration_zonalmean_1988,
       (evapotranspiration_1988).zmin as evapotranspiration_zonalmin_1988,
       (evapotranspiration_1988).zmax as evapotranspiration_zonalmax_1988
,(evapotranspiration_1989).zmean as evapotranspiration_zonalmean_1989,
       (evapotranspiration_1989).zmin as evapotranspiration_zonalmin_1989,
       (evapotranspiration_1989).zmax as evapotranspiration_zonalmax_1989
,(evapotranspiration_1990).zmean as evapotranspiration_zonalmean_1990,
       (evapotranspiration_1990).zmin as evapotranspiration_zonalmin_1990,
       (evapotranspiration_1990).zmax as evapotranspiration_zonalmax_1990
,(evapotranspiration_1991).zmean as evapotranspiration_zonalmean_1991,
       (evapotranspiration_1991).zmin as evapotranspiration_zonalmin_1991,
       (evapotranspiration_1991).zmax as evapotranspiration_zonalmax_1991
,(evapotranspiration_1992).zmean as evapotranspiration_zonalmean_1992,
       (evapotranspiration_1992).zmin as evapotranspiration_zonalmin_1992,
       (evapotranspiration_1992).zmax as evapotranspiration_zonalmax_1992
,(evapotranspiration_1993).zmean as evapotranspiration_zonalmean_1993,
       (evapotranspiration_1993).zmin as evapotranspiration_zonalmin_1993,
       (evapotranspiration_1993).zmax as evapotranspiration_zonalmax_1993
,(evapotranspiration_1994).zmean as evapotranspiration_zonalmean_1994,
       (evapotranspiration_1994).zmin as evapotranspiration_zonalmin_1994,
       (evapotranspiration_1994).zmax as evapotranspiration_zonalmax_1994
,(evapotranspiration_1995).zmean as evapotranspiration_zonalmean_1995,
       (evapotranspiration_1995).zmin as evapotranspiration_zonalmin_1995,
       (evapotranspiration_1995).zmax as evapotranspiration_zonalmax_1995
,(evapotranspiration_1996).zmean as evapotranspiration_zonalmean_1996,
       (evapotranspiration_1996).zmin as evapotranspiration_zonalmin_1996,
       (evapotranspiration_1996).zmax as evapotranspiration_zonalmax_1996
,(evapotranspiration_1997).zmean as evapotranspiration_zonalmean_1997,
       (evapotranspiration_1997).zmin as evapotranspiration_zonalmin_1997,
       (evapotranspiration_1997).zmax as evapotranspiration_zonalmax_1997
,(evapotranspiration_1998).zmean as evapotranspiration_zonalmean_1998,
       (evapotranspiration_1998).zmin as evapotranspiration_zonalmin_1998,
       (evapotranspiration_1998).zmax as evapotranspiration_zonalmax_1998
,(evapotranspiration_1999).zmean as evapotranspiration_zonalmean_1999,
       (evapotranspiration_1999).zmin as evapotranspiration_zonalmin_1999,
       (evapotranspiration_1999).zmax as evapotranspiration_zonalmax_1999
,(evapotranspiration_2000).zmean as evapotranspiration_zonalmean_2000,
       (evapotranspiration_2000).zmin as evapotranspiration_zonalmin_2000,
       (evapotranspiration_2000).zmax as evapotranspiration_zonalmax_2000
,(evapotranspiration_2001).zmean as evapotranspiration_zonalmean_2001,
       (evapotranspiration_2001).zmin as evapotranspiration_zonalmin_2001,
       (evapotranspiration_2001).zmax as evapotranspiration_zonalmax_2001
,(evapotranspiration_2002).zmean as evapotranspiration_zonalmean_2002,
       (evapotranspiration_2002).zmin as evapotranspiration_zonalmin_2002,
       (evapotranspiration_2002).zmax as evapotranspiration_zonalmax_2002
,(evapotranspiration_2003).zmean as evapotranspiration_zonalmean_2003,
       (evapotranspiration_2003).zmin as evapotranspiration_zonalmin_2003,
       (evapotranspiration_2003).zmax as evapotranspiration_zonalmax_2003
,(evapotranspiration_2004).zmean as evapotranspiration_zonalmean_2004,
       (evapotranspiration_2004).zmin as evapotranspiration_zonalmin_2004,
       (evapotranspiration_2004).zmax as evapotranspiration_zonalmax_2004
,(evapotranspiration_2005).zmean as evapotranspiration_zonalmean_2005,
       (evapotranspiration_2005).zmin as evapotranspiration_zonalmin_2005,
       (evapotranspiration_2005).zmax as evapotranspiration_zonalmax_2005
,(evapotranspiration_2006).zmean as evapotranspiration_zonalmean_2006,
       (evapotranspiration_2006).zmin as evapotranspiration_zonalmin_2006,
       (evapotranspiration_2006).zmax as evapotranspiration_zonalmax_2006
,(evapotranspiration_2007).zmean as evapotranspiration_zonalmean_2007,
       (evapotranspiration_2007).zmin as evapotranspiration_zonalmin_2007,
       (evapotranspiration_2007).zmax as evapotranspiration_zonalmax_2007
,(evapotranspiration_2008).zmean as evapotranspiration_zonalmean_2008,
       (evapotranspiration_2008).zmin as evapotranspiration_zonalmin_2008,
       (evapotranspiration_2008).zmax as evapotranspiration_zonalmax_2008
,(evapotranspiration_2009).zmean as evapotranspiration_zonalmean_2009,
       (evapotranspiration_2009).zmin as evapotranspiration_zonalmin_2009,
       (evapotranspiration_2009).zmax as evapotranspiration_zonalmax_2009
,(evapotranspiration_2010).zmean as evapotranspiration_zonalmean_2010,
       (evapotranspiration_2010).zmin as evapotranspiration_zonalmin_2010,
       (evapotranspiration_2010).zmax as evapotranspiration_zonalmax_2010
,(evapotranspiration_2011).zmean as evapotranspiration_zonalmean_2011,
       (evapotranspiration_2011).zmin as evapotranspiration_zonalmin_2011,
       (evapotranspiration_2011).zmax as evapotranspiration_zonalmax_2011
,(evapotranspiration_2012).zmean as evapotranspiration_zonalmean_2012,
       (evapotranspiration_2012).zmin as evapotranspiration_zonalmin_2012,
       (evapotranspiration_2012).zmax as evapotranspiration_zonalmax_2012
,(evapotranspiration_2013).zmean as evapotranspiration_zonalmean_2013,
       (evapotranspiration_2013).zmin as evapotranspiration_zonalmin_2013,
       (evapotranspiration_2013).zmax as evapotranspiration_zonalmax_2013
,(evapotranspiration_2014).zmean as evapotranspiration_zonalmean_2014,
       (evapotranspiration_2014).zmin as evapotranspiration_zonalmin_2014,
       (evapotranspiration_2014).zmax as evapotranspiration_zonalmax_2014
,(evapotranspiration_2015).zmean as evapotranspiration_zonalmean_2015,
       (evapotranspiration_2015).zmin as evapotranspiration_zonalmin_2015,
       (evapotranspiration_2015).zmax as evapotranspiration_zonalmax_2015
,(evapotranspiration_2016).zmean as evapotranspiration_zonalmean_2016,
       (evapotranspiration_2016).zmin as evapotranspiration_zonalmin_2016,
       (evapotranspiration_2016).zmax as evapotranspiration_zonalmax_2016
,(evapotranspiration_2017).zmean as evapotranspiration_zonalmean_2017,
       (evapotranspiration_2017).zmin as evapotranspiration_zonalmin_2017,
       (evapotranspiration_2017).zmax as evapotranspiration_zonalmax_2017
,(evapotranspiration_2018).zmean as evapotranspiration_zonalmean_2018,
       (evapotranspiration_2018).zmin as evapotranspiration_zonalmin_2018,
       (evapotranspiration_2018).zmax as evapotranspiration_zonalmax_2018
,(evapotranspiration_2019).zmean as evapotranspiration_zonalmean_2019,
       (evapotranspiration_2019).zmin as evapotranspiration_zonalmin_2019,
       (evapotranspiration_2019).zmax as evapotranspiration_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "evapotranspiration_country_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, evapotranspiration_1958 zonaloutput,
evapotranspiration_1959 zonaloutput,
evapotranspiration_1960 zonaloutput,
evapotranspiration_1961 zonaloutput,
evapotranspiration_1962 zonaloutput,
evapotranspiration_1963 zonaloutput,
evapotranspiration_1964 zonaloutput,
evapotranspiration_1965 zonaloutput,
evapotranspiration_1966 zonaloutput,
evapotranspiration_1967 zonaloutput,
evapotranspiration_1968 zonaloutput,
evapotranspiration_1969 zonaloutput,
evapotranspiration_1970 zonaloutput,
evapotranspiration_1971 zonaloutput,
evapotranspiration_1972 zonaloutput,
evapotranspiration_1973 zonaloutput,
evapotranspiration_1974 zonaloutput,
evapotranspiration_1975 zonaloutput,
evapotranspiration_1976 zonaloutput,
evapotranspiration_1977 zonaloutput,
evapotranspiration_1978 zonaloutput,
evapotranspiration_1979 zonaloutput,
evapotranspiration_1980 zonaloutput,
evapotranspiration_1981 zonaloutput,
evapotranspiration_1982 zonaloutput,
evapotranspiration_1983 zonaloutput,
evapotranspiration_1984 zonaloutput,
evapotranspiration_1985 zonaloutput,
evapotranspiration_1986 zonaloutput,
evapotranspiration_1987 zonaloutput,
evapotranspiration_1988 zonaloutput,
evapotranspiration_1989 zonaloutput,
evapotranspiration_1990 zonaloutput,
evapotranspiration_1991 zonaloutput,
evapotranspiration_1992 zonaloutput,
evapotranspiration_1993 zonaloutput,
evapotranspiration_1994 zonaloutput,
evapotranspiration_1995 zonaloutput,
evapotranspiration_1996 zonaloutput,
evapotranspiration_1997 zonaloutput,
evapotranspiration_1998 zonaloutput,
evapotranspiration_1999 zonaloutput,
evapotranspiration_2000 zonaloutput,
evapotranspiration_2001 zonaloutput,
evapotranspiration_2002 zonaloutput,
evapotranspiration_2003 zonaloutput,
evapotranspiration_2004 zonaloutput,
evapotranspiration_2005 zonaloutput,
evapotranspiration_2006 zonaloutput,
evapotranspiration_2007 zonaloutput,
evapotranspiration_2008 zonaloutput,
evapotranspiration_2009 zonaloutput,
evapotranspiration_2010 zonaloutput,
evapotranspiration_2011 zonaloutput,
evapotranspiration_2012 zonaloutput,
evapotranspiration_2013 zonaloutput,
evapotranspiration_2014 zonaloutput,
evapotranspiration_2015 zonaloutput,
evapotranspiration_2016 zonaloutput,
evapotranspiration_2017 zonaloutput,
evapotranspiration_2018 zonaloutput,
evapotranspiration_2019 zonaloutput) INNER JOIN faogaul_country_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_soilmoisture_country_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_soilmoisture_country_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (soilmoisture_1958).zmean as soilmoisture_zonalmean_1958,
       (soilmoisture_1958).zmin as soilmoisture_zonalmin_1958,
       (soilmoisture_1958).zmax as soilmoisture_zonalmax_1958
,(soilmoisture_1959).zmean as soilmoisture_zonalmean_1959,
       (soilmoisture_1959).zmin as soilmoisture_zonalmin_1959,
       (soilmoisture_1959).zmax as soilmoisture_zonalmax_1959
,(soilmoisture_1960).zmean as soilmoisture_zonalmean_1960,
       (soilmoisture_1960).zmin as soilmoisture_zonalmin_1960,
       (soilmoisture_1960).zmax as soilmoisture_zonalmax_1960
,(soilmoisture_1961).zmean as soilmoisture_zonalmean_1961,
       (soilmoisture_1961).zmin as soilmoisture_zonalmin_1961,
       (soilmoisture_1961).zmax as soilmoisture_zonalmax_1961
,(soilmoisture_1962).zmean as soilmoisture_zonalmean_1962,
       (soilmoisture_1962).zmin as soilmoisture_zonalmin_1962,
       (soilmoisture_1962).zmax as soilmoisture_zonalmax_1962
,(soilmoisture_1963).zmean as soilmoisture_zonalmean_1963,
       (soilmoisture_1963).zmin as soilmoisture_zonalmin_1963,
       (soilmoisture_1963).zmax as soilmoisture_zonalmax_1963
,(soilmoisture_1964).zmean as soilmoisture_zonalmean_1964,
       (soilmoisture_1964).zmin as soilmoisture_zonalmin_1964,
       (soilmoisture_1964).zmax as soilmoisture_zonalmax_1964
,(soilmoisture_1965).zmean as soilmoisture_zonalmean_1965,
       (soilmoisture_1965).zmin as soilmoisture_zonalmin_1965,
       (soilmoisture_1965).zmax as soilmoisture_zonalmax_1965
,(soilmoisture_1966).zmean as soilmoisture_zonalmean_1966,
       (soilmoisture_1966).zmin as soilmoisture_zonalmin_1966,
       (soilmoisture_1966).zmax as soilmoisture_zonalmax_1966
,(soilmoisture_1967).zmean as soilmoisture_zonalmean_1967,
       (soilmoisture_1967).zmin as soilmoisture_zonalmin_1967,
       (soilmoisture_1967).zmax as soilmoisture_zonalmax_1967
,(soilmoisture_1968).zmean as soilmoisture_zonalmean_1968,
       (soilmoisture_1968).zmin as soilmoisture_zonalmin_1968,
       (soilmoisture_1968).zmax as soilmoisture_zonalmax_1968
,(soilmoisture_1969).zmean as soilmoisture_zonalmean_1969,
       (soilmoisture_1969).zmin as soilmoisture_zonalmin_1969,
       (soilmoisture_1969).zmax as soilmoisture_zonalmax_1969
,(soilmoisture_1970).zmean as soilmoisture_zonalmean_1970,
       (soilmoisture_1970).zmin as soilmoisture_zonalmin_1970,
       (soilmoisture_1970).zmax as soilmoisture_zonalmax_1970
,(soilmoisture_1971).zmean as soilmoisture_zonalmean_1971,
       (soilmoisture_1971).zmin as soilmoisture_zonalmin_1971,
       (soilmoisture_1971).zmax as soilmoisture_zonalmax_1971
,(soilmoisture_1972).zmean as soilmoisture_zonalmean_1972,
       (soilmoisture_1972).zmin as soilmoisture_zonalmin_1972,
       (soilmoisture_1972).zmax as soilmoisture_zonalmax_1972
,(soilmoisture_1973).zmean as soilmoisture_zonalmean_1973,
       (soilmoisture_1973).zmin as soilmoisture_zonalmin_1973,
       (soilmoisture_1973).zmax as soilmoisture_zonalmax_1973
,(soilmoisture_1974).zmean as soilmoisture_zonalmean_1974,
       (soilmoisture_1974).zmin as soilmoisture_zonalmin_1974,
       (soilmoisture_1974).zmax as soilmoisture_zonalmax_1974
,(soilmoisture_1975).zmean as soilmoisture_zonalmean_1975,
       (soilmoisture_1975).zmin as soilmoisture_zonalmin_1975,
       (soilmoisture_1975).zmax as soilmoisture_zonalmax_1975
,(soilmoisture_1976).zmean as soilmoisture_zonalmean_1976,
       (soilmoisture_1976).zmin as soilmoisture_zonalmin_1976,
       (soilmoisture_1976).zmax as soilmoisture_zonalmax_1976
,(soilmoisture_1977).zmean as soilmoisture_zonalmean_1977,
       (soilmoisture_1977).zmin as soilmoisture_zonalmin_1977,
       (soilmoisture_1977).zmax as soilmoisture_zonalmax_1977
,(soilmoisture_1978).zmean as soilmoisture_zonalmean_1978,
       (soilmoisture_1978).zmin as soilmoisture_zonalmin_1978,
       (soilmoisture_1978).zmax as soilmoisture_zonalmax_1978
,(soilmoisture_1979).zmean as soilmoisture_zonalmean_1979,
       (soilmoisture_1979).zmin as soilmoisture_zonalmin_1979,
       (soilmoisture_1979).zmax as soilmoisture_zonalmax_1979
,(soilmoisture_1980).zmean as soilmoisture_zonalmean_1980,
       (soilmoisture_1980).zmin as soilmoisture_zonalmin_1980,
       (soilmoisture_1980).zmax as soilmoisture_zonalmax_1980
,(soilmoisture_1981).zmean as soilmoisture_zonalmean_1981,
       (soilmoisture_1981).zmin as soilmoisture_zonalmin_1981,
       (soilmoisture_1981).zmax as soilmoisture_zonalmax_1981
,(soilmoisture_1982).zmean as soilmoisture_zonalmean_1982,
       (soilmoisture_1982).zmin as soilmoisture_zonalmin_1982,
       (soilmoisture_1982).zmax as soilmoisture_zonalmax_1982
,(soilmoisture_1983).zmean as soilmoisture_zonalmean_1983,
       (soilmoisture_1983).zmin as soilmoisture_zonalmin_1983,
       (soilmoisture_1983).zmax as soilmoisture_zonalmax_1983
,(soilmoisture_1984).zmean as soilmoisture_zonalmean_1984,
       (soilmoisture_1984).zmin as soilmoisture_zonalmin_1984,
       (soilmoisture_1984).zmax as soilmoisture_zonalmax_1984
,(soilmoisture_1985).zmean as soilmoisture_zonalmean_1985,
       (soilmoisture_1985).zmin as soilmoisture_zonalmin_1985,
       (soilmoisture_1985).zmax as soilmoisture_zonalmax_1985
,(soilmoisture_1986).zmean as soilmoisture_zonalmean_1986,
       (soilmoisture_1986).zmin as soilmoisture_zonalmin_1986,
       (soilmoisture_1986).zmax as soilmoisture_zonalmax_1986
,(soilmoisture_1987).zmean as soilmoisture_zonalmean_1987,
       (soilmoisture_1987).zmin as soilmoisture_zonalmin_1987,
       (soilmoisture_1987).zmax as soilmoisture_zonalmax_1987
,(soilmoisture_1988).zmean as soilmoisture_zonalmean_1988,
       (soilmoisture_1988).zmin as soilmoisture_zonalmin_1988,
       (soilmoisture_1988).zmax as soilmoisture_zonalmax_1988
,(soilmoisture_1989).zmean as soilmoisture_zonalmean_1989,
       (soilmoisture_1989).zmin as soilmoisture_zonalmin_1989,
       (soilmoisture_1989).zmax as soilmoisture_zonalmax_1989
,(soilmoisture_1990).zmean as soilmoisture_zonalmean_1990,
       (soilmoisture_1990).zmin as soilmoisture_zonalmin_1990,
       (soilmoisture_1990).zmax as soilmoisture_zonalmax_1990
,(soilmoisture_1991).zmean as soilmoisture_zonalmean_1991,
       (soilmoisture_1991).zmin as soilmoisture_zonalmin_1991,
       (soilmoisture_1991).zmax as soilmoisture_zonalmax_1991
,(soilmoisture_1992).zmean as soilmoisture_zonalmean_1992,
       (soilmoisture_1992).zmin as soilmoisture_zonalmin_1992,
       (soilmoisture_1992).zmax as soilmoisture_zonalmax_1992
,(soilmoisture_1993).zmean as soilmoisture_zonalmean_1993,
       (soilmoisture_1993).zmin as soilmoisture_zonalmin_1993,
       (soilmoisture_1993).zmax as soilmoisture_zonalmax_1993
,(soilmoisture_1994).zmean as soilmoisture_zonalmean_1994,
       (soilmoisture_1994).zmin as soilmoisture_zonalmin_1994,
       (soilmoisture_1994).zmax as soilmoisture_zonalmax_1994
,(soilmoisture_1995).zmean as soilmoisture_zonalmean_1995,
       (soilmoisture_1995).zmin as soilmoisture_zonalmin_1995,
       (soilmoisture_1995).zmax as soilmoisture_zonalmax_1995
,(soilmoisture_1996).zmean as soilmoisture_zonalmean_1996,
       (soilmoisture_1996).zmin as soilmoisture_zonalmin_1996,
       (soilmoisture_1996).zmax as soilmoisture_zonalmax_1996
,(soilmoisture_1997).zmean as soilmoisture_zonalmean_1997,
       (soilmoisture_1997).zmin as soilmoisture_zonalmin_1997,
       (soilmoisture_1997).zmax as soilmoisture_zonalmax_1997
,(soilmoisture_1998).zmean as soilmoisture_zonalmean_1998,
       (soilmoisture_1998).zmin as soilmoisture_zonalmin_1998,
       (soilmoisture_1998).zmax as soilmoisture_zonalmax_1998
,(soilmoisture_1999).zmean as soilmoisture_zonalmean_1999,
       (soilmoisture_1999).zmin as soilmoisture_zonalmin_1999,
       (soilmoisture_1999).zmax as soilmoisture_zonalmax_1999
,(soilmoisture_2000).zmean as soilmoisture_zonalmean_2000,
       (soilmoisture_2000).zmin as soilmoisture_zonalmin_2000,
       (soilmoisture_2000).zmax as soilmoisture_zonalmax_2000
,(soilmoisture_2001).zmean as soilmoisture_zonalmean_2001,
       (soilmoisture_2001).zmin as soilmoisture_zonalmin_2001,
       (soilmoisture_2001).zmax as soilmoisture_zonalmax_2001
,(soilmoisture_2002).zmean as soilmoisture_zonalmean_2002,
       (soilmoisture_2002).zmin as soilmoisture_zonalmin_2002,
       (soilmoisture_2002).zmax as soilmoisture_zonalmax_2002
,(soilmoisture_2003).zmean as soilmoisture_zonalmean_2003,
       (soilmoisture_2003).zmin as soilmoisture_zonalmin_2003,
       (soilmoisture_2003).zmax as soilmoisture_zonalmax_2003
,(soilmoisture_2004).zmean as soilmoisture_zonalmean_2004,
       (soilmoisture_2004).zmin as soilmoisture_zonalmin_2004,
       (soilmoisture_2004).zmax as soilmoisture_zonalmax_2004
,(soilmoisture_2005).zmean as soilmoisture_zonalmean_2005,
       (soilmoisture_2005).zmin as soilmoisture_zonalmin_2005,
       (soilmoisture_2005).zmax as soilmoisture_zonalmax_2005
,(soilmoisture_2006).zmean as soilmoisture_zonalmean_2006,
       (soilmoisture_2006).zmin as soilmoisture_zonalmin_2006,
       (soilmoisture_2006).zmax as soilmoisture_zonalmax_2006
,(soilmoisture_2007).zmean as soilmoisture_zonalmean_2007,
       (soilmoisture_2007).zmin as soilmoisture_zonalmin_2007,
       (soilmoisture_2007).zmax as soilmoisture_zonalmax_2007
,(soilmoisture_2008).zmean as soilmoisture_zonalmean_2008,
       (soilmoisture_2008).zmin as soilmoisture_zonalmin_2008,
       (soilmoisture_2008).zmax as soilmoisture_zonalmax_2008
,(soilmoisture_2009).zmean as soilmoisture_zonalmean_2009,
       (soilmoisture_2009).zmin as soilmoisture_zonalmin_2009,
       (soilmoisture_2009).zmax as soilmoisture_zonalmax_2009
,(soilmoisture_2010).zmean as soilmoisture_zonalmean_2010,
       (soilmoisture_2010).zmin as soilmoisture_zonalmin_2010,
       (soilmoisture_2010).zmax as soilmoisture_zonalmax_2010
,(soilmoisture_2011).zmean as soilmoisture_zonalmean_2011,
       (soilmoisture_2011).zmin as soilmoisture_zonalmin_2011,
       (soilmoisture_2011).zmax as soilmoisture_zonalmax_2011
,(soilmoisture_2012).zmean as soilmoisture_zonalmean_2012,
       (soilmoisture_2012).zmin as soilmoisture_zonalmin_2012,
       (soilmoisture_2012).zmax as soilmoisture_zonalmax_2012
,(soilmoisture_2013).zmean as soilmoisture_zonalmean_2013,
       (soilmoisture_2013).zmin as soilmoisture_zonalmin_2013,
       (soilmoisture_2013).zmax as soilmoisture_zonalmax_2013
,(soilmoisture_2014).zmean as soilmoisture_zonalmean_2014,
       (soilmoisture_2014).zmin as soilmoisture_zonalmin_2014,
       (soilmoisture_2014).zmax as soilmoisture_zonalmax_2014
,(soilmoisture_2015).zmean as soilmoisture_zonalmean_2015,
       (soilmoisture_2015).zmin as soilmoisture_zonalmin_2015,
       (soilmoisture_2015).zmax as soilmoisture_zonalmax_2015
,(soilmoisture_2016).zmean as soilmoisture_zonalmean_2016,
       (soilmoisture_2016).zmin as soilmoisture_zonalmin_2016,
       (soilmoisture_2016).zmax as soilmoisture_zonalmax_2016
,(soilmoisture_2017).zmean as soilmoisture_zonalmean_2017,
       (soilmoisture_2017).zmin as soilmoisture_zonalmin_2017,
       (soilmoisture_2017).zmax as soilmoisture_zonalmax_2017
,(soilmoisture_2018).zmean as soilmoisture_zonalmean_2018,
       (soilmoisture_2018).zmin as soilmoisture_zonalmin_2018,
       (soilmoisture_2018).zmax as soilmoisture_zonalmax_2018
,(soilmoisture_2019).zmean as soilmoisture_zonalmean_2019,
       (soilmoisture_2019).zmin as soilmoisture_zonalmin_2019,
       (soilmoisture_2019).zmax as soilmoisture_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "soilmoisture_country_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, soilmoisture_1958 zonaloutput,
soilmoisture_1959 zonaloutput,
soilmoisture_1960 zonaloutput,
soilmoisture_1961 zonaloutput,
soilmoisture_1962 zonaloutput,
soilmoisture_1963 zonaloutput,
soilmoisture_1964 zonaloutput,
soilmoisture_1965 zonaloutput,
soilmoisture_1966 zonaloutput,
soilmoisture_1967 zonaloutput,
soilmoisture_1968 zonaloutput,
soilmoisture_1969 zonaloutput,
soilmoisture_1970 zonaloutput,
soilmoisture_1971 zonaloutput,
soilmoisture_1972 zonaloutput,
soilmoisture_1973 zonaloutput,
soilmoisture_1974 zonaloutput,
soilmoisture_1975 zonaloutput,
soilmoisture_1976 zonaloutput,
soilmoisture_1977 zonaloutput,
soilmoisture_1978 zonaloutput,
soilmoisture_1979 zonaloutput,
soilmoisture_1980 zonaloutput,
soilmoisture_1981 zonaloutput,
soilmoisture_1982 zonaloutput,
soilmoisture_1983 zonaloutput,
soilmoisture_1984 zonaloutput,
soilmoisture_1985 zonaloutput,
soilmoisture_1986 zonaloutput,
soilmoisture_1987 zonaloutput,
soilmoisture_1988 zonaloutput,
soilmoisture_1989 zonaloutput,
soilmoisture_1990 zonaloutput,
soilmoisture_1991 zonaloutput,
soilmoisture_1992 zonaloutput,
soilmoisture_1993 zonaloutput,
soilmoisture_1994 zonaloutput,
soilmoisture_1995 zonaloutput,
soilmoisture_1996 zonaloutput,
soilmoisture_1997 zonaloutput,
soilmoisture_1998 zonaloutput,
soilmoisture_1999 zonaloutput,
soilmoisture_2000 zonaloutput,
soilmoisture_2001 zonaloutput,
soilmoisture_2002 zonaloutput,
soilmoisture_2003 zonaloutput,
soilmoisture_2004 zonaloutput,
soilmoisture_2005 zonaloutput,
soilmoisture_2006 zonaloutput,
soilmoisture_2007 zonaloutput,
soilmoisture_2008 zonaloutput,
soilmoisture_2009 zonaloutput,
soilmoisture_2010 zonaloutput,
soilmoisture_2011 zonaloutput,
soilmoisture_2012 zonaloutput,
soilmoisture_2013 zonaloutput,
soilmoisture_2014 zonaloutput,
soilmoisture_2015 zonaloutput,
soilmoisture_2016 zonaloutput,
soilmoisture_2017 zonaloutput,
soilmoisture_2018 zonaloutput,
soilmoisture_2019 zonaloutput) INNER JOIN faogaul_country_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_relativesoilmoisture_country_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_relativesoilmoisture_country_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (relativesoilmoisture_1958).zmean as relativesoilmoisture_zonalmean_1958,
       (relativesoilmoisture_1958).zmin as relativesoilmoisture_zonalmin_1958,
       (relativesoilmoisture_1958).zmax as relativesoilmoisture_zonalmax_1958
,(relativesoilmoisture_1959).zmean as relativesoilmoisture_zonalmean_1959,
       (relativesoilmoisture_1959).zmin as relativesoilmoisture_zonalmin_1959,
       (relativesoilmoisture_1959).zmax as relativesoilmoisture_zonalmax_1959
,(relativesoilmoisture_1960).zmean as relativesoilmoisture_zonalmean_1960,
       (relativesoilmoisture_1960).zmin as relativesoilmoisture_zonalmin_1960,
       (relativesoilmoisture_1960).zmax as relativesoilmoisture_zonalmax_1960
,(relativesoilmoisture_1961).zmean as relativesoilmoisture_zonalmean_1961,
       (relativesoilmoisture_1961).zmin as relativesoilmoisture_zonalmin_1961,
       (relativesoilmoisture_1961).zmax as relativesoilmoisture_zonalmax_1961
,(relativesoilmoisture_1962).zmean as relativesoilmoisture_zonalmean_1962,
       (relativesoilmoisture_1962).zmin as relativesoilmoisture_zonalmin_1962,
       (relativesoilmoisture_1962).zmax as relativesoilmoisture_zonalmax_1962
,(relativesoilmoisture_1963).zmean as relativesoilmoisture_zonalmean_1963,
       (relativesoilmoisture_1963).zmin as relativesoilmoisture_zonalmin_1963,
       (relativesoilmoisture_1963).zmax as relativesoilmoisture_zonalmax_1963
,(relativesoilmoisture_1964).zmean as relativesoilmoisture_zonalmean_1964,
       (relativesoilmoisture_1964).zmin as relativesoilmoisture_zonalmin_1964,
       (relativesoilmoisture_1964).zmax as relativesoilmoisture_zonalmax_1964
,(relativesoilmoisture_1965).zmean as relativesoilmoisture_zonalmean_1965,
       (relativesoilmoisture_1965).zmin as relativesoilmoisture_zonalmin_1965,
       (relativesoilmoisture_1965).zmax as relativesoilmoisture_zonalmax_1965
,(relativesoilmoisture_1966).zmean as relativesoilmoisture_zonalmean_1966,
       (relativesoilmoisture_1966).zmin as relativesoilmoisture_zonalmin_1966,
       (relativesoilmoisture_1966).zmax as relativesoilmoisture_zonalmax_1966
,(relativesoilmoisture_1967).zmean as relativesoilmoisture_zonalmean_1967,
       (relativesoilmoisture_1967).zmin as relativesoilmoisture_zonalmin_1967,
       (relativesoilmoisture_1967).zmax as relativesoilmoisture_zonalmax_1967
,(relativesoilmoisture_1968).zmean as relativesoilmoisture_zonalmean_1968,
       (relativesoilmoisture_1968).zmin as relativesoilmoisture_zonalmin_1968,
       (relativesoilmoisture_1968).zmax as relativesoilmoisture_zonalmax_1968
,(relativesoilmoisture_1969).zmean as relativesoilmoisture_zonalmean_1969,
       (relativesoilmoisture_1969).zmin as relativesoilmoisture_zonalmin_1969,
       (relativesoilmoisture_1969).zmax as relativesoilmoisture_zonalmax_1969
,(relativesoilmoisture_1970).zmean as relativesoilmoisture_zonalmean_1970,
       (relativesoilmoisture_1970).zmin as relativesoilmoisture_zonalmin_1970,
       (relativesoilmoisture_1970).zmax as relativesoilmoisture_zonalmax_1970
,(relativesoilmoisture_1971).zmean as relativesoilmoisture_zonalmean_1971,
       (relativesoilmoisture_1971).zmin as relativesoilmoisture_zonalmin_1971,
       (relativesoilmoisture_1971).zmax as relativesoilmoisture_zonalmax_1971
,(relativesoilmoisture_1972).zmean as relativesoilmoisture_zonalmean_1972,
       (relativesoilmoisture_1972).zmin as relativesoilmoisture_zonalmin_1972,
       (relativesoilmoisture_1972).zmax as relativesoilmoisture_zonalmax_1972
,(relativesoilmoisture_1973).zmean as relativesoilmoisture_zonalmean_1973,
       (relativesoilmoisture_1973).zmin as relativesoilmoisture_zonalmin_1973,
       (relativesoilmoisture_1973).zmax as relativesoilmoisture_zonalmax_1973
,(relativesoilmoisture_1974).zmean as relativesoilmoisture_zonalmean_1974,
       (relativesoilmoisture_1974).zmin as relativesoilmoisture_zonalmin_1974,
       (relativesoilmoisture_1974).zmax as relativesoilmoisture_zonalmax_1974
,(relativesoilmoisture_1975).zmean as relativesoilmoisture_zonalmean_1975,
       (relativesoilmoisture_1975).zmin as relativesoilmoisture_zonalmin_1975,
       (relativesoilmoisture_1975).zmax as relativesoilmoisture_zonalmax_1975
,(relativesoilmoisture_1976).zmean as relativesoilmoisture_zonalmean_1976,
       (relativesoilmoisture_1976).zmin as relativesoilmoisture_zonalmin_1976,
       (relativesoilmoisture_1976).zmax as relativesoilmoisture_zonalmax_1976
,(relativesoilmoisture_1977).zmean as relativesoilmoisture_zonalmean_1977,
       (relativesoilmoisture_1977).zmin as relativesoilmoisture_zonalmin_1977,
       (relativesoilmoisture_1977).zmax as relativesoilmoisture_zonalmax_1977
,(relativesoilmoisture_1978).zmean as relativesoilmoisture_zonalmean_1978,
       (relativesoilmoisture_1978).zmin as relativesoilmoisture_zonalmin_1978,
       (relativesoilmoisture_1978).zmax as relativesoilmoisture_zonalmax_1978
,(relativesoilmoisture_1979).zmean as relativesoilmoisture_zonalmean_1979,
       (relativesoilmoisture_1979).zmin as relativesoilmoisture_zonalmin_1979,
       (relativesoilmoisture_1979).zmax as relativesoilmoisture_zonalmax_1979
,(relativesoilmoisture_1980).zmean as relativesoilmoisture_zonalmean_1980,
       (relativesoilmoisture_1980).zmin as relativesoilmoisture_zonalmin_1980,
       (relativesoilmoisture_1980).zmax as relativesoilmoisture_zonalmax_1980
,(relativesoilmoisture_1981).zmean as relativesoilmoisture_zonalmean_1981,
       (relativesoilmoisture_1981).zmin as relativesoilmoisture_zonalmin_1981,
       (relativesoilmoisture_1981).zmax as relativesoilmoisture_zonalmax_1981
,(relativesoilmoisture_1982).zmean as relativesoilmoisture_zonalmean_1982,
       (relativesoilmoisture_1982).zmin as relativesoilmoisture_zonalmin_1982,
       (relativesoilmoisture_1982).zmax as relativesoilmoisture_zonalmax_1982
,(relativesoilmoisture_1983).zmean as relativesoilmoisture_zonalmean_1983,
       (relativesoilmoisture_1983).zmin as relativesoilmoisture_zonalmin_1983,
       (relativesoilmoisture_1983).zmax as relativesoilmoisture_zonalmax_1983
,(relativesoilmoisture_1984).zmean as relativesoilmoisture_zonalmean_1984,
       (relativesoilmoisture_1984).zmin as relativesoilmoisture_zonalmin_1984,
       (relativesoilmoisture_1984).zmax as relativesoilmoisture_zonalmax_1984
,(relativesoilmoisture_1985).zmean as relativesoilmoisture_zonalmean_1985,
       (relativesoilmoisture_1985).zmin as relativesoilmoisture_zonalmin_1985,
       (relativesoilmoisture_1985).zmax as relativesoilmoisture_zonalmax_1985
,(relativesoilmoisture_1986).zmean as relativesoilmoisture_zonalmean_1986,
       (relativesoilmoisture_1986).zmin as relativesoilmoisture_zonalmin_1986,
       (relativesoilmoisture_1986).zmax as relativesoilmoisture_zonalmax_1986
,(relativesoilmoisture_1987).zmean as relativesoilmoisture_zonalmean_1987,
       (relativesoilmoisture_1987).zmin as relativesoilmoisture_zonalmin_1987,
       (relativesoilmoisture_1987).zmax as relativesoilmoisture_zonalmax_1987
,(relativesoilmoisture_1988).zmean as relativesoilmoisture_zonalmean_1988,
       (relativesoilmoisture_1988).zmin as relativesoilmoisture_zonalmin_1988,
       (relativesoilmoisture_1988).zmax as relativesoilmoisture_zonalmax_1988
,(relativesoilmoisture_1989).zmean as relativesoilmoisture_zonalmean_1989,
       (relativesoilmoisture_1989).zmin as relativesoilmoisture_zonalmin_1989,
       (relativesoilmoisture_1989).zmax as relativesoilmoisture_zonalmax_1989
,(relativesoilmoisture_1990).zmean as relativesoilmoisture_zonalmean_1990,
       (relativesoilmoisture_1990).zmin as relativesoilmoisture_zonalmin_1990,
       (relativesoilmoisture_1990).zmax as relativesoilmoisture_zonalmax_1990
,(relativesoilmoisture_1991).zmean as relativesoilmoisture_zonalmean_1991,
       (relativesoilmoisture_1991).zmin as relativesoilmoisture_zonalmin_1991,
       (relativesoilmoisture_1991).zmax as relativesoilmoisture_zonalmax_1991
,(relativesoilmoisture_1992).zmean as relativesoilmoisture_zonalmean_1992,
       (relativesoilmoisture_1992).zmin as relativesoilmoisture_zonalmin_1992,
       (relativesoilmoisture_1992).zmax as relativesoilmoisture_zonalmax_1992
,(relativesoilmoisture_1993).zmean as relativesoilmoisture_zonalmean_1993,
       (relativesoilmoisture_1993).zmin as relativesoilmoisture_zonalmin_1993,
       (relativesoilmoisture_1993).zmax as relativesoilmoisture_zonalmax_1993
,(relativesoilmoisture_1994).zmean as relativesoilmoisture_zonalmean_1994,
       (relativesoilmoisture_1994).zmin as relativesoilmoisture_zonalmin_1994,
       (relativesoilmoisture_1994).zmax as relativesoilmoisture_zonalmax_1994
,(relativesoilmoisture_1995).zmean as relativesoilmoisture_zonalmean_1995,
       (relativesoilmoisture_1995).zmin as relativesoilmoisture_zonalmin_1995,
       (relativesoilmoisture_1995).zmax as relativesoilmoisture_zonalmax_1995
,(relativesoilmoisture_1996).zmean as relativesoilmoisture_zonalmean_1996,
       (relativesoilmoisture_1996).zmin as relativesoilmoisture_zonalmin_1996,
       (relativesoilmoisture_1996).zmax as relativesoilmoisture_zonalmax_1996
,(relativesoilmoisture_1997).zmean as relativesoilmoisture_zonalmean_1997,
       (relativesoilmoisture_1997).zmin as relativesoilmoisture_zonalmin_1997,
       (relativesoilmoisture_1997).zmax as relativesoilmoisture_zonalmax_1997
,(relativesoilmoisture_1998).zmean as relativesoilmoisture_zonalmean_1998,
       (relativesoilmoisture_1998).zmin as relativesoilmoisture_zonalmin_1998,
       (relativesoilmoisture_1998).zmax as relativesoilmoisture_zonalmax_1998
,(relativesoilmoisture_1999).zmean as relativesoilmoisture_zonalmean_1999,
       (relativesoilmoisture_1999).zmin as relativesoilmoisture_zonalmin_1999,
       (relativesoilmoisture_1999).zmax as relativesoilmoisture_zonalmax_1999
,(relativesoilmoisture_2000).zmean as relativesoilmoisture_zonalmean_2000,
       (relativesoilmoisture_2000).zmin as relativesoilmoisture_zonalmin_2000,
       (relativesoilmoisture_2000).zmax as relativesoilmoisture_zonalmax_2000
,(relativesoilmoisture_2001).zmean as relativesoilmoisture_zonalmean_2001,
       (relativesoilmoisture_2001).zmin as relativesoilmoisture_zonalmin_2001,
       (relativesoilmoisture_2001).zmax as relativesoilmoisture_zonalmax_2001
,(relativesoilmoisture_2002).zmean as relativesoilmoisture_zonalmean_2002,
       (relativesoilmoisture_2002).zmin as relativesoilmoisture_zonalmin_2002,
       (relativesoilmoisture_2002).zmax as relativesoilmoisture_zonalmax_2002
,(relativesoilmoisture_2003).zmean as relativesoilmoisture_zonalmean_2003,
       (relativesoilmoisture_2003).zmin as relativesoilmoisture_zonalmin_2003,
       (relativesoilmoisture_2003).zmax as relativesoilmoisture_zonalmax_2003
,(relativesoilmoisture_2004).zmean as relativesoilmoisture_zonalmean_2004,
       (relativesoilmoisture_2004).zmin as relativesoilmoisture_zonalmin_2004,
       (relativesoilmoisture_2004).zmax as relativesoilmoisture_zonalmax_2004
,(relativesoilmoisture_2005).zmean as relativesoilmoisture_zonalmean_2005,
       (relativesoilmoisture_2005).zmin as relativesoilmoisture_zonalmin_2005,
       (relativesoilmoisture_2005).zmax as relativesoilmoisture_zonalmax_2005
,(relativesoilmoisture_2006).zmean as relativesoilmoisture_zonalmean_2006,
       (relativesoilmoisture_2006).zmin as relativesoilmoisture_zonalmin_2006,
       (relativesoilmoisture_2006).zmax as relativesoilmoisture_zonalmax_2006
,(relativesoilmoisture_2007).zmean as relativesoilmoisture_zonalmean_2007,
       (relativesoilmoisture_2007).zmin as relativesoilmoisture_zonalmin_2007,
       (relativesoilmoisture_2007).zmax as relativesoilmoisture_zonalmax_2007
,(relativesoilmoisture_2008).zmean as relativesoilmoisture_zonalmean_2008,
       (relativesoilmoisture_2008).zmin as relativesoilmoisture_zonalmin_2008,
       (relativesoilmoisture_2008).zmax as relativesoilmoisture_zonalmax_2008
,(relativesoilmoisture_2009).zmean as relativesoilmoisture_zonalmean_2009,
       (relativesoilmoisture_2009).zmin as relativesoilmoisture_zonalmin_2009,
       (relativesoilmoisture_2009).zmax as relativesoilmoisture_zonalmax_2009
,(relativesoilmoisture_2010).zmean as relativesoilmoisture_zonalmean_2010,
       (relativesoilmoisture_2010).zmin as relativesoilmoisture_zonalmin_2010,
       (relativesoilmoisture_2010).zmax as relativesoilmoisture_zonalmax_2010
,(relativesoilmoisture_2011).zmean as relativesoilmoisture_zonalmean_2011,
       (relativesoilmoisture_2011).zmin as relativesoilmoisture_zonalmin_2011,
       (relativesoilmoisture_2011).zmax as relativesoilmoisture_zonalmax_2011
,(relativesoilmoisture_2012).zmean as relativesoilmoisture_zonalmean_2012,
       (relativesoilmoisture_2012).zmin as relativesoilmoisture_zonalmin_2012,
       (relativesoilmoisture_2012).zmax as relativesoilmoisture_zonalmax_2012
,(relativesoilmoisture_2013).zmean as relativesoilmoisture_zonalmean_2013,
       (relativesoilmoisture_2013).zmin as relativesoilmoisture_zonalmin_2013,
       (relativesoilmoisture_2013).zmax as relativesoilmoisture_zonalmax_2013
,(relativesoilmoisture_2014).zmean as relativesoilmoisture_zonalmean_2014,
       (relativesoilmoisture_2014).zmin as relativesoilmoisture_zonalmin_2014,
       (relativesoilmoisture_2014).zmax as relativesoilmoisture_zonalmax_2014
,(relativesoilmoisture_2015).zmean as relativesoilmoisture_zonalmean_2015,
       (relativesoilmoisture_2015).zmin as relativesoilmoisture_zonalmin_2015,
       (relativesoilmoisture_2015).zmax as relativesoilmoisture_zonalmax_2015
,(relativesoilmoisture_2016).zmean as relativesoilmoisture_zonalmean_2016,
       (relativesoilmoisture_2016).zmin as relativesoilmoisture_zonalmin_2016,
       (relativesoilmoisture_2016).zmax as relativesoilmoisture_zonalmax_2016
,(relativesoilmoisture_2017).zmean as relativesoilmoisture_zonalmean_2017,
       (relativesoilmoisture_2017).zmin as relativesoilmoisture_zonalmin_2017,
       (relativesoilmoisture_2017).zmax as relativesoilmoisture_zonalmax_2017
,(relativesoilmoisture_2018).zmean as relativesoilmoisture_zonalmean_2018,
       (relativesoilmoisture_2018).zmin as relativesoilmoisture_zonalmin_2018,
       (relativesoilmoisture_2018).zmax as relativesoilmoisture_zonalmax_2018
,(relativesoilmoisture_2019).zmean as relativesoilmoisture_zonalmean_2019,
       (relativesoilmoisture_2019).zmin as relativesoilmoisture_zonalmin_2019,
       (relativesoilmoisture_2019).zmax as relativesoilmoisture_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "relativesoilmoisture_country_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, relativesoilmoisture_1958 zonaloutput,
relativesoilmoisture_1959 zonaloutput,
relativesoilmoisture_1960 zonaloutput,
relativesoilmoisture_1961 zonaloutput,
relativesoilmoisture_1962 zonaloutput,
relativesoilmoisture_1963 zonaloutput,
relativesoilmoisture_1964 zonaloutput,
relativesoilmoisture_1965 zonaloutput,
relativesoilmoisture_1966 zonaloutput,
relativesoilmoisture_1967 zonaloutput,
relativesoilmoisture_1968 zonaloutput,
relativesoilmoisture_1969 zonaloutput,
relativesoilmoisture_1970 zonaloutput,
relativesoilmoisture_1971 zonaloutput,
relativesoilmoisture_1972 zonaloutput,
relativesoilmoisture_1973 zonaloutput,
relativesoilmoisture_1974 zonaloutput,
relativesoilmoisture_1975 zonaloutput,
relativesoilmoisture_1976 zonaloutput,
relativesoilmoisture_1977 zonaloutput,
relativesoilmoisture_1978 zonaloutput,
relativesoilmoisture_1979 zonaloutput,
relativesoilmoisture_1980 zonaloutput,
relativesoilmoisture_1981 zonaloutput,
relativesoilmoisture_1982 zonaloutput,
relativesoilmoisture_1983 zonaloutput,
relativesoilmoisture_1984 zonaloutput,
relativesoilmoisture_1985 zonaloutput,
relativesoilmoisture_1986 zonaloutput,
relativesoilmoisture_1987 zonaloutput,
relativesoilmoisture_1988 zonaloutput,
relativesoilmoisture_1989 zonaloutput,
relativesoilmoisture_1990 zonaloutput,
relativesoilmoisture_1991 zonaloutput,
relativesoilmoisture_1992 zonaloutput,
relativesoilmoisture_1993 zonaloutput,
relativesoilmoisture_1994 zonaloutput,
relativesoilmoisture_1995 zonaloutput,
relativesoilmoisture_1996 zonaloutput,
relativesoilmoisture_1997 zonaloutput,
relativesoilmoisture_1998 zonaloutput,
relativesoilmoisture_1999 zonaloutput,
relativesoilmoisture_2000 zonaloutput,
relativesoilmoisture_2001 zonaloutput,
relativesoilmoisture_2002 zonaloutput,
relativesoilmoisture_2003 zonaloutput,
relativesoilmoisture_2004 zonaloutput,
relativesoilmoisture_2005 zonaloutput,
relativesoilmoisture_2006 zonaloutput,
relativesoilmoisture_2007 zonaloutput,
relativesoilmoisture_2008 zonaloutput,
relativesoilmoisture_2009 zonaloutput,
relativesoilmoisture_2010 zonaloutput,
relativesoilmoisture_2011 zonaloutput,
relativesoilmoisture_2012 zonaloutput,
relativesoilmoisture_2013 zonaloutput,
relativesoilmoisture_2014 zonaloutput,
relativesoilmoisture_2015 zonaloutput,
relativesoilmoisture_2016 zonaloutput,
relativesoilmoisture_2017 zonaloutput,
relativesoilmoisture_2018 zonaloutput,
relativesoilmoisture_2019 zonaloutput) INNER JOIN faogaul_country_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_rainpet_country_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_rainpet_country_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (rainpet_1958).zmean as rainpet_zonalmean_1958,
       (rainpet_1958).zmin as rainpet_zonalmin_1958,
       (rainpet_1958).zmax as rainpet_zonalmax_1958
,(rainpet_1959).zmean as rainpet_zonalmean_1959,
       (rainpet_1959).zmin as rainpet_zonalmin_1959,
       (rainpet_1959).zmax as rainpet_zonalmax_1959
,(rainpet_1960).zmean as rainpet_zonalmean_1960,
       (rainpet_1960).zmin as rainpet_zonalmin_1960,
       (rainpet_1960).zmax as rainpet_zonalmax_1960
,(rainpet_1961).zmean as rainpet_zonalmean_1961,
       (rainpet_1961).zmin as rainpet_zonalmin_1961,
       (rainpet_1961).zmax as rainpet_zonalmax_1961
,(rainpet_1962).zmean as rainpet_zonalmean_1962,
       (rainpet_1962).zmin as rainpet_zonalmin_1962,
       (rainpet_1962).zmax as rainpet_zonalmax_1962
,(rainpet_1963).zmean as rainpet_zonalmean_1963,
       (rainpet_1963).zmin as rainpet_zonalmin_1963,
       (rainpet_1963).zmax as rainpet_zonalmax_1963
,(rainpet_1964).zmean as rainpet_zonalmean_1964,
       (rainpet_1964).zmin as rainpet_zonalmin_1964,
       (rainpet_1964).zmax as rainpet_zonalmax_1964
,(rainpet_1965).zmean as rainpet_zonalmean_1965,
       (rainpet_1965).zmin as rainpet_zonalmin_1965,
       (rainpet_1965).zmax as rainpet_zonalmax_1965
,(rainpet_1966).zmean as rainpet_zonalmean_1966,
       (rainpet_1966).zmin as rainpet_zonalmin_1966,
       (rainpet_1966).zmax as rainpet_zonalmax_1966
,(rainpet_1967).zmean as rainpet_zonalmean_1967,
       (rainpet_1967).zmin as rainpet_zonalmin_1967,
       (rainpet_1967).zmax as rainpet_zonalmax_1967
,(rainpet_1968).zmean as rainpet_zonalmean_1968,
       (rainpet_1968).zmin as rainpet_zonalmin_1968,
       (rainpet_1968).zmax as rainpet_zonalmax_1968
,(rainpet_1969).zmean as rainpet_zonalmean_1969,
       (rainpet_1969).zmin as rainpet_zonalmin_1969,
       (rainpet_1969).zmax as rainpet_zonalmax_1969
,(rainpet_1970).zmean as rainpet_zonalmean_1970,
       (rainpet_1970).zmin as rainpet_zonalmin_1970,
       (rainpet_1970).zmax as rainpet_zonalmax_1970
,(rainpet_1971).zmean as rainpet_zonalmean_1971,
       (rainpet_1971).zmin as rainpet_zonalmin_1971,
       (rainpet_1971).zmax as rainpet_zonalmax_1971
,(rainpet_1972).zmean as rainpet_zonalmean_1972,
       (rainpet_1972).zmin as rainpet_zonalmin_1972,
       (rainpet_1972).zmax as rainpet_zonalmax_1972
,(rainpet_1973).zmean as rainpet_zonalmean_1973,
       (rainpet_1973).zmin as rainpet_zonalmin_1973,
       (rainpet_1973).zmax as rainpet_zonalmax_1973
,(rainpet_1974).zmean as rainpet_zonalmean_1974,
       (rainpet_1974).zmin as rainpet_zonalmin_1974,
       (rainpet_1974).zmax as rainpet_zonalmax_1974
,(rainpet_1975).zmean as rainpet_zonalmean_1975,
       (rainpet_1975).zmin as rainpet_zonalmin_1975,
       (rainpet_1975).zmax as rainpet_zonalmax_1975
,(rainpet_1976).zmean as rainpet_zonalmean_1976,
       (rainpet_1976).zmin as rainpet_zonalmin_1976,
       (rainpet_1976).zmax as rainpet_zonalmax_1976
,(rainpet_1977).zmean as rainpet_zonalmean_1977,
       (rainpet_1977).zmin as rainpet_zonalmin_1977,
       (rainpet_1977).zmax as rainpet_zonalmax_1977
,(rainpet_1978).zmean as rainpet_zonalmean_1978,
       (rainpet_1978).zmin as rainpet_zonalmin_1978,
       (rainpet_1978).zmax as rainpet_zonalmax_1978
,(rainpet_1979).zmean as rainpet_zonalmean_1979,
       (rainpet_1979).zmin as rainpet_zonalmin_1979,
       (rainpet_1979).zmax as rainpet_zonalmax_1979
,(rainpet_1980).zmean as rainpet_zonalmean_1980,
       (rainpet_1980).zmin as rainpet_zonalmin_1980,
       (rainpet_1980).zmax as rainpet_zonalmax_1980
,(rainpet_1981).zmean as rainpet_zonalmean_1981,
       (rainpet_1981).zmin as rainpet_zonalmin_1981,
       (rainpet_1981).zmax as rainpet_zonalmax_1981
,(rainpet_1982).zmean as rainpet_zonalmean_1982,
       (rainpet_1982).zmin as rainpet_zonalmin_1982,
       (rainpet_1982).zmax as rainpet_zonalmax_1982
,(rainpet_1983).zmean as rainpet_zonalmean_1983,
       (rainpet_1983).zmin as rainpet_zonalmin_1983,
       (rainpet_1983).zmax as rainpet_zonalmax_1983
,(rainpet_1984).zmean as rainpet_zonalmean_1984,
       (rainpet_1984).zmin as rainpet_zonalmin_1984,
       (rainpet_1984).zmax as rainpet_zonalmax_1984
,(rainpet_1985).zmean as rainpet_zonalmean_1985,
       (rainpet_1985).zmin as rainpet_zonalmin_1985,
       (rainpet_1985).zmax as rainpet_zonalmax_1985
,(rainpet_1986).zmean as rainpet_zonalmean_1986,
       (rainpet_1986).zmin as rainpet_zonalmin_1986,
       (rainpet_1986).zmax as rainpet_zonalmax_1986
,(rainpet_1987).zmean as rainpet_zonalmean_1987,
       (rainpet_1987).zmin as rainpet_zonalmin_1987,
       (rainpet_1987).zmax as rainpet_zonalmax_1987
,(rainpet_1988).zmean as rainpet_zonalmean_1988,
       (rainpet_1988).zmin as rainpet_zonalmin_1988,
       (rainpet_1988).zmax as rainpet_zonalmax_1988
,(rainpet_1989).zmean as rainpet_zonalmean_1989,
       (rainpet_1989).zmin as rainpet_zonalmin_1989,
       (rainpet_1989).zmax as rainpet_zonalmax_1989
,(rainpet_1990).zmean as rainpet_zonalmean_1990,
       (rainpet_1990).zmin as rainpet_zonalmin_1990,
       (rainpet_1990).zmax as rainpet_zonalmax_1990
,(rainpet_1991).zmean as rainpet_zonalmean_1991,
       (rainpet_1991).zmin as rainpet_zonalmin_1991,
       (rainpet_1991).zmax as rainpet_zonalmax_1991
,(rainpet_1992).zmean as rainpet_zonalmean_1992,
       (rainpet_1992).zmin as rainpet_zonalmin_1992,
       (rainpet_1992).zmax as rainpet_zonalmax_1992
,(rainpet_1993).zmean as rainpet_zonalmean_1993,
       (rainpet_1993).zmin as rainpet_zonalmin_1993,
       (rainpet_1993).zmax as rainpet_zonalmax_1993
,(rainpet_1994).zmean as rainpet_zonalmean_1994,
       (rainpet_1994).zmin as rainpet_zonalmin_1994,
       (rainpet_1994).zmax as rainpet_zonalmax_1994
,(rainpet_1995).zmean as rainpet_zonalmean_1995,
       (rainpet_1995).zmin as rainpet_zonalmin_1995,
       (rainpet_1995).zmax as rainpet_zonalmax_1995
,(rainpet_1996).zmean as rainpet_zonalmean_1996,
       (rainpet_1996).zmin as rainpet_zonalmin_1996,
       (rainpet_1996).zmax as rainpet_zonalmax_1996
,(rainpet_1997).zmean as rainpet_zonalmean_1997,
       (rainpet_1997).zmin as rainpet_zonalmin_1997,
       (rainpet_1997).zmax as rainpet_zonalmax_1997
,(rainpet_1998).zmean as rainpet_zonalmean_1998,
       (rainpet_1998).zmin as rainpet_zonalmin_1998,
       (rainpet_1998).zmax as rainpet_zonalmax_1998
,(rainpet_1999).zmean as rainpet_zonalmean_1999,
       (rainpet_1999).zmin as rainpet_zonalmin_1999,
       (rainpet_1999).zmax as rainpet_zonalmax_1999
,(rainpet_2000).zmean as rainpet_zonalmean_2000,
       (rainpet_2000).zmin as rainpet_zonalmin_2000,
       (rainpet_2000).zmax as rainpet_zonalmax_2000
,(rainpet_2001).zmean as rainpet_zonalmean_2001,
       (rainpet_2001).zmin as rainpet_zonalmin_2001,
       (rainpet_2001).zmax as rainpet_zonalmax_2001
,(rainpet_2002).zmean as rainpet_zonalmean_2002,
       (rainpet_2002).zmin as rainpet_zonalmin_2002,
       (rainpet_2002).zmax as rainpet_zonalmax_2002
,(rainpet_2003).zmean as rainpet_zonalmean_2003,
       (rainpet_2003).zmin as rainpet_zonalmin_2003,
       (rainpet_2003).zmax as rainpet_zonalmax_2003
,(rainpet_2004).zmean as rainpet_zonalmean_2004,
       (rainpet_2004).zmin as rainpet_zonalmin_2004,
       (rainpet_2004).zmax as rainpet_zonalmax_2004
,(rainpet_2005).zmean as rainpet_zonalmean_2005,
       (rainpet_2005).zmin as rainpet_zonalmin_2005,
       (rainpet_2005).zmax as rainpet_zonalmax_2005
,(rainpet_2006).zmean as rainpet_zonalmean_2006,
       (rainpet_2006).zmin as rainpet_zonalmin_2006,
       (rainpet_2006).zmax as rainpet_zonalmax_2006
,(rainpet_2007).zmean as rainpet_zonalmean_2007,
       (rainpet_2007).zmin as rainpet_zonalmin_2007,
       (rainpet_2007).zmax as rainpet_zonalmax_2007
,(rainpet_2008).zmean as rainpet_zonalmean_2008,
       (rainpet_2008).zmin as rainpet_zonalmin_2008,
       (rainpet_2008).zmax as rainpet_zonalmax_2008
,(rainpet_2009).zmean as rainpet_zonalmean_2009,
       (rainpet_2009).zmin as rainpet_zonalmin_2009,
       (rainpet_2009).zmax as rainpet_zonalmax_2009
,(rainpet_2010).zmean as rainpet_zonalmean_2010,
       (rainpet_2010).zmin as rainpet_zonalmin_2010,
       (rainpet_2010).zmax as rainpet_zonalmax_2010
,(rainpet_2011).zmean as rainpet_zonalmean_2011,
       (rainpet_2011).zmin as rainpet_zonalmin_2011,
       (rainpet_2011).zmax as rainpet_zonalmax_2011
,(rainpet_2012).zmean as rainpet_zonalmean_2012,
       (rainpet_2012).zmin as rainpet_zonalmin_2012,
       (rainpet_2012).zmax as rainpet_zonalmax_2012
,(rainpet_2013).zmean as rainpet_zonalmean_2013,
       (rainpet_2013).zmin as rainpet_zonalmin_2013,
       (rainpet_2013).zmax as rainpet_zonalmax_2013
,(rainpet_2014).zmean as rainpet_zonalmean_2014,
       (rainpet_2014).zmin as rainpet_zonalmin_2014,
       (rainpet_2014).zmax as rainpet_zonalmax_2014
,(rainpet_2015).zmean as rainpet_zonalmean_2015,
       (rainpet_2015).zmin as rainpet_zonalmin_2015,
       (rainpet_2015).zmax as rainpet_zonalmax_2015
,(rainpet_2016).zmean as rainpet_zonalmean_2016,
       (rainpet_2016).zmin as rainpet_zonalmin_2016,
       (rainpet_2016).zmax as rainpet_zonalmax_2016
,(rainpet_2017).zmean as rainpet_zonalmean_2017,
       (rainpet_2017).zmin as rainpet_zonalmin_2017,
       (rainpet_2017).zmax as rainpet_zonalmax_2017
,(rainpet_2018).zmean as rainpet_zonalmean_2018,
       (rainpet_2018).zmin as rainpet_zonalmin_2018,
       (rainpet_2018).zmax as rainpet_zonalmax_2018
,(rainpet_2019).zmean as rainpet_zonalmean_2019,
       (rainpet_2019).zmin as rainpet_zonalmin_2019,
       (rainpet_2019).zmax as rainpet_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "rainpet_country_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, rainpet_1958 zonaloutput,
rainpet_1959 zonaloutput,
rainpet_1960 zonaloutput,
rainpet_1961 zonaloutput,
rainpet_1962 zonaloutput,
rainpet_1963 zonaloutput,
rainpet_1964 zonaloutput,
rainpet_1965 zonaloutput,
rainpet_1966 zonaloutput,
rainpet_1967 zonaloutput,
rainpet_1968 zonaloutput,
rainpet_1969 zonaloutput,
rainpet_1970 zonaloutput,
rainpet_1971 zonaloutput,
rainpet_1972 zonaloutput,
rainpet_1973 zonaloutput,
rainpet_1974 zonaloutput,
rainpet_1975 zonaloutput,
rainpet_1976 zonaloutput,
rainpet_1977 zonaloutput,
rainpet_1978 zonaloutput,
rainpet_1979 zonaloutput,
rainpet_1980 zonaloutput,
rainpet_1981 zonaloutput,
rainpet_1982 zonaloutput,
rainpet_1983 zonaloutput,
rainpet_1984 zonaloutput,
rainpet_1985 zonaloutput,
rainpet_1986 zonaloutput,
rainpet_1987 zonaloutput,
rainpet_1988 zonaloutput,
rainpet_1989 zonaloutput,
rainpet_1990 zonaloutput,
rainpet_1991 zonaloutput,
rainpet_1992 zonaloutput,
rainpet_1993 zonaloutput,
rainpet_1994 zonaloutput,
rainpet_1995 zonaloutput,
rainpet_1996 zonaloutput,
rainpet_1997 zonaloutput,
rainpet_1998 zonaloutput,
rainpet_1999 zonaloutput,
rainpet_2000 zonaloutput,
rainpet_2001 zonaloutput,
rainpet_2002 zonaloutput,
rainpet_2003 zonaloutput,
rainpet_2004 zonaloutput,
rainpet_2005 zonaloutput,
rainpet_2006 zonaloutput,
rainpet_2007 zonaloutput,
rainpet_2008 zonaloutput,
rainpet_2009 zonaloutput,
rainpet_2010 zonaloutput,
rainpet_2011 zonaloutput,
rainpet_2012 zonaloutput,
rainpet_2013 zonaloutput,
rainpet_2014 zonaloutput,
rainpet_2015 zonaloutput,
rainpet_2016 zonaloutput,
rainpet_2017 zonaloutput,
rainpet_2018 zonaloutput,
rainpet_2019 zonaloutput) INNER JOIN faogaul_country_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_snowpack_country_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_snowpack_country_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (snowpack_1958).zmean as snowpack_zonalmean_1958,
       (snowpack_1958).zmin as snowpack_zonalmin_1958,
       (snowpack_1958).zmax as snowpack_zonalmax_1958
,(snowpack_1959).zmean as snowpack_zonalmean_1959,
       (snowpack_1959).zmin as snowpack_zonalmin_1959,
       (snowpack_1959).zmax as snowpack_zonalmax_1959
,(snowpack_1960).zmean as snowpack_zonalmean_1960,
       (snowpack_1960).zmin as snowpack_zonalmin_1960,
       (snowpack_1960).zmax as snowpack_zonalmax_1960
,(snowpack_1961).zmean as snowpack_zonalmean_1961,
       (snowpack_1961).zmin as snowpack_zonalmin_1961,
       (snowpack_1961).zmax as snowpack_zonalmax_1961
,(snowpack_1962).zmean as snowpack_zonalmean_1962,
       (snowpack_1962).zmin as snowpack_zonalmin_1962,
       (snowpack_1962).zmax as snowpack_zonalmax_1962
,(snowpack_1963).zmean as snowpack_zonalmean_1963,
       (snowpack_1963).zmin as snowpack_zonalmin_1963,
       (snowpack_1963).zmax as snowpack_zonalmax_1963
,(snowpack_1964).zmean as snowpack_zonalmean_1964,
       (snowpack_1964).zmin as snowpack_zonalmin_1964,
       (snowpack_1964).zmax as snowpack_zonalmax_1964
,(snowpack_1965).zmean as snowpack_zonalmean_1965,
       (snowpack_1965).zmin as snowpack_zonalmin_1965,
       (snowpack_1965).zmax as snowpack_zonalmax_1965
,(snowpack_1966).zmean as snowpack_zonalmean_1966,
       (snowpack_1966).zmin as snowpack_zonalmin_1966,
       (snowpack_1966).zmax as snowpack_zonalmax_1966
,(snowpack_1967).zmean as snowpack_zonalmean_1967,
       (snowpack_1967).zmin as snowpack_zonalmin_1967,
       (snowpack_1967).zmax as snowpack_zonalmax_1967
,(snowpack_1968).zmean as snowpack_zonalmean_1968,
       (snowpack_1968).zmin as snowpack_zonalmin_1968,
       (snowpack_1968).zmax as snowpack_zonalmax_1968
,(snowpack_1969).zmean as snowpack_zonalmean_1969,
       (snowpack_1969).zmin as snowpack_zonalmin_1969,
       (snowpack_1969).zmax as snowpack_zonalmax_1969
,(snowpack_1970).zmean as snowpack_zonalmean_1970,
       (snowpack_1970).zmin as snowpack_zonalmin_1970,
       (snowpack_1970).zmax as snowpack_zonalmax_1970
,(snowpack_1971).zmean as snowpack_zonalmean_1971,
       (snowpack_1971).zmin as snowpack_zonalmin_1971,
       (snowpack_1971).zmax as snowpack_zonalmax_1971
,(snowpack_1972).zmean as snowpack_zonalmean_1972,
       (snowpack_1972).zmin as snowpack_zonalmin_1972,
       (snowpack_1972).zmax as snowpack_zonalmax_1972
,(snowpack_1973).zmean as snowpack_zonalmean_1973,
       (snowpack_1973).zmin as snowpack_zonalmin_1973,
       (snowpack_1973).zmax as snowpack_zonalmax_1973
,(snowpack_1974).zmean as snowpack_zonalmean_1974,
       (snowpack_1974).zmin as snowpack_zonalmin_1974,
       (snowpack_1974).zmax as snowpack_zonalmax_1974
,(snowpack_1975).zmean as snowpack_zonalmean_1975,
       (snowpack_1975).zmin as snowpack_zonalmin_1975,
       (snowpack_1975).zmax as snowpack_zonalmax_1975
,(snowpack_1976).zmean as snowpack_zonalmean_1976,
       (snowpack_1976).zmin as snowpack_zonalmin_1976,
       (snowpack_1976).zmax as snowpack_zonalmax_1976
,(snowpack_1977).zmean as snowpack_zonalmean_1977,
       (snowpack_1977).zmin as snowpack_zonalmin_1977,
       (snowpack_1977).zmax as snowpack_zonalmax_1977
,(snowpack_1978).zmean as snowpack_zonalmean_1978,
       (snowpack_1978).zmin as snowpack_zonalmin_1978,
       (snowpack_1978).zmax as snowpack_zonalmax_1978
,(snowpack_1979).zmean as snowpack_zonalmean_1979,
       (snowpack_1979).zmin as snowpack_zonalmin_1979,
       (snowpack_1979).zmax as snowpack_zonalmax_1979
,(snowpack_1980).zmean as snowpack_zonalmean_1980,
       (snowpack_1980).zmin as snowpack_zonalmin_1980,
       (snowpack_1980).zmax as snowpack_zonalmax_1980
,(snowpack_1981).zmean as snowpack_zonalmean_1981,
       (snowpack_1981).zmin as snowpack_zonalmin_1981,
       (snowpack_1981).zmax as snowpack_zonalmax_1981
,(snowpack_1982).zmean as snowpack_zonalmean_1982,
       (snowpack_1982).zmin as snowpack_zonalmin_1982,
       (snowpack_1982).zmax as snowpack_zonalmax_1982
,(snowpack_1983).zmean as snowpack_zonalmean_1983,
       (snowpack_1983).zmin as snowpack_zonalmin_1983,
       (snowpack_1983).zmax as snowpack_zonalmax_1983
,(snowpack_1984).zmean as snowpack_zonalmean_1984,
       (snowpack_1984).zmin as snowpack_zonalmin_1984,
       (snowpack_1984).zmax as snowpack_zonalmax_1984
,(snowpack_1985).zmean as snowpack_zonalmean_1985,
       (snowpack_1985).zmin as snowpack_zonalmin_1985,
       (snowpack_1985).zmax as snowpack_zonalmax_1985
,(snowpack_1986).zmean as snowpack_zonalmean_1986,
       (snowpack_1986).zmin as snowpack_zonalmin_1986,
       (snowpack_1986).zmax as snowpack_zonalmax_1986
,(snowpack_1987).zmean as snowpack_zonalmean_1987,
       (snowpack_1987).zmin as snowpack_zonalmin_1987,
       (snowpack_1987).zmax as snowpack_zonalmax_1987
,(snowpack_1988).zmean as snowpack_zonalmean_1988,
       (snowpack_1988).zmin as snowpack_zonalmin_1988,
       (snowpack_1988).zmax as snowpack_zonalmax_1988
,(snowpack_1989).zmean as snowpack_zonalmean_1989,
       (snowpack_1989).zmin as snowpack_zonalmin_1989,
       (snowpack_1989).zmax as snowpack_zonalmax_1989
,(snowpack_1990).zmean as snowpack_zonalmean_1990,
       (snowpack_1990).zmin as snowpack_zonalmin_1990,
       (snowpack_1990).zmax as snowpack_zonalmax_1990
,(snowpack_1991).zmean as snowpack_zonalmean_1991,
       (snowpack_1991).zmin as snowpack_zonalmin_1991,
       (snowpack_1991).zmax as snowpack_zonalmax_1991
,(snowpack_1992).zmean as snowpack_zonalmean_1992,
       (snowpack_1992).zmin as snowpack_zonalmin_1992,
       (snowpack_1992).zmax as snowpack_zonalmax_1992
,(snowpack_1993).zmean as snowpack_zonalmean_1993,
       (snowpack_1993).zmin as snowpack_zonalmin_1993,
       (snowpack_1993).zmax as snowpack_zonalmax_1993
,(snowpack_1994).zmean as snowpack_zonalmean_1994,
       (snowpack_1994).zmin as snowpack_zonalmin_1994,
       (snowpack_1994).zmax as snowpack_zonalmax_1994
,(snowpack_1995).zmean as snowpack_zonalmean_1995,
       (snowpack_1995).zmin as snowpack_zonalmin_1995,
       (snowpack_1995).zmax as snowpack_zonalmax_1995
,(snowpack_1996).zmean as snowpack_zonalmean_1996,
       (snowpack_1996).zmin as snowpack_zonalmin_1996,
       (snowpack_1996).zmax as snowpack_zonalmax_1996
,(snowpack_1997).zmean as snowpack_zonalmean_1997,
       (snowpack_1997).zmin as snowpack_zonalmin_1997,
       (snowpack_1997).zmax as snowpack_zonalmax_1997
,(snowpack_1998).zmean as snowpack_zonalmean_1998,
       (snowpack_1998).zmin as snowpack_zonalmin_1998,
       (snowpack_1998).zmax as snowpack_zonalmax_1998
,(snowpack_1999).zmean as snowpack_zonalmean_1999,
       (snowpack_1999).zmin as snowpack_zonalmin_1999,
       (snowpack_1999).zmax as snowpack_zonalmax_1999
,(snowpack_2000).zmean as snowpack_zonalmean_2000,
       (snowpack_2000).zmin as snowpack_zonalmin_2000,
       (snowpack_2000).zmax as snowpack_zonalmax_2000
,(snowpack_2001).zmean as snowpack_zonalmean_2001,
       (snowpack_2001).zmin as snowpack_zonalmin_2001,
       (snowpack_2001).zmax as snowpack_zonalmax_2001
,(snowpack_2002).zmean as snowpack_zonalmean_2002,
       (snowpack_2002).zmin as snowpack_zonalmin_2002,
       (snowpack_2002).zmax as snowpack_zonalmax_2002
,(snowpack_2003).zmean as snowpack_zonalmean_2003,
       (snowpack_2003).zmin as snowpack_zonalmin_2003,
       (snowpack_2003).zmax as snowpack_zonalmax_2003
,(snowpack_2004).zmean as snowpack_zonalmean_2004,
       (snowpack_2004).zmin as snowpack_zonalmin_2004,
       (snowpack_2004).zmax as snowpack_zonalmax_2004
,(snowpack_2005).zmean as snowpack_zonalmean_2005,
       (snowpack_2005).zmin as snowpack_zonalmin_2005,
       (snowpack_2005).zmax as snowpack_zonalmax_2005
,(snowpack_2006).zmean as snowpack_zonalmean_2006,
       (snowpack_2006).zmin as snowpack_zonalmin_2006,
       (snowpack_2006).zmax as snowpack_zonalmax_2006
,(snowpack_2007).zmean as snowpack_zonalmean_2007,
       (snowpack_2007).zmin as snowpack_zonalmin_2007,
       (snowpack_2007).zmax as snowpack_zonalmax_2007
,(snowpack_2008).zmean as snowpack_zonalmean_2008,
       (snowpack_2008).zmin as snowpack_zonalmin_2008,
       (snowpack_2008).zmax as snowpack_zonalmax_2008
,(snowpack_2009).zmean as snowpack_zonalmean_2009,
       (snowpack_2009).zmin as snowpack_zonalmin_2009,
       (snowpack_2009).zmax as snowpack_zonalmax_2009
,(snowpack_2010).zmean as snowpack_zonalmean_2010,
       (snowpack_2010).zmin as snowpack_zonalmin_2010,
       (snowpack_2010).zmax as snowpack_zonalmax_2010
,(snowpack_2011).zmean as snowpack_zonalmean_2011,
       (snowpack_2011).zmin as snowpack_zonalmin_2011,
       (snowpack_2011).zmax as snowpack_zonalmax_2011
,(snowpack_2012).zmean as snowpack_zonalmean_2012,
       (snowpack_2012).zmin as snowpack_zonalmin_2012,
       (snowpack_2012).zmax as snowpack_zonalmax_2012
,(snowpack_2013).zmean as snowpack_zonalmean_2013,
       (snowpack_2013).zmin as snowpack_zonalmin_2013,
       (snowpack_2013).zmax as snowpack_zonalmax_2013
,(snowpack_2014).zmean as snowpack_zonalmean_2014,
       (snowpack_2014).zmin as snowpack_zonalmin_2014,
       (snowpack_2014).zmax as snowpack_zonalmax_2014
,(snowpack_2015).zmean as snowpack_zonalmean_2015,
       (snowpack_2015).zmin as snowpack_zonalmin_2015,
       (snowpack_2015).zmax as snowpack_zonalmax_2015
,(snowpack_2016).zmean as snowpack_zonalmean_2016,
       (snowpack_2016).zmin as snowpack_zonalmin_2016,
       (snowpack_2016).zmax as snowpack_zonalmax_2016
,(snowpack_2017).zmean as snowpack_zonalmean_2017,
       (snowpack_2017).zmin as snowpack_zonalmin_2017,
       (snowpack_2017).zmax as snowpack_zonalmax_2017
,(snowpack_2018).zmean as snowpack_zonalmean_2018,
       (snowpack_2018).zmin as snowpack_zonalmin_2018,
       (snowpack_2018).zmax as snowpack_zonalmax_2018
,(snowpack_2019).zmean as snowpack_zonalmean_2019,
       (snowpack_2019).zmin as snowpack_zonalmin_2019,
       (snowpack_2019).zmax as snowpack_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "snowpack_country_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, snowpack_1958 zonaloutput,
snowpack_1959 zonaloutput,
snowpack_1960 zonaloutput,
snowpack_1961 zonaloutput,
snowpack_1962 zonaloutput,
snowpack_1963 zonaloutput,
snowpack_1964 zonaloutput,
snowpack_1965 zonaloutput,
snowpack_1966 zonaloutput,
snowpack_1967 zonaloutput,
snowpack_1968 zonaloutput,
snowpack_1969 zonaloutput,
snowpack_1970 zonaloutput,
snowpack_1971 zonaloutput,
snowpack_1972 zonaloutput,
snowpack_1973 zonaloutput,
snowpack_1974 zonaloutput,
snowpack_1975 zonaloutput,
snowpack_1976 zonaloutput,
snowpack_1977 zonaloutput,
snowpack_1978 zonaloutput,
snowpack_1979 zonaloutput,
snowpack_1980 zonaloutput,
snowpack_1981 zonaloutput,
snowpack_1982 zonaloutput,
snowpack_1983 zonaloutput,
snowpack_1984 zonaloutput,
snowpack_1985 zonaloutput,
snowpack_1986 zonaloutput,
snowpack_1987 zonaloutput,
snowpack_1988 zonaloutput,
snowpack_1989 zonaloutput,
snowpack_1990 zonaloutput,
snowpack_1991 zonaloutput,
snowpack_1992 zonaloutput,
snowpack_1993 zonaloutput,
snowpack_1994 zonaloutput,
snowpack_1995 zonaloutput,
snowpack_1996 zonaloutput,
snowpack_1997 zonaloutput,
snowpack_1998 zonaloutput,
snowpack_1999 zonaloutput,
snowpack_2000 zonaloutput,
snowpack_2001 zonaloutput,
snowpack_2002 zonaloutput,
snowpack_2003 zonaloutput,
snowpack_2004 zonaloutput,
snowpack_2005 zonaloutput,
snowpack_2006 zonaloutput,
snowpack_2007 zonaloutput,
snowpack_2008 zonaloutput,
snowpack_2009 zonaloutput,
snowpack_2010 zonaloutput,
snowpack_2011 zonaloutput,
snowpack_2012 zonaloutput,
snowpack_2013 zonaloutput,
snowpack_2014 zonaloutput,
snowpack_2015 zonaloutput,
snowpack_2016 zonaloutput,
snowpack_2017 zonaloutput,
snowpack_2018 zonaloutput,
snowpack_2019 zonaloutput) INNER JOIN faogaul_country_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_runoff_country_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_runoff_country_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (runoff_1958).zmean as runoff_zonalmean_1958,
       (runoff_1958).zmin as runoff_zonalmin_1958,
       (runoff_1958).zmax as runoff_zonalmax_1958
,(runoff_1959).zmean as runoff_zonalmean_1959,
       (runoff_1959).zmin as runoff_zonalmin_1959,
       (runoff_1959).zmax as runoff_zonalmax_1959
,(runoff_1960).zmean as runoff_zonalmean_1960,
       (runoff_1960).zmin as runoff_zonalmin_1960,
       (runoff_1960).zmax as runoff_zonalmax_1960
,(runoff_1961).zmean as runoff_zonalmean_1961,
       (runoff_1961).zmin as runoff_zonalmin_1961,
       (runoff_1961).zmax as runoff_zonalmax_1961
,(runoff_1962).zmean as runoff_zonalmean_1962,
       (runoff_1962).zmin as runoff_zonalmin_1962,
       (runoff_1962).zmax as runoff_zonalmax_1962
,(runoff_1963).zmean as runoff_zonalmean_1963,
       (runoff_1963).zmin as runoff_zonalmin_1963,
       (runoff_1963).zmax as runoff_zonalmax_1963
,(runoff_1964).zmean as runoff_zonalmean_1964,
       (runoff_1964).zmin as runoff_zonalmin_1964,
       (runoff_1964).zmax as runoff_zonalmax_1964
,(runoff_1965).zmean as runoff_zonalmean_1965,
       (runoff_1965).zmin as runoff_zonalmin_1965,
       (runoff_1965).zmax as runoff_zonalmax_1965
,(runoff_1966).zmean as runoff_zonalmean_1966,
       (runoff_1966).zmin as runoff_zonalmin_1966,
       (runoff_1966).zmax as runoff_zonalmax_1966
,(runoff_1967).zmean as runoff_zonalmean_1967,
       (runoff_1967).zmin as runoff_zonalmin_1967,
       (runoff_1967).zmax as runoff_zonalmax_1967
,(runoff_1968).zmean as runoff_zonalmean_1968,
       (runoff_1968).zmin as runoff_zonalmin_1968,
       (runoff_1968).zmax as runoff_zonalmax_1968
,(runoff_1969).zmean as runoff_zonalmean_1969,
       (runoff_1969).zmin as runoff_zonalmin_1969,
       (runoff_1969).zmax as runoff_zonalmax_1969
,(runoff_1970).zmean as runoff_zonalmean_1970,
       (runoff_1970).zmin as runoff_zonalmin_1970,
       (runoff_1970).zmax as runoff_zonalmax_1970
,(runoff_1971).zmean as runoff_zonalmean_1971,
       (runoff_1971).zmin as runoff_zonalmin_1971,
       (runoff_1971).zmax as runoff_zonalmax_1971
,(runoff_1972).zmean as runoff_zonalmean_1972,
       (runoff_1972).zmin as runoff_zonalmin_1972,
       (runoff_1972).zmax as runoff_zonalmax_1972
,(runoff_1973).zmean as runoff_zonalmean_1973,
       (runoff_1973).zmin as runoff_zonalmin_1973,
       (runoff_1973).zmax as runoff_zonalmax_1973
,(runoff_1974).zmean as runoff_zonalmean_1974,
       (runoff_1974).zmin as runoff_zonalmin_1974,
       (runoff_1974).zmax as runoff_zonalmax_1974
,(runoff_1975).zmean as runoff_zonalmean_1975,
       (runoff_1975).zmin as runoff_zonalmin_1975,
       (runoff_1975).zmax as runoff_zonalmax_1975
,(runoff_1976).zmean as runoff_zonalmean_1976,
       (runoff_1976).zmin as runoff_zonalmin_1976,
       (runoff_1976).zmax as runoff_zonalmax_1976
,(runoff_1977).zmean as runoff_zonalmean_1977,
       (runoff_1977).zmin as runoff_zonalmin_1977,
       (runoff_1977).zmax as runoff_zonalmax_1977
,(runoff_1978).zmean as runoff_zonalmean_1978,
       (runoff_1978).zmin as runoff_zonalmin_1978,
       (runoff_1978).zmax as runoff_zonalmax_1978
,(runoff_1979).zmean as runoff_zonalmean_1979,
       (runoff_1979).zmin as runoff_zonalmin_1979,
       (runoff_1979).zmax as runoff_zonalmax_1979
,(runoff_1980).zmean as runoff_zonalmean_1980,
       (runoff_1980).zmin as runoff_zonalmin_1980,
       (runoff_1980).zmax as runoff_zonalmax_1980
,(runoff_1981).zmean as runoff_zonalmean_1981,
       (runoff_1981).zmin as runoff_zonalmin_1981,
       (runoff_1981).zmax as runoff_zonalmax_1981
,(runoff_1982).zmean as runoff_zonalmean_1982,
       (runoff_1982).zmin as runoff_zonalmin_1982,
       (runoff_1982).zmax as runoff_zonalmax_1982
,(runoff_1983).zmean as runoff_zonalmean_1983,
       (runoff_1983).zmin as runoff_zonalmin_1983,
       (runoff_1983).zmax as runoff_zonalmax_1983
,(runoff_1984).zmean as runoff_zonalmean_1984,
       (runoff_1984).zmin as runoff_zonalmin_1984,
       (runoff_1984).zmax as runoff_zonalmax_1984
,(runoff_1985).zmean as runoff_zonalmean_1985,
       (runoff_1985).zmin as runoff_zonalmin_1985,
       (runoff_1985).zmax as runoff_zonalmax_1985
,(runoff_1986).zmean as runoff_zonalmean_1986,
       (runoff_1986).zmin as runoff_zonalmin_1986,
       (runoff_1986).zmax as runoff_zonalmax_1986
,(runoff_1987).zmean as runoff_zonalmean_1987,
       (runoff_1987).zmin as runoff_zonalmin_1987,
       (runoff_1987).zmax as runoff_zonalmax_1987
,(runoff_1988).zmean as runoff_zonalmean_1988,
       (runoff_1988).zmin as runoff_zonalmin_1988,
       (runoff_1988).zmax as runoff_zonalmax_1988
,(runoff_1989).zmean as runoff_zonalmean_1989,
       (runoff_1989).zmin as runoff_zonalmin_1989,
       (runoff_1989).zmax as runoff_zonalmax_1989
,(runoff_1990).zmean as runoff_zonalmean_1990,
       (runoff_1990).zmin as runoff_zonalmin_1990,
       (runoff_1990).zmax as runoff_zonalmax_1990
,(runoff_1991).zmean as runoff_zonalmean_1991,
       (runoff_1991).zmin as runoff_zonalmin_1991,
       (runoff_1991).zmax as runoff_zonalmax_1991
,(runoff_1992).zmean as runoff_zonalmean_1992,
       (runoff_1992).zmin as runoff_zonalmin_1992,
       (runoff_1992).zmax as runoff_zonalmax_1992
,(runoff_1993).zmean as runoff_zonalmean_1993,
       (runoff_1993).zmin as runoff_zonalmin_1993,
       (runoff_1993).zmax as runoff_zonalmax_1993
,(runoff_1994).zmean as runoff_zonalmean_1994,
       (runoff_1994).zmin as runoff_zonalmin_1994,
       (runoff_1994).zmax as runoff_zonalmax_1994
,(runoff_1995).zmean as runoff_zonalmean_1995,
       (runoff_1995).zmin as runoff_zonalmin_1995,
       (runoff_1995).zmax as runoff_zonalmax_1995
,(runoff_1996).zmean as runoff_zonalmean_1996,
       (runoff_1996).zmin as runoff_zonalmin_1996,
       (runoff_1996).zmax as runoff_zonalmax_1996
,(runoff_1997).zmean as runoff_zonalmean_1997,
       (runoff_1997).zmin as runoff_zonalmin_1997,
       (runoff_1997).zmax as runoff_zonalmax_1997
,(runoff_1998).zmean as runoff_zonalmean_1998,
       (runoff_1998).zmin as runoff_zonalmin_1998,
       (runoff_1998).zmax as runoff_zonalmax_1998
,(runoff_1999).zmean as runoff_zonalmean_1999,
       (runoff_1999).zmin as runoff_zonalmin_1999,
       (runoff_1999).zmax as runoff_zonalmax_1999
,(runoff_2000).zmean as runoff_zonalmean_2000,
       (runoff_2000).zmin as runoff_zonalmin_2000,
       (runoff_2000).zmax as runoff_zonalmax_2000
,(runoff_2001).zmean as runoff_zonalmean_2001,
       (runoff_2001).zmin as runoff_zonalmin_2001,
       (runoff_2001).zmax as runoff_zonalmax_2001
,(runoff_2002).zmean as runoff_zonalmean_2002,
       (runoff_2002).zmin as runoff_zonalmin_2002,
       (runoff_2002).zmax as runoff_zonalmax_2002
,(runoff_2003).zmean as runoff_zonalmean_2003,
       (runoff_2003).zmin as runoff_zonalmin_2003,
       (runoff_2003).zmax as runoff_zonalmax_2003
,(runoff_2004).zmean as runoff_zonalmean_2004,
       (runoff_2004).zmin as runoff_zonalmin_2004,
       (runoff_2004).zmax as runoff_zonalmax_2004
,(runoff_2005).zmean as runoff_zonalmean_2005,
       (runoff_2005).zmin as runoff_zonalmin_2005,
       (runoff_2005).zmax as runoff_zonalmax_2005
,(runoff_2006).zmean as runoff_zonalmean_2006,
       (runoff_2006).zmin as runoff_zonalmin_2006,
       (runoff_2006).zmax as runoff_zonalmax_2006
,(runoff_2007).zmean as runoff_zonalmean_2007,
       (runoff_2007).zmin as runoff_zonalmin_2007,
       (runoff_2007).zmax as runoff_zonalmax_2007
,(runoff_2008).zmean as runoff_zonalmean_2008,
       (runoff_2008).zmin as runoff_zonalmin_2008,
       (runoff_2008).zmax as runoff_zonalmax_2008
,(runoff_2009).zmean as runoff_zonalmean_2009,
       (runoff_2009).zmin as runoff_zonalmin_2009,
       (runoff_2009).zmax as runoff_zonalmax_2009
,(runoff_2010).zmean as runoff_zonalmean_2010,
       (runoff_2010).zmin as runoff_zonalmin_2010,
       (runoff_2010).zmax as runoff_zonalmax_2010
,(runoff_2011).zmean as runoff_zonalmean_2011,
       (runoff_2011).zmin as runoff_zonalmin_2011,
       (runoff_2011).zmax as runoff_zonalmax_2011
,(runoff_2012).zmean as runoff_zonalmean_2012,
       (runoff_2012).zmin as runoff_zonalmin_2012,
       (runoff_2012).zmax as runoff_zonalmax_2012
,(runoff_2013).zmean as runoff_zonalmean_2013,
       (runoff_2013).zmin as runoff_zonalmin_2013,
       (runoff_2013).zmax as runoff_zonalmax_2013
,(runoff_2014).zmean as runoff_zonalmean_2014,
       (runoff_2014).zmin as runoff_zonalmin_2014,
       (runoff_2014).zmax as runoff_zonalmax_2014
,(runoff_2015).zmean as runoff_zonalmean_2015,
       (runoff_2015).zmin as runoff_zonalmin_2015,
       (runoff_2015).zmax as runoff_zonalmax_2015
,(runoff_2016).zmean as runoff_zonalmean_2016,
       (runoff_2016).zmin as runoff_zonalmin_2016,
       (runoff_2016).zmax as runoff_zonalmax_2016
,(runoff_2017).zmean as runoff_zonalmean_2017,
       (runoff_2017).zmin as runoff_zonalmin_2017,
       (runoff_2017).zmax as runoff_zonalmax_2017
,(runoff_2018).zmean as runoff_zonalmean_2018,
       (runoff_2018).zmin as runoff_zonalmin_2018,
       (runoff_2018).zmax as runoff_zonalmax_2018
,(runoff_2019).zmean as runoff_zonalmean_2019,
       (runoff_2019).zmin as runoff_zonalmin_2019,
       (runoff_2019).zmax as runoff_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "runoff_country_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, runoff_1958 zonaloutput,
runoff_1959 zonaloutput,
runoff_1960 zonaloutput,
runoff_1961 zonaloutput,
runoff_1962 zonaloutput,
runoff_1963 zonaloutput,
runoff_1964 zonaloutput,
runoff_1965 zonaloutput,
runoff_1966 zonaloutput,
runoff_1967 zonaloutput,
runoff_1968 zonaloutput,
runoff_1969 zonaloutput,
runoff_1970 zonaloutput,
runoff_1971 zonaloutput,
runoff_1972 zonaloutput,
runoff_1973 zonaloutput,
runoff_1974 zonaloutput,
runoff_1975 zonaloutput,
runoff_1976 zonaloutput,
runoff_1977 zonaloutput,
runoff_1978 zonaloutput,
runoff_1979 zonaloutput,
runoff_1980 zonaloutput,
runoff_1981 zonaloutput,
runoff_1982 zonaloutput,
runoff_1983 zonaloutput,
runoff_1984 zonaloutput,
runoff_1985 zonaloutput,
runoff_1986 zonaloutput,
runoff_1987 zonaloutput,
runoff_1988 zonaloutput,
runoff_1989 zonaloutput,
runoff_1990 zonaloutput,
runoff_1991 zonaloutput,
runoff_1992 zonaloutput,
runoff_1993 zonaloutput,
runoff_1994 zonaloutput,
runoff_1995 zonaloutput,
runoff_1996 zonaloutput,
runoff_1997 zonaloutput,
runoff_1998 zonaloutput,
runoff_1999 zonaloutput,
runoff_2000 zonaloutput,
runoff_2001 zonaloutput,
runoff_2002 zonaloutput,
runoff_2003 zonaloutput,
runoff_2004 zonaloutput,
runoff_2005 zonaloutput,
runoff_2006 zonaloutput,
runoff_2007 zonaloutput,
runoff_2008 zonaloutput,
runoff_2009 zonaloutput,
runoff_2010 zonaloutput,
runoff_2011 zonaloutput,
runoff_2012 zonaloutput,
runoff_2013 zonaloutput,
runoff_2014 zonaloutput,
runoff_2015 zonaloutput,
runoff_2016 zonaloutput,
runoff_2017 zonaloutput,
runoff_2018 zonaloutput,
runoff_2019 zonaloutput) INNER JOIN faogaul_country_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_evapotranspiration_state_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_evapotranspiration_state_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (evapotranspiration_1958).zmean as evapotranspiration_zonalmean_1958,
       (evapotranspiration_1958).zmin as evapotranspiration_zonalmin_1958,
       (evapotranspiration_1958).zmax as evapotranspiration_zonalmax_1958
,(evapotranspiration_1959).zmean as evapotranspiration_zonalmean_1959,
       (evapotranspiration_1959).zmin as evapotranspiration_zonalmin_1959,
       (evapotranspiration_1959).zmax as evapotranspiration_zonalmax_1959
,(evapotranspiration_1960).zmean as evapotranspiration_zonalmean_1960,
       (evapotranspiration_1960).zmin as evapotranspiration_zonalmin_1960,
       (evapotranspiration_1960).zmax as evapotranspiration_zonalmax_1960
,(evapotranspiration_1961).zmean as evapotranspiration_zonalmean_1961,
       (evapotranspiration_1961).zmin as evapotranspiration_zonalmin_1961,
       (evapotranspiration_1961).zmax as evapotranspiration_zonalmax_1961
,(evapotranspiration_1962).zmean as evapotranspiration_zonalmean_1962,
       (evapotranspiration_1962).zmin as evapotranspiration_zonalmin_1962,
       (evapotranspiration_1962).zmax as evapotranspiration_zonalmax_1962
,(evapotranspiration_1963).zmean as evapotranspiration_zonalmean_1963,
       (evapotranspiration_1963).zmin as evapotranspiration_zonalmin_1963,
       (evapotranspiration_1963).zmax as evapotranspiration_zonalmax_1963
,(evapotranspiration_1964).zmean as evapotranspiration_zonalmean_1964,
       (evapotranspiration_1964).zmin as evapotranspiration_zonalmin_1964,
       (evapotranspiration_1964).zmax as evapotranspiration_zonalmax_1964
,(evapotranspiration_1965).zmean as evapotranspiration_zonalmean_1965,
       (evapotranspiration_1965).zmin as evapotranspiration_zonalmin_1965,
       (evapotranspiration_1965).zmax as evapotranspiration_zonalmax_1965
,(evapotranspiration_1966).zmean as evapotranspiration_zonalmean_1966,
       (evapotranspiration_1966).zmin as evapotranspiration_zonalmin_1966,
       (evapotranspiration_1966).zmax as evapotranspiration_zonalmax_1966
,(evapotranspiration_1967).zmean as evapotranspiration_zonalmean_1967,
       (evapotranspiration_1967).zmin as evapotranspiration_zonalmin_1967,
       (evapotranspiration_1967).zmax as evapotranspiration_zonalmax_1967
,(evapotranspiration_1968).zmean as evapotranspiration_zonalmean_1968,
       (evapotranspiration_1968).zmin as evapotranspiration_zonalmin_1968,
       (evapotranspiration_1968).zmax as evapotranspiration_zonalmax_1968
,(evapotranspiration_1969).zmean as evapotranspiration_zonalmean_1969,
       (evapotranspiration_1969).zmin as evapotranspiration_zonalmin_1969,
       (evapotranspiration_1969).zmax as evapotranspiration_zonalmax_1969
,(evapotranspiration_1970).zmean as evapotranspiration_zonalmean_1970,
       (evapotranspiration_1970).zmin as evapotranspiration_zonalmin_1970,
       (evapotranspiration_1970).zmax as evapotranspiration_zonalmax_1970
,(evapotranspiration_1971).zmean as evapotranspiration_zonalmean_1971,
       (evapotranspiration_1971).zmin as evapotranspiration_zonalmin_1971,
       (evapotranspiration_1971).zmax as evapotranspiration_zonalmax_1971
,(evapotranspiration_1972).zmean as evapotranspiration_zonalmean_1972,
       (evapotranspiration_1972).zmin as evapotranspiration_zonalmin_1972,
       (evapotranspiration_1972).zmax as evapotranspiration_zonalmax_1972
,(evapotranspiration_1973).zmean as evapotranspiration_zonalmean_1973,
       (evapotranspiration_1973).zmin as evapotranspiration_zonalmin_1973,
       (evapotranspiration_1973).zmax as evapotranspiration_zonalmax_1973
,(evapotranspiration_1974).zmean as evapotranspiration_zonalmean_1974,
       (evapotranspiration_1974).zmin as evapotranspiration_zonalmin_1974,
       (evapotranspiration_1974).zmax as evapotranspiration_zonalmax_1974
,(evapotranspiration_1975).zmean as evapotranspiration_zonalmean_1975,
       (evapotranspiration_1975).zmin as evapotranspiration_zonalmin_1975,
       (evapotranspiration_1975).zmax as evapotranspiration_zonalmax_1975
,(evapotranspiration_1976).zmean as evapotranspiration_zonalmean_1976,
       (evapotranspiration_1976).zmin as evapotranspiration_zonalmin_1976,
       (evapotranspiration_1976).zmax as evapotranspiration_zonalmax_1976
,(evapotranspiration_1977).zmean as evapotranspiration_zonalmean_1977,
       (evapotranspiration_1977).zmin as evapotranspiration_zonalmin_1977,
       (evapotranspiration_1977).zmax as evapotranspiration_zonalmax_1977
,(evapotranspiration_1978).zmean as evapotranspiration_zonalmean_1978,
       (evapotranspiration_1978).zmin as evapotranspiration_zonalmin_1978,
       (evapotranspiration_1978).zmax as evapotranspiration_zonalmax_1978
,(evapotranspiration_1979).zmean as evapotranspiration_zonalmean_1979,
       (evapotranspiration_1979).zmin as evapotranspiration_zonalmin_1979,
       (evapotranspiration_1979).zmax as evapotranspiration_zonalmax_1979
,(evapotranspiration_1980).zmean as evapotranspiration_zonalmean_1980,
       (evapotranspiration_1980).zmin as evapotranspiration_zonalmin_1980,
       (evapotranspiration_1980).zmax as evapotranspiration_zonalmax_1980
,(evapotranspiration_1981).zmean as evapotranspiration_zonalmean_1981,
       (evapotranspiration_1981).zmin as evapotranspiration_zonalmin_1981,
       (evapotranspiration_1981).zmax as evapotranspiration_zonalmax_1981
,(evapotranspiration_1982).zmean as evapotranspiration_zonalmean_1982,
       (evapotranspiration_1982).zmin as evapotranspiration_zonalmin_1982,
       (evapotranspiration_1982).zmax as evapotranspiration_zonalmax_1982
,(evapotranspiration_1983).zmean as evapotranspiration_zonalmean_1983,
       (evapotranspiration_1983).zmin as evapotranspiration_zonalmin_1983,
       (evapotranspiration_1983).zmax as evapotranspiration_zonalmax_1983
,(evapotranspiration_1984).zmean as evapotranspiration_zonalmean_1984,
       (evapotranspiration_1984).zmin as evapotranspiration_zonalmin_1984,
       (evapotranspiration_1984).zmax as evapotranspiration_zonalmax_1984
,(evapotranspiration_1985).zmean as evapotranspiration_zonalmean_1985,
       (evapotranspiration_1985).zmin as evapotranspiration_zonalmin_1985,
       (evapotranspiration_1985).zmax as evapotranspiration_zonalmax_1985
,(evapotranspiration_1986).zmean as evapotranspiration_zonalmean_1986,
       (evapotranspiration_1986).zmin as evapotranspiration_zonalmin_1986,
       (evapotranspiration_1986).zmax as evapotranspiration_zonalmax_1986
,(evapotranspiration_1987).zmean as evapotranspiration_zonalmean_1987,
       (evapotranspiration_1987).zmin as evapotranspiration_zonalmin_1987,
       (evapotranspiration_1987).zmax as evapotranspiration_zonalmax_1987
,(evapotranspiration_1988).zmean as evapotranspiration_zonalmean_1988,
       (evapotranspiration_1988).zmin as evapotranspiration_zonalmin_1988,
       (evapotranspiration_1988).zmax as evapotranspiration_zonalmax_1988
,(evapotranspiration_1989).zmean as evapotranspiration_zonalmean_1989,
       (evapotranspiration_1989).zmin as evapotranspiration_zonalmin_1989,
       (evapotranspiration_1989).zmax as evapotranspiration_zonalmax_1989
,(evapotranspiration_1990).zmean as evapotranspiration_zonalmean_1990,
       (evapotranspiration_1990).zmin as evapotranspiration_zonalmin_1990,
       (evapotranspiration_1990).zmax as evapotranspiration_zonalmax_1990
,(evapotranspiration_1991).zmean as evapotranspiration_zonalmean_1991,
       (evapotranspiration_1991).zmin as evapotranspiration_zonalmin_1991,
       (evapotranspiration_1991).zmax as evapotranspiration_zonalmax_1991
,(evapotranspiration_1992).zmean as evapotranspiration_zonalmean_1992,
       (evapotranspiration_1992).zmin as evapotranspiration_zonalmin_1992,
       (evapotranspiration_1992).zmax as evapotranspiration_zonalmax_1992
,(evapotranspiration_1993).zmean as evapotranspiration_zonalmean_1993,
       (evapotranspiration_1993).zmin as evapotranspiration_zonalmin_1993,
       (evapotranspiration_1993).zmax as evapotranspiration_zonalmax_1993
,(evapotranspiration_1994).zmean as evapotranspiration_zonalmean_1994,
       (evapotranspiration_1994).zmin as evapotranspiration_zonalmin_1994,
       (evapotranspiration_1994).zmax as evapotranspiration_zonalmax_1994
,(evapotranspiration_1995).zmean as evapotranspiration_zonalmean_1995,
       (evapotranspiration_1995).zmin as evapotranspiration_zonalmin_1995,
       (evapotranspiration_1995).zmax as evapotranspiration_zonalmax_1995
,(evapotranspiration_1996).zmean as evapotranspiration_zonalmean_1996,
       (evapotranspiration_1996).zmin as evapotranspiration_zonalmin_1996,
       (evapotranspiration_1996).zmax as evapotranspiration_zonalmax_1996
,(evapotranspiration_1997).zmean as evapotranspiration_zonalmean_1997,
       (evapotranspiration_1997).zmin as evapotranspiration_zonalmin_1997,
       (evapotranspiration_1997).zmax as evapotranspiration_zonalmax_1997
,(evapotranspiration_1998).zmean as evapotranspiration_zonalmean_1998,
       (evapotranspiration_1998).zmin as evapotranspiration_zonalmin_1998,
       (evapotranspiration_1998).zmax as evapotranspiration_zonalmax_1998
,(evapotranspiration_1999).zmean as evapotranspiration_zonalmean_1999,
       (evapotranspiration_1999).zmin as evapotranspiration_zonalmin_1999,
       (evapotranspiration_1999).zmax as evapotranspiration_zonalmax_1999
,(evapotranspiration_2000).zmean as evapotranspiration_zonalmean_2000,
       (evapotranspiration_2000).zmin as evapotranspiration_zonalmin_2000,
       (evapotranspiration_2000).zmax as evapotranspiration_zonalmax_2000
,(evapotranspiration_2001).zmean as evapotranspiration_zonalmean_2001,
       (evapotranspiration_2001).zmin as evapotranspiration_zonalmin_2001,
       (evapotranspiration_2001).zmax as evapotranspiration_zonalmax_2001
,(evapotranspiration_2002).zmean as evapotranspiration_zonalmean_2002,
       (evapotranspiration_2002).zmin as evapotranspiration_zonalmin_2002,
       (evapotranspiration_2002).zmax as evapotranspiration_zonalmax_2002
,(evapotranspiration_2003).zmean as evapotranspiration_zonalmean_2003,
       (evapotranspiration_2003).zmin as evapotranspiration_zonalmin_2003,
       (evapotranspiration_2003).zmax as evapotranspiration_zonalmax_2003
,(evapotranspiration_2004).zmean as evapotranspiration_zonalmean_2004,
       (evapotranspiration_2004).zmin as evapotranspiration_zonalmin_2004,
       (evapotranspiration_2004).zmax as evapotranspiration_zonalmax_2004
,(evapotranspiration_2005).zmean as evapotranspiration_zonalmean_2005,
       (evapotranspiration_2005).zmin as evapotranspiration_zonalmin_2005,
       (evapotranspiration_2005).zmax as evapotranspiration_zonalmax_2005
,(evapotranspiration_2006).zmean as evapotranspiration_zonalmean_2006,
       (evapotranspiration_2006).zmin as evapotranspiration_zonalmin_2006,
       (evapotranspiration_2006).zmax as evapotranspiration_zonalmax_2006
,(evapotranspiration_2007).zmean as evapotranspiration_zonalmean_2007,
       (evapotranspiration_2007).zmin as evapotranspiration_zonalmin_2007,
       (evapotranspiration_2007).zmax as evapotranspiration_zonalmax_2007
,(evapotranspiration_2008).zmean as evapotranspiration_zonalmean_2008,
       (evapotranspiration_2008).zmin as evapotranspiration_zonalmin_2008,
       (evapotranspiration_2008).zmax as evapotranspiration_zonalmax_2008
,(evapotranspiration_2009).zmean as evapotranspiration_zonalmean_2009,
       (evapotranspiration_2009).zmin as evapotranspiration_zonalmin_2009,
       (evapotranspiration_2009).zmax as evapotranspiration_zonalmax_2009
,(evapotranspiration_2010).zmean as evapotranspiration_zonalmean_2010,
       (evapotranspiration_2010).zmin as evapotranspiration_zonalmin_2010,
       (evapotranspiration_2010).zmax as evapotranspiration_zonalmax_2010
,(evapotranspiration_2011).zmean as evapotranspiration_zonalmean_2011,
       (evapotranspiration_2011).zmin as evapotranspiration_zonalmin_2011,
       (evapotranspiration_2011).zmax as evapotranspiration_zonalmax_2011
,(evapotranspiration_2012).zmean as evapotranspiration_zonalmean_2012,
       (evapotranspiration_2012).zmin as evapotranspiration_zonalmin_2012,
       (evapotranspiration_2012).zmax as evapotranspiration_zonalmax_2012
,(evapotranspiration_2013).zmean as evapotranspiration_zonalmean_2013,
       (evapotranspiration_2013).zmin as evapotranspiration_zonalmin_2013,
       (evapotranspiration_2013).zmax as evapotranspiration_zonalmax_2013
,(evapotranspiration_2014).zmean as evapotranspiration_zonalmean_2014,
       (evapotranspiration_2014).zmin as evapotranspiration_zonalmin_2014,
       (evapotranspiration_2014).zmax as evapotranspiration_zonalmax_2014
,(evapotranspiration_2015).zmean as evapotranspiration_zonalmean_2015,
       (evapotranspiration_2015).zmin as evapotranspiration_zonalmin_2015,
       (evapotranspiration_2015).zmax as evapotranspiration_zonalmax_2015
,(evapotranspiration_2016).zmean as evapotranspiration_zonalmean_2016,
       (evapotranspiration_2016).zmin as evapotranspiration_zonalmin_2016,
       (evapotranspiration_2016).zmax as evapotranspiration_zonalmax_2016
,(evapotranspiration_2017).zmean as evapotranspiration_zonalmean_2017,
       (evapotranspiration_2017).zmin as evapotranspiration_zonalmin_2017,
       (evapotranspiration_2017).zmax as evapotranspiration_zonalmax_2017
,(evapotranspiration_2018).zmean as evapotranspiration_zonalmean_2018,
       (evapotranspiration_2018).zmin as evapotranspiration_zonalmin_2018,
       (evapotranspiration_2018).zmax as evapotranspiration_zonalmax_2018
,(evapotranspiration_2019).zmean as evapotranspiration_zonalmean_2019,
       (evapotranspiration_2019).zmin as evapotranspiration_zonalmin_2019,
       (evapotranspiration_2019).zmax as evapotranspiration_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "evapotranspiration_state_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, evapotranspiration_1958 zonaloutput,
evapotranspiration_1959 zonaloutput,
evapotranspiration_1960 zonaloutput,
evapotranspiration_1961 zonaloutput,
evapotranspiration_1962 zonaloutput,
evapotranspiration_1963 zonaloutput,
evapotranspiration_1964 zonaloutput,
evapotranspiration_1965 zonaloutput,
evapotranspiration_1966 zonaloutput,
evapotranspiration_1967 zonaloutput,
evapotranspiration_1968 zonaloutput,
evapotranspiration_1969 zonaloutput,
evapotranspiration_1970 zonaloutput,
evapotranspiration_1971 zonaloutput,
evapotranspiration_1972 zonaloutput,
evapotranspiration_1973 zonaloutput,
evapotranspiration_1974 zonaloutput,
evapotranspiration_1975 zonaloutput,
evapotranspiration_1976 zonaloutput,
evapotranspiration_1977 zonaloutput,
evapotranspiration_1978 zonaloutput,
evapotranspiration_1979 zonaloutput,
evapotranspiration_1980 zonaloutput,
evapotranspiration_1981 zonaloutput,
evapotranspiration_1982 zonaloutput,
evapotranspiration_1983 zonaloutput,
evapotranspiration_1984 zonaloutput,
evapotranspiration_1985 zonaloutput,
evapotranspiration_1986 zonaloutput,
evapotranspiration_1987 zonaloutput,
evapotranspiration_1988 zonaloutput,
evapotranspiration_1989 zonaloutput,
evapotranspiration_1990 zonaloutput,
evapotranspiration_1991 zonaloutput,
evapotranspiration_1992 zonaloutput,
evapotranspiration_1993 zonaloutput,
evapotranspiration_1994 zonaloutput,
evapotranspiration_1995 zonaloutput,
evapotranspiration_1996 zonaloutput,
evapotranspiration_1997 zonaloutput,
evapotranspiration_1998 zonaloutput,
evapotranspiration_1999 zonaloutput,
evapotranspiration_2000 zonaloutput,
evapotranspiration_2001 zonaloutput,
evapotranspiration_2002 zonaloutput,
evapotranspiration_2003 zonaloutput,
evapotranspiration_2004 zonaloutput,
evapotranspiration_2005 zonaloutput,
evapotranspiration_2006 zonaloutput,
evapotranspiration_2007 zonaloutput,
evapotranspiration_2008 zonaloutput,
evapotranspiration_2009 zonaloutput,
evapotranspiration_2010 zonaloutput,
evapotranspiration_2011 zonaloutput,
evapotranspiration_2012 zonaloutput,
evapotranspiration_2013 zonaloutput,
evapotranspiration_2014 zonaloutput,
evapotranspiration_2015 zonaloutput,
evapotranspiration_2016 zonaloutput,
evapotranspiration_2017 zonaloutput,
evapotranspiration_2018 zonaloutput,
evapotranspiration_2019 zonaloutput) INNER JOIN faogaul_state_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_soilmoisture_state_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_soilmoisture_state_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (soilmoisture_1958).zmean as soilmoisture_zonalmean_1958,
       (soilmoisture_1958).zmin as soilmoisture_zonalmin_1958,
       (soilmoisture_1958).zmax as soilmoisture_zonalmax_1958
,(soilmoisture_1959).zmean as soilmoisture_zonalmean_1959,
       (soilmoisture_1959).zmin as soilmoisture_zonalmin_1959,
       (soilmoisture_1959).zmax as soilmoisture_zonalmax_1959
,(soilmoisture_1960).zmean as soilmoisture_zonalmean_1960,
       (soilmoisture_1960).zmin as soilmoisture_zonalmin_1960,
       (soilmoisture_1960).zmax as soilmoisture_zonalmax_1960
,(soilmoisture_1961).zmean as soilmoisture_zonalmean_1961,
       (soilmoisture_1961).zmin as soilmoisture_zonalmin_1961,
       (soilmoisture_1961).zmax as soilmoisture_zonalmax_1961
,(soilmoisture_1962).zmean as soilmoisture_zonalmean_1962,
       (soilmoisture_1962).zmin as soilmoisture_zonalmin_1962,
       (soilmoisture_1962).zmax as soilmoisture_zonalmax_1962
,(soilmoisture_1963).zmean as soilmoisture_zonalmean_1963,
       (soilmoisture_1963).zmin as soilmoisture_zonalmin_1963,
       (soilmoisture_1963).zmax as soilmoisture_zonalmax_1963
,(soilmoisture_1964).zmean as soilmoisture_zonalmean_1964,
       (soilmoisture_1964).zmin as soilmoisture_zonalmin_1964,
       (soilmoisture_1964).zmax as soilmoisture_zonalmax_1964
,(soilmoisture_1965).zmean as soilmoisture_zonalmean_1965,
       (soilmoisture_1965).zmin as soilmoisture_zonalmin_1965,
       (soilmoisture_1965).zmax as soilmoisture_zonalmax_1965
,(soilmoisture_1966).zmean as soilmoisture_zonalmean_1966,
       (soilmoisture_1966).zmin as soilmoisture_zonalmin_1966,
       (soilmoisture_1966).zmax as soilmoisture_zonalmax_1966
,(soilmoisture_1967).zmean as soilmoisture_zonalmean_1967,
       (soilmoisture_1967).zmin as soilmoisture_zonalmin_1967,
       (soilmoisture_1967).zmax as soilmoisture_zonalmax_1967
,(soilmoisture_1968).zmean as soilmoisture_zonalmean_1968,
       (soilmoisture_1968).zmin as soilmoisture_zonalmin_1968,
       (soilmoisture_1968).zmax as soilmoisture_zonalmax_1968
,(soilmoisture_1969).zmean as soilmoisture_zonalmean_1969,
       (soilmoisture_1969).zmin as soilmoisture_zonalmin_1969,
       (soilmoisture_1969).zmax as soilmoisture_zonalmax_1969
,(soilmoisture_1970).zmean as soilmoisture_zonalmean_1970,
       (soilmoisture_1970).zmin as soilmoisture_zonalmin_1970,
       (soilmoisture_1970).zmax as soilmoisture_zonalmax_1970
,(soilmoisture_1971).zmean as soilmoisture_zonalmean_1971,
       (soilmoisture_1971).zmin as soilmoisture_zonalmin_1971,
       (soilmoisture_1971).zmax as soilmoisture_zonalmax_1971
,(soilmoisture_1972).zmean as soilmoisture_zonalmean_1972,
       (soilmoisture_1972).zmin as soilmoisture_zonalmin_1972,
       (soilmoisture_1972).zmax as soilmoisture_zonalmax_1972
,(soilmoisture_1973).zmean as soilmoisture_zonalmean_1973,
       (soilmoisture_1973).zmin as soilmoisture_zonalmin_1973,
       (soilmoisture_1973).zmax as soilmoisture_zonalmax_1973
,(soilmoisture_1974).zmean as soilmoisture_zonalmean_1974,
       (soilmoisture_1974).zmin as soilmoisture_zonalmin_1974,
       (soilmoisture_1974).zmax as soilmoisture_zonalmax_1974
,(soilmoisture_1975).zmean as soilmoisture_zonalmean_1975,
       (soilmoisture_1975).zmin as soilmoisture_zonalmin_1975,
       (soilmoisture_1975).zmax as soilmoisture_zonalmax_1975
,(soilmoisture_1976).zmean as soilmoisture_zonalmean_1976,
       (soilmoisture_1976).zmin as soilmoisture_zonalmin_1976,
       (soilmoisture_1976).zmax as soilmoisture_zonalmax_1976
,(soilmoisture_1977).zmean as soilmoisture_zonalmean_1977,
       (soilmoisture_1977).zmin as soilmoisture_zonalmin_1977,
       (soilmoisture_1977).zmax as soilmoisture_zonalmax_1977
,(soilmoisture_1978).zmean as soilmoisture_zonalmean_1978,
       (soilmoisture_1978).zmin as soilmoisture_zonalmin_1978,
       (soilmoisture_1978).zmax as soilmoisture_zonalmax_1978
,(soilmoisture_1979).zmean as soilmoisture_zonalmean_1979,
       (soilmoisture_1979).zmin as soilmoisture_zonalmin_1979,
       (soilmoisture_1979).zmax as soilmoisture_zonalmax_1979
,(soilmoisture_1980).zmean as soilmoisture_zonalmean_1980,
       (soilmoisture_1980).zmin as soilmoisture_zonalmin_1980,
       (soilmoisture_1980).zmax as soilmoisture_zonalmax_1980
,(soilmoisture_1981).zmean as soilmoisture_zonalmean_1981,
       (soilmoisture_1981).zmin as soilmoisture_zonalmin_1981,
       (soilmoisture_1981).zmax as soilmoisture_zonalmax_1981
,(soilmoisture_1982).zmean as soilmoisture_zonalmean_1982,
       (soilmoisture_1982).zmin as soilmoisture_zonalmin_1982,
       (soilmoisture_1982).zmax as soilmoisture_zonalmax_1982
,(soilmoisture_1983).zmean as soilmoisture_zonalmean_1983,
       (soilmoisture_1983).zmin as soilmoisture_zonalmin_1983,
       (soilmoisture_1983).zmax as soilmoisture_zonalmax_1983
,(soilmoisture_1984).zmean as soilmoisture_zonalmean_1984,
       (soilmoisture_1984).zmin as soilmoisture_zonalmin_1984,
       (soilmoisture_1984).zmax as soilmoisture_zonalmax_1984
,(soilmoisture_1985).zmean as soilmoisture_zonalmean_1985,
       (soilmoisture_1985).zmin as soilmoisture_zonalmin_1985,
       (soilmoisture_1985).zmax as soilmoisture_zonalmax_1985
,(soilmoisture_1986).zmean as soilmoisture_zonalmean_1986,
       (soilmoisture_1986).zmin as soilmoisture_zonalmin_1986,
       (soilmoisture_1986).zmax as soilmoisture_zonalmax_1986
,(soilmoisture_1987).zmean as soilmoisture_zonalmean_1987,
       (soilmoisture_1987).zmin as soilmoisture_zonalmin_1987,
       (soilmoisture_1987).zmax as soilmoisture_zonalmax_1987
,(soilmoisture_1988).zmean as soilmoisture_zonalmean_1988,
       (soilmoisture_1988).zmin as soilmoisture_zonalmin_1988,
       (soilmoisture_1988).zmax as soilmoisture_zonalmax_1988
,(soilmoisture_1989).zmean as soilmoisture_zonalmean_1989,
       (soilmoisture_1989).zmin as soilmoisture_zonalmin_1989,
       (soilmoisture_1989).zmax as soilmoisture_zonalmax_1989
,(soilmoisture_1990).zmean as soilmoisture_zonalmean_1990,
       (soilmoisture_1990).zmin as soilmoisture_zonalmin_1990,
       (soilmoisture_1990).zmax as soilmoisture_zonalmax_1990
,(soilmoisture_1991).zmean as soilmoisture_zonalmean_1991,
       (soilmoisture_1991).zmin as soilmoisture_zonalmin_1991,
       (soilmoisture_1991).zmax as soilmoisture_zonalmax_1991
,(soilmoisture_1992).zmean as soilmoisture_zonalmean_1992,
       (soilmoisture_1992).zmin as soilmoisture_zonalmin_1992,
       (soilmoisture_1992).zmax as soilmoisture_zonalmax_1992
,(soilmoisture_1993).zmean as soilmoisture_zonalmean_1993,
       (soilmoisture_1993).zmin as soilmoisture_zonalmin_1993,
       (soilmoisture_1993).zmax as soilmoisture_zonalmax_1993
,(soilmoisture_1994).zmean as soilmoisture_zonalmean_1994,
       (soilmoisture_1994).zmin as soilmoisture_zonalmin_1994,
       (soilmoisture_1994).zmax as soilmoisture_zonalmax_1994
,(soilmoisture_1995).zmean as soilmoisture_zonalmean_1995,
       (soilmoisture_1995).zmin as soilmoisture_zonalmin_1995,
       (soilmoisture_1995).zmax as soilmoisture_zonalmax_1995
,(soilmoisture_1996).zmean as soilmoisture_zonalmean_1996,
       (soilmoisture_1996).zmin as soilmoisture_zonalmin_1996,
       (soilmoisture_1996).zmax as soilmoisture_zonalmax_1996
,(soilmoisture_1997).zmean as soilmoisture_zonalmean_1997,
       (soilmoisture_1997).zmin as soilmoisture_zonalmin_1997,
       (soilmoisture_1997).zmax as soilmoisture_zonalmax_1997
,(soilmoisture_1998).zmean as soilmoisture_zonalmean_1998,
       (soilmoisture_1998).zmin as soilmoisture_zonalmin_1998,
       (soilmoisture_1998).zmax as soilmoisture_zonalmax_1998
,(soilmoisture_1999).zmean as soilmoisture_zonalmean_1999,
       (soilmoisture_1999).zmin as soilmoisture_zonalmin_1999,
       (soilmoisture_1999).zmax as soilmoisture_zonalmax_1999
,(soilmoisture_2000).zmean as soilmoisture_zonalmean_2000,
       (soilmoisture_2000).zmin as soilmoisture_zonalmin_2000,
       (soilmoisture_2000).zmax as soilmoisture_zonalmax_2000
,(soilmoisture_2001).zmean as soilmoisture_zonalmean_2001,
       (soilmoisture_2001).zmin as soilmoisture_zonalmin_2001,
       (soilmoisture_2001).zmax as soilmoisture_zonalmax_2001
,(soilmoisture_2002).zmean as soilmoisture_zonalmean_2002,
       (soilmoisture_2002).zmin as soilmoisture_zonalmin_2002,
       (soilmoisture_2002).zmax as soilmoisture_zonalmax_2002
,(soilmoisture_2003).zmean as soilmoisture_zonalmean_2003,
       (soilmoisture_2003).zmin as soilmoisture_zonalmin_2003,
       (soilmoisture_2003).zmax as soilmoisture_zonalmax_2003
,(soilmoisture_2004).zmean as soilmoisture_zonalmean_2004,
       (soilmoisture_2004).zmin as soilmoisture_zonalmin_2004,
       (soilmoisture_2004).zmax as soilmoisture_zonalmax_2004
,(soilmoisture_2005).zmean as soilmoisture_zonalmean_2005,
       (soilmoisture_2005).zmin as soilmoisture_zonalmin_2005,
       (soilmoisture_2005).zmax as soilmoisture_zonalmax_2005
,(soilmoisture_2006).zmean as soilmoisture_zonalmean_2006,
       (soilmoisture_2006).zmin as soilmoisture_zonalmin_2006,
       (soilmoisture_2006).zmax as soilmoisture_zonalmax_2006
,(soilmoisture_2007).zmean as soilmoisture_zonalmean_2007,
       (soilmoisture_2007).zmin as soilmoisture_zonalmin_2007,
       (soilmoisture_2007).zmax as soilmoisture_zonalmax_2007
,(soilmoisture_2008).zmean as soilmoisture_zonalmean_2008,
       (soilmoisture_2008).zmin as soilmoisture_zonalmin_2008,
       (soilmoisture_2008).zmax as soilmoisture_zonalmax_2008
,(soilmoisture_2009).zmean as soilmoisture_zonalmean_2009,
       (soilmoisture_2009).zmin as soilmoisture_zonalmin_2009,
       (soilmoisture_2009).zmax as soilmoisture_zonalmax_2009
,(soilmoisture_2010).zmean as soilmoisture_zonalmean_2010,
       (soilmoisture_2010).zmin as soilmoisture_zonalmin_2010,
       (soilmoisture_2010).zmax as soilmoisture_zonalmax_2010
,(soilmoisture_2011).zmean as soilmoisture_zonalmean_2011,
       (soilmoisture_2011).zmin as soilmoisture_zonalmin_2011,
       (soilmoisture_2011).zmax as soilmoisture_zonalmax_2011
,(soilmoisture_2012).zmean as soilmoisture_zonalmean_2012,
       (soilmoisture_2012).zmin as soilmoisture_zonalmin_2012,
       (soilmoisture_2012).zmax as soilmoisture_zonalmax_2012
,(soilmoisture_2013).zmean as soilmoisture_zonalmean_2013,
       (soilmoisture_2013).zmin as soilmoisture_zonalmin_2013,
       (soilmoisture_2013).zmax as soilmoisture_zonalmax_2013
,(soilmoisture_2014).zmean as soilmoisture_zonalmean_2014,
       (soilmoisture_2014).zmin as soilmoisture_zonalmin_2014,
       (soilmoisture_2014).zmax as soilmoisture_zonalmax_2014
,(soilmoisture_2015).zmean as soilmoisture_zonalmean_2015,
       (soilmoisture_2015).zmin as soilmoisture_zonalmin_2015,
       (soilmoisture_2015).zmax as soilmoisture_zonalmax_2015
,(soilmoisture_2016).zmean as soilmoisture_zonalmean_2016,
       (soilmoisture_2016).zmin as soilmoisture_zonalmin_2016,
       (soilmoisture_2016).zmax as soilmoisture_zonalmax_2016
,(soilmoisture_2017).zmean as soilmoisture_zonalmean_2017,
       (soilmoisture_2017).zmin as soilmoisture_zonalmin_2017,
       (soilmoisture_2017).zmax as soilmoisture_zonalmax_2017
,(soilmoisture_2018).zmean as soilmoisture_zonalmean_2018,
       (soilmoisture_2018).zmin as soilmoisture_zonalmin_2018,
       (soilmoisture_2018).zmax as soilmoisture_zonalmax_2018
,(soilmoisture_2019).zmean as soilmoisture_zonalmean_2019,
       (soilmoisture_2019).zmin as soilmoisture_zonalmin_2019,
       (soilmoisture_2019).zmax as soilmoisture_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "soilmoisture_state_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, soilmoisture_1958 zonaloutput,
soilmoisture_1959 zonaloutput,
soilmoisture_1960 zonaloutput,
soilmoisture_1961 zonaloutput,
soilmoisture_1962 zonaloutput,
soilmoisture_1963 zonaloutput,
soilmoisture_1964 zonaloutput,
soilmoisture_1965 zonaloutput,
soilmoisture_1966 zonaloutput,
soilmoisture_1967 zonaloutput,
soilmoisture_1968 zonaloutput,
soilmoisture_1969 zonaloutput,
soilmoisture_1970 zonaloutput,
soilmoisture_1971 zonaloutput,
soilmoisture_1972 zonaloutput,
soilmoisture_1973 zonaloutput,
soilmoisture_1974 zonaloutput,
soilmoisture_1975 zonaloutput,
soilmoisture_1976 zonaloutput,
soilmoisture_1977 zonaloutput,
soilmoisture_1978 zonaloutput,
soilmoisture_1979 zonaloutput,
soilmoisture_1980 zonaloutput,
soilmoisture_1981 zonaloutput,
soilmoisture_1982 zonaloutput,
soilmoisture_1983 zonaloutput,
soilmoisture_1984 zonaloutput,
soilmoisture_1985 zonaloutput,
soilmoisture_1986 zonaloutput,
soilmoisture_1987 zonaloutput,
soilmoisture_1988 zonaloutput,
soilmoisture_1989 zonaloutput,
soilmoisture_1990 zonaloutput,
soilmoisture_1991 zonaloutput,
soilmoisture_1992 zonaloutput,
soilmoisture_1993 zonaloutput,
soilmoisture_1994 zonaloutput,
soilmoisture_1995 zonaloutput,
soilmoisture_1996 zonaloutput,
soilmoisture_1997 zonaloutput,
soilmoisture_1998 zonaloutput,
soilmoisture_1999 zonaloutput,
soilmoisture_2000 zonaloutput,
soilmoisture_2001 zonaloutput,
soilmoisture_2002 zonaloutput,
soilmoisture_2003 zonaloutput,
soilmoisture_2004 zonaloutput,
soilmoisture_2005 zonaloutput,
soilmoisture_2006 zonaloutput,
soilmoisture_2007 zonaloutput,
soilmoisture_2008 zonaloutput,
soilmoisture_2009 zonaloutput,
soilmoisture_2010 zonaloutput,
soilmoisture_2011 zonaloutput,
soilmoisture_2012 zonaloutput,
soilmoisture_2013 zonaloutput,
soilmoisture_2014 zonaloutput,
soilmoisture_2015 zonaloutput,
soilmoisture_2016 zonaloutput,
soilmoisture_2017 zonaloutput,
soilmoisture_2018 zonaloutput,
soilmoisture_2019 zonaloutput) INNER JOIN faogaul_state_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_relativesoilmoisture_state_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_relativesoilmoisture_state_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (relativesoilmoisture_1958).zmean as relativesoilmoisture_zonalmean_1958,
       (relativesoilmoisture_1958).zmin as relativesoilmoisture_zonalmin_1958,
       (relativesoilmoisture_1958).zmax as relativesoilmoisture_zonalmax_1958
,(relativesoilmoisture_1959).zmean as relativesoilmoisture_zonalmean_1959,
       (relativesoilmoisture_1959).zmin as relativesoilmoisture_zonalmin_1959,
       (relativesoilmoisture_1959).zmax as relativesoilmoisture_zonalmax_1959
,(relativesoilmoisture_1960).zmean as relativesoilmoisture_zonalmean_1960,
       (relativesoilmoisture_1960).zmin as relativesoilmoisture_zonalmin_1960,
       (relativesoilmoisture_1960).zmax as relativesoilmoisture_zonalmax_1960
,(relativesoilmoisture_1961).zmean as relativesoilmoisture_zonalmean_1961,
       (relativesoilmoisture_1961).zmin as relativesoilmoisture_zonalmin_1961,
       (relativesoilmoisture_1961).zmax as relativesoilmoisture_zonalmax_1961
,(relativesoilmoisture_1962).zmean as relativesoilmoisture_zonalmean_1962,
       (relativesoilmoisture_1962).zmin as relativesoilmoisture_zonalmin_1962,
       (relativesoilmoisture_1962).zmax as relativesoilmoisture_zonalmax_1962
,(relativesoilmoisture_1963).zmean as relativesoilmoisture_zonalmean_1963,
       (relativesoilmoisture_1963).zmin as relativesoilmoisture_zonalmin_1963,
       (relativesoilmoisture_1963).zmax as relativesoilmoisture_zonalmax_1963
,(relativesoilmoisture_1964).zmean as relativesoilmoisture_zonalmean_1964,
       (relativesoilmoisture_1964).zmin as relativesoilmoisture_zonalmin_1964,
       (relativesoilmoisture_1964).zmax as relativesoilmoisture_zonalmax_1964
,(relativesoilmoisture_1965).zmean as relativesoilmoisture_zonalmean_1965,
       (relativesoilmoisture_1965).zmin as relativesoilmoisture_zonalmin_1965,
       (relativesoilmoisture_1965).zmax as relativesoilmoisture_zonalmax_1965
,(relativesoilmoisture_1966).zmean as relativesoilmoisture_zonalmean_1966,
       (relativesoilmoisture_1966).zmin as relativesoilmoisture_zonalmin_1966,
       (relativesoilmoisture_1966).zmax as relativesoilmoisture_zonalmax_1966
,(relativesoilmoisture_1967).zmean as relativesoilmoisture_zonalmean_1967,
       (relativesoilmoisture_1967).zmin as relativesoilmoisture_zonalmin_1967,
       (relativesoilmoisture_1967).zmax as relativesoilmoisture_zonalmax_1967
,(relativesoilmoisture_1968).zmean as relativesoilmoisture_zonalmean_1968,
       (relativesoilmoisture_1968).zmin as relativesoilmoisture_zonalmin_1968,
       (relativesoilmoisture_1968).zmax as relativesoilmoisture_zonalmax_1968
,(relativesoilmoisture_1969).zmean as relativesoilmoisture_zonalmean_1969,
       (relativesoilmoisture_1969).zmin as relativesoilmoisture_zonalmin_1969,
       (relativesoilmoisture_1969).zmax as relativesoilmoisture_zonalmax_1969
,(relativesoilmoisture_1970).zmean as relativesoilmoisture_zonalmean_1970,
       (relativesoilmoisture_1970).zmin as relativesoilmoisture_zonalmin_1970,
       (relativesoilmoisture_1970).zmax as relativesoilmoisture_zonalmax_1970
,(relativesoilmoisture_1971).zmean as relativesoilmoisture_zonalmean_1971,
       (relativesoilmoisture_1971).zmin as relativesoilmoisture_zonalmin_1971,
       (relativesoilmoisture_1971).zmax as relativesoilmoisture_zonalmax_1971
,(relativesoilmoisture_1972).zmean as relativesoilmoisture_zonalmean_1972,
       (relativesoilmoisture_1972).zmin as relativesoilmoisture_zonalmin_1972,
       (relativesoilmoisture_1972).zmax as relativesoilmoisture_zonalmax_1972
,(relativesoilmoisture_1973).zmean as relativesoilmoisture_zonalmean_1973,
       (relativesoilmoisture_1973).zmin as relativesoilmoisture_zonalmin_1973,
       (relativesoilmoisture_1973).zmax as relativesoilmoisture_zonalmax_1973
,(relativesoilmoisture_1974).zmean as relativesoilmoisture_zonalmean_1974,
       (relativesoilmoisture_1974).zmin as relativesoilmoisture_zonalmin_1974,
       (relativesoilmoisture_1974).zmax as relativesoilmoisture_zonalmax_1974
,(relativesoilmoisture_1975).zmean as relativesoilmoisture_zonalmean_1975,
       (relativesoilmoisture_1975).zmin as relativesoilmoisture_zonalmin_1975,
       (relativesoilmoisture_1975).zmax as relativesoilmoisture_zonalmax_1975
,(relativesoilmoisture_1976).zmean as relativesoilmoisture_zonalmean_1976,
       (relativesoilmoisture_1976).zmin as relativesoilmoisture_zonalmin_1976,
       (relativesoilmoisture_1976).zmax as relativesoilmoisture_zonalmax_1976
,(relativesoilmoisture_1977).zmean as relativesoilmoisture_zonalmean_1977,
       (relativesoilmoisture_1977).zmin as relativesoilmoisture_zonalmin_1977,
       (relativesoilmoisture_1977).zmax as relativesoilmoisture_zonalmax_1977
,(relativesoilmoisture_1978).zmean as relativesoilmoisture_zonalmean_1978,
       (relativesoilmoisture_1978).zmin as relativesoilmoisture_zonalmin_1978,
       (relativesoilmoisture_1978).zmax as relativesoilmoisture_zonalmax_1978
,(relativesoilmoisture_1979).zmean as relativesoilmoisture_zonalmean_1979,
       (relativesoilmoisture_1979).zmin as relativesoilmoisture_zonalmin_1979,
       (relativesoilmoisture_1979).zmax as relativesoilmoisture_zonalmax_1979
,(relativesoilmoisture_1980).zmean as relativesoilmoisture_zonalmean_1980,
       (relativesoilmoisture_1980).zmin as relativesoilmoisture_zonalmin_1980,
       (relativesoilmoisture_1980).zmax as relativesoilmoisture_zonalmax_1980
,(relativesoilmoisture_1981).zmean as relativesoilmoisture_zonalmean_1981,
       (relativesoilmoisture_1981).zmin as relativesoilmoisture_zonalmin_1981,
       (relativesoilmoisture_1981).zmax as relativesoilmoisture_zonalmax_1981
,(relativesoilmoisture_1982).zmean as relativesoilmoisture_zonalmean_1982,
       (relativesoilmoisture_1982).zmin as relativesoilmoisture_zonalmin_1982,
       (relativesoilmoisture_1982).zmax as relativesoilmoisture_zonalmax_1982
,(relativesoilmoisture_1983).zmean as relativesoilmoisture_zonalmean_1983,
       (relativesoilmoisture_1983).zmin as relativesoilmoisture_zonalmin_1983,
       (relativesoilmoisture_1983).zmax as relativesoilmoisture_zonalmax_1983
,(relativesoilmoisture_1984).zmean as relativesoilmoisture_zonalmean_1984,
       (relativesoilmoisture_1984).zmin as relativesoilmoisture_zonalmin_1984,
       (relativesoilmoisture_1984).zmax as relativesoilmoisture_zonalmax_1984
,(relativesoilmoisture_1985).zmean as relativesoilmoisture_zonalmean_1985,
       (relativesoilmoisture_1985).zmin as relativesoilmoisture_zonalmin_1985,
       (relativesoilmoisture_1985).zmax as relativesoilmoisture_zonalmax_1985
,(relativesoilmoisture_1986).zmean as relativesoilmoisture_zonalmean_1986,
       (relativesoilmoisture_1986).zmin as relativesoilmoisture_zonalmin_1986,
       (relativesoilmoisture_1986).zmax as relativesoilmoisture_zonalmax_1986
,(relativesoilmoisture_1987).zmean as relativesoilmoisture_zonalmean_1987,
       (relativesoilmoisture_1987).zmin as relativesoilmoisture_zonalmin_1987,
       (relativesoilmoisture_1987).zmax as relativesoilmoisture_zonalmax_1987
,(relativesoilmoisture_1988).zmean as relativesoilmoisture_zonalmean_1988,
       (relativesoilmoisture_1988).zmin as relativesoilmoisture_zonalmin_1988,
       (relativesoilmoisture_1988).zmax as relativesoilmoisture_zonalmax_1988
,(relativesoilmoisture_1989).zmean as relativesoilmoisture_zonalmean_1989,
       (relativesoilmoisture_1989).zmin as relativesoilmoisture_zonalmin_1989,
       (relativesoilmoisture_1989).zmax as relativesoilmoisture_zonalmax_1989
,(relativesoilmoisture_1990).zmean as relativesoilmoisture_zonalmean_1990,
       (relativesoilmoisture_1990).zmin as relativesoilmoisture_zonalmin_1990,
       (relativesoilmoisture_1990).zmax as relativesoilmoisture_zonalmax_1990
,(relativesoilmoisture_1991).zmean as relativesoilmoisture_zonalmean_1991,
       (relativesoilmoisture_1991).zmin as relativesoilmoisture_zonalmin_1991,
       (relativesoilmoisture_1991).zmax as relativesoilmoisture_zonalmax_1991
,(relativesoilmoisture_1992).zmean as relativesoilmoisture_zonalmean_1992,
       (relativesoilmoisture_1992).zmin as relativesoilmoisture_zonalmin_1992,
       (relativesoilmoisture_1992).zmax as relativesoilmoisture_zonalmax_1992
,(relativesoilmoisture_1993).zmean as relativesoilmoisture_zonalmean_1993,
       (relativesoilmoisture_1993).zmin as relativesoilmoisture_zonalmin_1993,
       (relativesoilmoisture_1993).zmax as relativesoilmoisture_zonalmax_1993
,(relativesoilmoisture_1994).zmean as relativesoilmoisture_zonalmean_1994,
       (relativesoilmoisture_1994).zmin as relativesoilmoisture_zonalmin_1994,
       (relativesoilmoisture_1994).zmax as relativesoilmoisture_zonalmax_1994
,(relativesoilmoisture_1995).zmean as relativesoilmoisture_zonalmean_1995,
       (relativesoilmoisture_1995).zmin as relativesoilmoisture_zonalmin_1995,
       (relativesoilmoisture_1995).zmax as relativesoilmoisture_zonalmax_1995
,(relativesoilmoisture_1996).zmean as relativesoilmoisture_zonalmean_1996,
       (relativesoilmoisture_1996).zmin as relativesoilmoisture_zonalmin_1996,
       (relativesoilmoisture_1996).zmax as relativesoilmoisture_zonalmax_1996
,(relativesoilmoisture_1997).zmean as relativesoilmoisture_zonalmean_1997,
       (relativesoilmoisture_1997).zmin as relativesoilmoisture_zonalmin_1997,
       (relativesoilmoisture_1997).zmax as relativesoilmoisture_zonalmax_1997
,(relativesoilmoisture_1998).zmean as relativesoilmoisture_zonalmean_1998,
       (relativesoilmoisture_1998).zmin as relativesoilmoisture_zonalmin_1998,
       (relativesoilmoisture_1998).zmax as relativesoilmoisture_zonalmax_1998
,(relativesoilmoisture_1999).zmean as relativesoilmoisture_zonalmean_1999,
       (relativesoilmoisture_1999).zmin as relativesoilmoisture_zonalmin_1999,
       (relativesoilmoisture_1999).zmax as relativesoilmoisture_zonalmax_1999
,(relativesoilmoisture_2000).zmean as relativesoilmoisture_zonalmean_2000,
       (relativesoilmoisture_2000).zmin as relativesoilmoisture_zonalmin_2000,
       (relativesoilmoisture_2000).zmax as relativesoilmoisture_zonalmax_2000
,(relativesoilmoisture_2001).zmean as relativesoilmoisture_zonalmean_2001,
       (relativesoilmoisture_2001).zmin as relativesoilmoisture_zonalmin_2001,
       (relativesoilmoisture_2001).zmax as relativesoilmoisture_zonalmax_2001
,(relativesoilmoisture_2002).zmean as relativesoilmoisture_zonalmean_2002,
       (relativesoilmoisture_2002).zmin as relativesoilmoisture_zonalmin_2002,
       (relativesoilmoisture_2002).zmax as relativesoilmoisture_zonalmax_2002
,(relativesoilmoisture_2003).zmean as relativesoilmoisture_zonalmean_2003,
       (relativesoilmoisture_2003).zmin as relativesoilmoisture_zonalmin_2003,
       (relativesoilmoisture_2003).zmax as relativesoilmoisture_zonalmax_2003
,(relativesoilmoisture_2004).zmean as relativesoilmoisture_zonalmean_2004,
       (relativesoilmoisture_2004).zmin as relativesoilmoisture_zonalmin_2004,
       (relativesoilmoisture_2004).zmax as relativesoilmoisture_zonalmax_2004
,(relativesoilmoisture_2005).zmean as relativesoilmoisture_zonalmean_2005,
       (relativesoilmoisture_2005).zmin as relativesoilmoisture_zonalmin_2005,
       (relativesoilmoisture_2005).zmax as relativesoilmoisture_zonalmax_2005
,(relativesoilmoisture_2006).zmean as relativesoilmoisture_zonalmean_2006,
       (relativesoilmoisture_2006).zmin as relativesoilmoisture_zonalmin_2006,
       (relativesoilmoisture_2006).zmax as relativesoilmoisture_zonalmax_2006
,(relativesoilmoisture_2007).zmean as relativesoilmoisture_zonalmean_2007,
       (relativesoilmoisture_2007).zmin as relativesoilmoisture_zonalmin_2007,
       (relativesoilmoisture_2007).zmax as relativesoilmoisture_zonalmax_2007
,(relativesoilmoisture_2008).zmean as relativesoilmoisture_zonalmean_2008,
       (relativesoilmoisture_2008).zmin as relativesoilmoisture_zonalmin_2008,
       (relativesoilmoisture_2008).zmax as relativesoilmoisture_zonalmax_2008
,(relativesoilmoisture_2009).zmean as relativesoilmoisture_zonalmean_2009,
       (relativesoilmoisture_2009).zmin as relativesoilmoisture_zonalmin_2009,
       (relativesoilmoisture_2009).zmax as relativesoilmoisture_zonalmax_2009
,(relativesoilmoisture_2010).zmean as relativesoilmoisture_zonalmean_2010,
       (relativesoilmoisture_2010).zmin as relativesoilmoisture_zonalmin_2010,
       (relativesoilmoisture_2010).zmax as relativesoilmoisture_zonalmax_2010
,(relativesoilmoisture_2011).zmean as relativesoilmoisture_zonalmean_2011,
       (relativesoilmoisture_2011).zmin as relativesoilmoisture_zonalmin_2011,
       (relativesoilmoisture_2011).zmax as relativesoilmoisture_zonalmax_2011
,(relativesoilmoisture_2012).zmean as relativesoilmoisture_zonalmean_2012,
       (relativesoilmoisture_2012).zmin as relativesoilmoisture_zonalmin_2012,
       (relativesoilmoisture_2012).zmax as relativesoilmoisture_zonalmax_2012
,(relativesoilmoisture_2013).zmean as relativesoilmoisture_zonalmean_2013,
       (relativesoilmoisture_2013).zmin as relativesoilmoisture_zonalmin_2013,
       (relativesoilmoisture_2013).zmax as relativesoilmoisture_zonalmax_2013
,(relativesoilmoisture_2014).zmean as relativesoilmoisture_zonalmean_2014,
       (relativesoilmoisture_2014).zmin as relativesoilmoisture_zonalmin_2014,
       (relativesoilmoisture_2014).zmax as relativesoilmoisture_zonalmax_2014
,(relativesoilmoisture_2015).zmean as relativesoilmoisture_zonalmean_2015,
       (relativesoilmoisture_2015).zmin as relativesoilmoisture_zonalmin_2015,
       (relativesoilmoisture_2015).zmax as relativesoilmoisture_zonalmax_2015
,(relativesoilmoisture_2016).zmean as relativesoilmoisture_zonalmean_2016,
       (relativesoilmoisture_2016).zmin as relativesoilmoisture_zonalmin_2016,
       (relativesoilmoisture_2016).zmax as relativesoilmoisture_zonalmax_2016
,(relativesoilmoisture_2017).zmean as relativesoilmoisture_zonalmean_2017,
       (relativesoilmoisture_2017).zmin as relativesoilmoisture_zonalmin_2017,
       (relativesoilmoisture_2017).zmax as relativesoilmoisture_zonalmax_2017
,(relativesoilmoisture_2018).zmean as relativesoilmoisture_zonalmean_2018,
       (relativesoilmoisture_2018).zmin as relativesoilmoisture_zonalmin_2018,
       (relativesoilmoisture_2018).zmax as relativesoilmoisture_zonalmax_2018
,(relativesoilmoisture_2019).zmean as relativesoilmoisture_zonalmean_2019,
       (relativesoilmoisture_2019).zmin as relativesoilmoisture_zonalmin_2019,
       (relativesoilmoisture_2019).zmax as relativesoilmoisture_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "relativesoilmoisture_state_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, relativesoilmoisture_1958 zonaloutput,
relativesoilmoisture_1959 zonaloutput,
relativesoilmoisture_1960 zonaloutput,
relativesoilmoisture_1961 zonaloutput,
relativesoilmoisture_1962 zonaloutput,
relativesoilmoisture_1963 zonaloutput,
relativesoilmoisture_1964 zonaloutput,
relativesoilmoisture_1965 zonaloutput,
relativesoilmoisture_1966 zonaloutput,
relativesoilmoisture_1967 zonaloutput,
relativesoilmoisture_1968 zonaloutput,
relativesoilmoisture_1969 zonaloutput,
relativesoilmoisture_1970 zonaloutput,
relativesoilmoisture_1971 zonaloutput,
relativesoilmoisture_1972 zonaloutput,
relativesoilmoisture_1973 zonaloutput,
relativesoilmoisture_1974 zonaloutput,
relativesoilmoisture_1975 zonaloutput,
relativesoilmoisture_1976 zonaloutput,
relativesoilmoisture_1977 zonaloutput,
relativesoilmoisture_1978 zonaloutput,
relativesoilmoisture_1979 zonaloutput,
relativesoilmoisture_1980 zonaloutput,
relativesoilmoisture_1981 zonaloutput,
relativesoilmoisture_1982 zonaloutput,
relativesoilmoisture_1983 zonaloutput,
relativesoilmoisture_1984 zonaloutput,
relativesoilmoisture_1985 zonaloutput,
relativesoilmoisture_1986 zonaloutput,
relativesoilmoisture_1987 zonaloutput,
relativesoilmoisture_1988 zonaloutput,
relativesoilmoisture_1989 zonaloutput,
relativesoilmoisture_1990 zonaloutput,
relativesoilmoisture_1991 zonaloutput,
relativesoilmoisture_1992 zonaloutput,
relativesoilmoisture_1993 zonaloutput,
relativesoilmoisture_1994 zonaloutput,
relativesoilmoisture_1995 zonaloutput,
relativesoilmoisture_1996 zonaloutput,
relativesoilmoisture_1997 zonaloutput,
relativesoilmoisture_1998 zonaloutput,
relativesoilmoisture_1999 zonaloutput,
relativesoilmoisture_2000 zonaloutput,
relativesoilmoisture_2001 zonaloutput,
relativesoilmoisture_2002 zonaloutput,
relativesoilmoisture_2003 zonaloutput,
relativesoilmoisture_2004 zonaloutput,
relativesoilmoisture_2005 zonaloutput,
relativesoilmoisture_2006 zonaloutput,
relativesoilmoisture_2007 zonaloutput,
relativesoilmoisture_2008 zonaloutput,
relativesoilmoisture_2009 zonaloutput,
relativesoilmoisture_2010 zonaloutput,
relativesoilmoisture_2011 zonaloutput,
relativesoilmoisture_2012 zonaloutput,
relativesoilmoisture_2013 zonaloutput,
relativesoilmoisture_2014 zonaloutput,
relativesoilmoisture_2015 zonaloutput,
relativesoilmoisture_2016 zonaloutput,
relativesoilmoisture_2017 zonaloutput,
relativesoilmoisture_2018 zonaloutput,
relativesoilmoisture_2019 zonaloutput) INNER JOIN faogaul_state_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_rainpet_state_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_rainpet_state_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (rainpet_1958).zmean as rainpet_zonalmean_1958,
       (rainpet_1958).zmin as rainpet_zonalmin_1958,
       (rainpet_1958).zmax as rainpet_zonalmax_1958
,(rainpet_1959).zmean as rainpet_zonalmean_1959,
       (rainpet_1959).zmin as rainpet_zonalmin_1959,
       (rainpet_1959).zmax as rainpet_zonalmax_1959
,(rainpet_1960).zmean as rainpet_zonalmean_1960,
       (rainpet_1960).zmin as rainpet_zonalmin_1960,
       (rainpet_1960).zmax as rainpet_zonalmax_1960
,(rainpet_1961).zmean as rainpet_zonalmean_1961,
       (rainpet_1961).zmin as rainpet_zonalmin_1961,
       (rainpet_1961).zmax as rainpet_zonalmax_1961
,(rainpet_1962).zmean as rainpet_zonalmean_1962,
       (rainpet_1962).zmin as rainpet_zonalmin_1962,
       (rainpet_1962).zmax as rainpet_zonalmax_1962
,(rainpet_1963).zmean as rainpet_zonalmean_1963,
       (rainpet_1963).zmin as rainpet_zonalmin_1963,
       (rainpet_1963).zmax as rainpet_zonalmax_1963
,(rainpet_1964).zmean as rainpet_zonalmean_1964,
       (rainpet_1964).zmin as rainpet_zonalmin_1964,
       (rainpet_1964).zmax as rainpet_zonalmax_1964
,(rainpet_1965).zmean as rainpet_zonalmean_1965,
       (rainpet_1965).zmin as rainpet_zonalmin_1965,
       (rainpet_1965).zmax as rainpet_zonalmax_1965
,(rainpet_1966).zmean as rainpet_zonalmean_1966,
       (rainpet_1966).zmin as rainpet_zonalmin_1966,
       (rainpet_1966).zmax as rainpet_zonalmax_1966
,(rainpet_1967).zmean as rainpet_zonalmean_1967,
       (rainpet_1967).zmin as rainpet_zonalmin_1967,
       (rainpet_1967).zmax as rainpet_zonalmax_1967
,(rainpet_1968).zmean as rainpet_zonalmean_1968,
       (rainpet_1968).zmin as rainpet_zonalmin_1968,
       (rainpet_1968).zmax as rainpet_zonalmax_1968
,(rainpet_1969).zmean as rainpet_zonalmean_1969,
       (rainpet_1969).zmin as rainpet_zonalmin_1969,
       (rainpet_1969).zmax as rainpet_zonalmax_1969
,(rainpet_1970).zmean as rainpet_zonalmean_1970,
       (rainpet_1970).zmin as rainpet_zonalmin_1970,
       (rainpet_1970).zmax as rainpet_zonalmax_1970
,(rainpet_1971).zmean as rainpet_zonalmean_1971,
       (rainpet_1971).zmin as rainpet_zonalmin_1971,
       (rainpet_1971).zmax as rainpet_zonalmax_1971
,(rainpet_1972).zmean as rainpet_zonalmean_1972,
       (rainpet_1972).zmin as rainpet_zonalmin_1972,
       (rainpet_1972).zmax as rainpet_zonalmax_1972
,(rainpet_1973).zmean as rainpet_zonalmean_1973,
       (rainpet_1973).zmin as rainpet_zonalmin_1973,
       (rainpet_1973).zmax as rainpet_zonalmax_1973
,(rainpet_1974).zmean as rainpet_zonalmean_1974,
       (rainpet_1974).zmin as rainpet_zonalmin_1974,
       (rainpet_1974).zmax as rainpet_zonalmax_1974
,(rainpet_1975).zmean as rainpet_zonalmean_1975,
       (rainpet_1975).zmin as rainpet_zonalmin_1975,
       (rainpet_1975).zmax as rainpet_zonalmax_1975
,(rainpet_1976).zmean as rainpet_zonalmean_1976,
       (rainpet_1976).zmin as rainpet_zonalmin_1976,
       (rainpet_1976).zmax as rainpet_zonalmax_1976
,(rainpet_1977).zmean as rainpet_zonalmean_1977,
       (rainpet_1977).zmin as rainpet_zonalmin_1977,
       (rainpet_1977).zmax as rainpet_zonalmax_1977
,(rainpet_1978).zmean as rainpet_zonalmean_1978,
       (rainpet_1978).zmin as rainpet_zonalmin_1978,
       (rainpet_1978).zmax as rainpet_zonalmax_1978
,(rainpet_1979).zmean as rainpet_zonalmean_1979,
       (rainpet_1979).zmin as rainpet_zonalmin_1979,
       (rainpet_1979).zmax as rainpet_zonalmax_1979
,(rainpet_1980).zmean as rainpet_zonalmean_1980,
       (rainpet_1980).zmin as rainpet_zonalmin_1980,
       (rainpet_1980).zmax as rainpet_zonalmax_1980
,(rainpet_1981).zmean as rainpet_zonalmean_1981,
       (rainpet_1981).zmin as rainpet_zonalmin_1981,
       (rainpet_1981).zmax as rainpet_zonalmax_1981
,(rainpet_1982).zmean as rainpet_zonalmean_1982,
       (rainpet_1982).zmin as rainpet_zonalmin_1982,
       (rainpet_1982).zmax as rainpet_zonalmax_1982
,(rainpet_1983).zmean as rainpet_zonalmean_1983,
       (rainpet_1983).zmin as rainpet_zonalmin_1983,
       (rainpet_1983).zmax as rainpet_zonalmax_1983
,(rainpet_1984).zmean as rainpet_zonalmean_1984,
       (rainpet_1984).zmin as rainpet_zonalmin_1984,
       (rainpet_1984).zmax as rainpet_zonalmax_1984
,(rainpet_1985).zmean as rainpet_zonalmean_1985,
       (rainpet_1985).zmin as rainpet_zonalmin_1985,
       (rainpet_1985).zmax as rainpet_zonalmax_1985
,(rainpet_1986).zmean as rainpet_zonalmean_1986,
       (rainpet_1986).zmin as rainpet_zonalmin_1986,
       (rainpet_1986).zmax as rainpet_zonalmax_1986
,(rainpet_1987).zmean as rainpet_zonalmean_1987,
       (rainpet_1987).zmin as rainpet_zonalmin_1987,
       (rainpet_1987).zmax as rainpet_zonalmax_1987
,(rainpet_1988).zmean as rainpet_zonalmean_1988,
       (rainpet_1988).zmin as rainpet_zonalmin_1988,
       (rainpet_1988).zmax as rainpet_zonalmax_1988
,(rainpet_1989).zmean as rainpet_zonalmean_1989,
       (rainpet_1989).zmin as rainpet_zonalmin_1989,
       (rainpet_1989).zmax as rainpet_zonalmax_1989
,(rainpet_1990).zmean as rainpet_zonalmean_1990,
       (rainpet_1990).zmin as rainpet_zonalmin_1990,
       (rainpet_1990).zmax as rainpet_zonalmax_1990
,(rainpet_1991).zmean as rainpet_zonalmean_1991,
       (rainpet_1991).zmin as rainpet_zonalmin_1991,
       (rainpet_1991).zmax as rainpet_zonalmax_1991
,(rainpet_1992).zmean as rainpet_zonalmean_1992,
       (rainpet_1992).zmin as rainpet_zonalmin_1992,
       (rainpet_1992).zmax as rainpet_zonalmax_1992
,(rainpet_1993).zmean as rainpet_zonalmean_1993,
       (rainpet_1993).zmin as rainpet_zonalmin_1993,
       (rainpet_1993).zmax as rainpet_zonalmax_1993
,(rainpet_1994).zmean as rainpet_zonalmean_1994,
       (rainpet_1994).zmin as rainpet_zonalmin_1994,
       (rainpet_1994).zmax as rainpet_zonalmax_1994
,(rainpet_1995).zmean as rainpet_zonalmean_1995,
       (rainpet_1995).zmin as rainpet_zonalmin_1995,
       (rainpet_1995).zmax as rainpet_zonalmax_1995
,(rainpet_1996).zmean as rainpet_zonalmean_1996,
       (rainpet_1996).zmin as rainpet_zonalmin_1996,
       (rainpet_1996).zmax as rainpet_zonalmax_1996
,(rainpet_1997).zmean as rainpet_zonalmean_1997,
       (rainpet_1997).zmin as rainpet_zonalmin_1997,
       (rainpet_1997).zmax as rainpet_zonalmax_1997
,(rainpet_1998).zmean as rainpet_zonalmean_1998,
       (rainpet_1998).zmin as rainpet_zonalmin_1998,
       (rainpet_1998).zmax as rainpet_zonalmax_1998
,(rainpet_1999).zmean as rainpet_zonalmean_1999,
       (rainpet_1999).zmin as rainpet_zonalmin_1999,
       (rainpet_1999).zmax as rainpet_zonalmax_1999
,(rainpet_2000).zmean as rainpet_zonalmean_2000,
       (rainpet_2000).zmin as rainpet_zonalmin_2000,
       (rainpet_2000).zmax as rainpet_zonalmax_2000
,(rainpet_2001).zmean as rainpet_zonalmean_2001,
       (rainpet_2001).zmin as rainpet_zonalmin_2001,
       (rainpet_2001).zmax as rainpet_zonalmax_2001
,(rainpet_2002).zmean as rainpet_zonalmean_2002,
       (rainpet_2002).zmin as rainpet_zonalmin_2002,
       (rainpet_2002).zmax as rainpet_zonalmax_2002
,(rainpet_2003).zmean as rainpet_zonalmean_2003,
       (rainpet_2003).zmin as rainpet_zonalmin_2003,
       (rainpet_2003).zmax as rainpet_zonalmax_2003
,(rainpet_2004).zmean as rainpet_zonalmean_2004,
       (rainpet_2004).zmin as rainpet_zonalmin_2004,
       (rainpet_2004).zmax as rainpet_zonalmax_2004
,(rainpet_2005).zmean as rainpet_zonalmean_2005,
       (rainpet_2005).zmin as rainpet_zonalmin_2005,
       (rainpet_2005).zmax as rainpet_zonalmax_2005
,(rainpet_2006).zmean as rainpet_zonalmean_2006,
       (rainpet_2006).zmin as rainpet_zonalmin_2006,
       (rainpet_2006).zmax as rainpet_zonalmax_2006
,(rainpet_2007).zmean as rainpet_zonalmean_2007,
       (rainpet_2007).zmin as rainpet_zonalmin_2007,
       (rainpet_2007).zmax as rainpet_zonalmax_2007
,(rainpet_2008).zmean as rainpet_zonalmean_2008,
       (rainpet_2008).zmin as rainpet_zonalmin_2008,
       (rainpet_2008).zmax as rainpet_zonalmax_2008
,(rainpet_2009).zmean as rainpet_zonalmean_2009,
       (rainpet_2009).zmin as rainpet_zonalmin_2009,
       (rainpet_2009).zmax as rainpet_zonalmax_2009
,(rainpet_2010).zmean as rainpet_zonalmean_2010,
       (rainpet_2010).zmin as rainpet_zonalmin_2010,
       (rainpet_2010).zmax as rainpet_zonalmax_2010
,(rainpet_2011).zmean as rainpet_zonalmean_2011,
       (rainpet_2011).zmin as rainpet_zonalmin_2011,
       (rainpet_2011).zmax as rainpet_zonalmax_2011
,(rainpet_2012).zmean as rainpet_zonalmean_2012,
       (rainpet_2012).zmin as rainpet_zonalmin_2012,
       (rainpet_2012).zmax as rainpet_zonalmax_2012
,(rainpet_2013).zmean as rainpet_zonalmean_2013,
       (rainpet_2013).zmin as rainpet_zonalmin_2013,
       (rainpet_2013).zmax as rainpet_zonalmax_2013
,(rainpet_2014).zmean as rainpet_zonalmean_2014,
       (rainpet_2014).zmin as rainpet_zonalmin_2014,
       (rainpet_2014).zmax as rainpet_zonalmax_2014
,(rainpet_2015).zmean as rainpet_zonalmean_2015,
       (rainpet_2015).zmin as rainpet_zonalmin_2015,
       (rainpet_2015).zmax as rainpet_zonalmax_2015
,(rainpet_2016).zmean as rainpet_zonalmean_2016,
       (rainpet_2016).zmin as rainpet_zonalmin_2016,
       (rainpet_2016).zmax as rainpet_zonalmax_2016
,(rainpet_2017).zmean as rainpet_zonalmean_2017,
       (rainpet_2017).zmin as rainpet_zonalmin_2017,
       (rainpet_2017).zmax as rainpet_zonalmax_2017
,(rainpet_2018).zmean as rainpet_zonalmean_2018,
       (rainpet_2018).zmin as rainpet_zonalmin_2018,
       (rainpet_2018).zmax as rainpet_zonalmax_2018
,(rainpet_2019).zmean as rainpet_zonalmean_2019,
       (rainpet_2019).zmin as rainpet_zonalmin_2019,
       (rainpet_2019).zmax as rainpet_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "rainpet_state_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, rainpet_1958 zonaloutput,
rainpet_1959 zonaloutput,
rainpet_1960 zonaloutput,
rainpet_1961 zonaloutput,
rainpet_1962 zonaloutput,
rainpet_1963 zonaloutput,
rainpet_1964 zonaloutput,
rainpet_1965 zonaloutput,
rainpet_1966 zonaloutput,
rainpet_1967 zonaloutput,
rainpet_1968 zonaloutput,
rainpet_1969 zonaloutput,
rainpet_1970 zonaloutput,
rainpet_1971 zonaloutput,
rainpet_1972 zonaloutput,
rainpet_1973 zonaloutput,
rainpet_1974 zonaloutput,
rainpet_1975 zonaloutput,
rainpet_1976 zonaloutput,
rainpet_1977 zonaloutput,
rainpet_1978 zonaloutput,
rainpet_1979 zonaloutput,
rainpet_1980 zonaloutput,
rainpet_1981 zonaloutput,
rainpet_1982 zonaloutput,
rainpet_1983 zonaloutput,
rainpet_1984 zonaloutput,
rainpet_1985 zonaloutput,
rainpet_1986 zonaloutput,
rainpet_1987 zonaloutput,
rainpet_1988 zonaloutput,
rainpet_1989 zonaloutput,
rainpet_1990 zonaloutput,
rainpet_1991 zonaloutput,
rainpet_1992 zonaloutput,
rainpet_1993 zonaloutput,
rainpet_1994 zonaloutput,
rainpet_1995 zonaloutput,
rainpet_1996 zonaloutput,
rainpet_1997 zonaloutput,
rainpet_1998 zonaloutput,
rainpet_1999 zonaloutput,
rainpet_2000 zonaloutput,
rainpet_2001 zonaloutput,
rainpet_2002 zonaloutput,
rainpet_2003 zonaloutput,
rainpet_2004 zonaloutput,
rainpet_2005 zonaloutput,
rainpet_2006 zonaloutput,
rainpet_2007 zonaloutput,
rainpet_2008 zonaloutput,
rainpet_2009 zonaloutput,
rainpet_2010 zonaloutput,
rainpet_2011 zonaloutput,
rainpet_2012 zonaloutput,
rainpet_2013 zonaloutput,
rainpet_2014 zonaloutput,
rainpet_2015 zonaloutput,
rainpet_2016 zonaloutput,
rainpet_2017 zonaloutput,
rainpet_2018 zonaloutput,
rainpet_2019 zonaloutput) INNER JOIN faogaul_state_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_snowpack_state_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_snowpack_state_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (snowpack_1958).zmean as snowpack_zonalmean_1958,
       (snowpack_1958).zmin as snowpack_zonalmin_1958,
       (snowpack_1958).zmax as snowpack_zonalmax_1958
,(snowpack_1959).zmean as snowpack_zonalmean_1959,
       (snowpack_1959).zmin as snowpack_zonalmin_1959,
       (snowpack_1959).zmax as snowpack_zonalmax_1959
,(snowpack_1960).zmean as snowpack_zonalmean_1960,
       (snowpack_1960).zmin as snowpack_zonalmin_1960,
       (snowpack_1960).zmax as snowpack_zonalmax_1960
,(snowpack_1961).zmean as snowpack_zonalmean_1961,
       (snowpack_1961).zmin as snowpack_zonalmin_1961,
       (snowpack_1961).zmax as snowpack_zonalmax_1961
,(snowpack_1962).zmean as snowpack_zonalmean_1962,
       (snowpack_1962).zmin as snowpack_zonalmin_1962,
       (snowpack_1962).zmax as snowpack_zonalmax_1962
,(snowpack_1963).zmean as snowpack_zonalmean_1963,
       (snowpack_1963).zmin as snowpack_zonalmin_1963,
       (snowpack_1963).zmax as snowpack_zonalmax_1963
,(snowpack_1964).zmean as snowpack_zonalmean_1964,
       (snowpack_1964).zmin as snowpack_zonalmin_1964,
       (snowpack_1964).zmax as snowpack_zonalmax_1964
,(snowpack_1965).zmean as snowpack_zonalmean_1965,
       (snowpack_1965).zmin as snowpack_zonalmin_1965,
       (snowpack_1965).zmax as snowpack_zonalmax_1965
,(snowpack_1966).zmean as snowpack_zonalmean_1966,
       (snowpack_1966).zmin as snowpack_zonalmin_1966,
       (snowpack_1966).zmax as snowpack_zonalmax_1966
,(snowpack_1967).zmean as snowpack_zonalmean_1967,
       (snowpack_1967).zmin as snowpack_zonalmin_1967,
       (snowpack_1967).zmax as snowpack_zonalmax_1967
,(snowpack_1968).zmean as snowpack_zonalmean_1968,
       (snowpack_1968).zmin as snowpack_zonalmin_1968,
       (snowpack_1968).zmax as snowpack_zonalmax_1968
,(snowpack_1969).zmean as snowpack_zonalmean_1969,
       (snowpack_1969).zmin as snowpack_zonalmin_1969,
       (snowpack_1969).zmax as snowpack_zonalmax_1969
,(snowpack_1970).zmean as snowpack_zonalmean_1970,
       (snowpack_1970).zmin as snowpack_zonalmin_1970,
       (snowpack_1970).zmax as snowpack_zonalmax_1970
,(snowpack_1971).zmean as snowpack_zonalmean_1971,
       (snowpack_1971).zmin as snowpack_zonalmin_1971,
       (snowpack_1971).zmax as snowpack_zonalmax_1971
,(snowpack_1972).zmean as snowpack_zonalmean_1972,
       (snowpack_1972).zmin as snowpack_zonalmin_1972,
       (snowpack_1972).zmax as snowpack_zonalmax_1972
,(snowpack_1973).zmean as snowpack_zonalmean_1973,
       (snowpack_1973).zmin as snowpack_zonalmin_1973,
       (snowpack_1973).zmax as snowpack_zonalmax_1973
,(snowpack_1974).zmean as snowpack_zonalmean_1974,
       (snowpack_1974).zmin as snowpack_zonalmin_1974,
       (snowpack_1974).zmax as snowpack_zonalmax_1974
,(snowpack_1975).zmean as snowpack_zonalmean_1975,
       (snowpack_1975).zmin as snowpack_zonalmin_1975,
       (snowpack_1975).zmax as snowpack_zonalmax_1975
,(snowpack_1976).zmean as snowpack_zonalmean_1976,
       (snowpack_1976).zmin as snowpack_zonalmin_1976,
       (snowpack_1976).zmax as snowpack_zonalmax_1976
,(snowpack_1977).zmean as snowpack_zonalmean_1977,
       (snowpack_1977).zmin as snowpack_zonalmin_1977,
       (snowpack_1977).zmax as snowpack_zonalmax_1977
,(snowpack_1978).zmean as snowpack_zonalmean_1978,
       (snowpack_1978).zmin as snowpack_zonalmin_1978,
       (snowpack_1978).zmax as snowpack_zonalmax_1978
,(snowpack_1979).zmean as snowpack_zonalmean_1979,
       (snowpack_1979).zmin as snowpack_zonalmin_1979,
       (snowpack_1979).zmax as snowpack_zonalmax_1979
,(snowpack_1980).zmean as snowpack_zonalmean_1980,
       (snowpack_1980).zmin as snowpack_zonalmin_1980,
       (snowpack_1980).zmax as snowpack_zonalmax_1980
,(snowpack_1981).zmean as snowpack_zonalmean_1981,
       (snowpack_1981).zmin as snowpack_zonalmin_1981,
       (snowpack_1981).zmax as snowpack_zonalmax_1981
,(snowpack_1982).zmean as snowpack_zonalmean_1982,
       (snowpack_1982).zmin as snowpack_zonalmin_1982,
       (snowpack_1982).zmax as snowpack_zonalmax_1982
,(snowpack_1983).zmean as snowpack_zonalmean_1983,
       (snowpack_1983).zmin as snowpack_zonalmin_1983,
       (snowpack_1983).zmax as snowpack_zonalmax_1983
,(snowpack_1984).zmean as snowpack_zonalmean_1984,
       (snowpack_1984).zmin as snowpack_zonalmin_1984,
       (snowpack_1984).zmax as snowpack_zonalmax_1984
,(snowpack_1985).zmean as snowpack_zonalmean_1985,
       (snowpack_1985).zmin as snowpack_zonalmin_1985,
       (snowpack_1985).zmax as snowpack_zonalmax_1985
,(snowpack_1986).zmean as snowpack_zonalmean_1986,
       (snowpack_1986).zmin as snowpack_zonalmin_1986,
       (snowpack_1986).zmax as snowpack_zonalmax_1986
,(snowpack_1987).zmean as snowpack_zonalmean_1987,
       (snowpack_1987).zmin as snowpack_zonalmin_1987,
       (snowpack_1987).zmax as snowpack_zonalmax_1987
,(snowpack_1988).zmean as snowpack_zonalmean_1988,
       (snowpack_1988).zmin as snowpack_zonalmin_1988,
       (snowpack_1988).zmax as snowpack_zonalmax_1988
,(snowpack_1989).zmean as snowpack_zonalmean_1989,
       (snowpack_1989).zmin as snowpack_zonalmin_1989,
       (snowpack_1989).zmax as snowpack_zonalmax_1989
,(snowpack_1990).zmean as snowpack_zonalmean_1990,
       (snowpack_1990).zmin as snowpack_zonalmin_1990,
       (snowpack_1990).zmax as snowpack_zonalmax_1990
,(snowpack_1991).zmean as snowpack_zonalmean_1991,
       (snowpack_1991).zmin as snowpack_zonalmin_1991,
       (snowpack_1991).zmax as snowpack_zonalmax_1991
,(snowpack_1992).zmean as snowpack_zonalmean_1992,
       (snowpack_1992).zmin as snowpack_zonalmin_1992,
       (snowpack_1992).zmax as snowpack_zonalmax_1992
,(snowpack_1993).zmean as snowpack_zonalmean_1993,
       (snowpack_1993).zmin as snowpack_zonalmin_1993,
       (snowpack_1993).zmax as snowpack_zonalmax_1993
,(snowpack_1994).zmean as snowpack_zonalmean_1994,
       (snowpack_1994).zmin as snowpack_zonalmin_1994,
       (snowpack_1994).zmax as snowpack_zonalmax_1994
,(snowpack_1995).zmean as snowpack_zonalmean_1995,
       (snowpack_1995).zmin as snowpack_zonalmin_1995,
       (snowpack_1995).zmax as snowpack_zonalmax_1995
,(snowpack_1996).zmean as snowpack_zonalmean_1996,
       (snowpack_1996).zmin as snowpack_zonalmin_1996,
       (snowpack_1996).zmax as snowpack_zonalmax_1996
,(snowpack_1997).zmean as snowpack_zonalmean_1997,
       (snowpack_1997).zmin as snowpack_zonalmin_1997,
       (snowpack_1997).zmax as snowpack_zonalmax_1997
,(snowpack_1998).zmean as snowpack_zonalmean_1998,
       (snowpack_1998).zmin as snowpack_zonalmin_1998,
       (snowpack_1998).zmax as snowpack_zonalmax_1998
,(snowpack_1999).zmean as snowpack_zonalmean_1999,
       (snowpack_1999).zmin as snowpack_zonalmin_1999,
       (snowpack_1999).zmax as snowpack_zonalmax_1999
,(snowpack_2000).zmean as snowpack_zonalmean_2000,
       (snowpack_2000).zmin as snowpack_zonalmin_2000,
       (snowpack_2000).zmax as snowpack_zonalmax_2000
,(snowpack_2001).zmean as snowpack_zonalmean_2001,
       (snowpack_2001).zmin as snowpack_zonalmin_2001,
       (snowpack_2001).zmax as snowpack_zonalmax_2001
,(snowpack_2002).zmean as snowpack_zonalmean_2002,
       (snowpack_2002).zmin as snowpack_zonalmin_2002,
       (snowpack_2002).zmax as snowpack_zonalmax_2002
,(snowpack_2003).zmean as snowpack_zonalmean_2003,
       (snowpack_2003).zmin as snowpack_zonalmin_2003,
       (snowpack_2003).zmax as snowpack_zonalmax_2003
,(snowpack_2004).zmean as snowpack_zonalmean_2004,
       (snowpack_2004).zmin as snowpack_zonalmin_2004,
       (snowpack_2004).zmax as snowpack_zonalmax_2004
,(snowpack_2005).zmean as snowpack_zonalmean_2005,
       (snowpack_2005).zmin as snowpack_zonalmin_2005,
       (snowpack_2005).zmax as snowpack_zonalmax_2005
,(snowpack_2006).zmean as snowpack_zonalmean_2006,
       (snowpack_2006).zmin as snowpack_zonalmin_2006,
       (snowpack_2006).zmax as snowpack_zonalmax_2006
,(snowpack_2007).zmean as snowpack_zonalmean_2007,
       (snowpack_2007).zmin as snowpack_zonalmin_2007,
       (snowpack_2007).zmax as snowpack_zonalmax_2007
,(snowpack_2008).zmean as snowpack_zonalmean_2008,
       (snowpack_2008).zmin as snowpack_zonalmin_2008,
       (snowpack_2008).zmax as snowpack_zonalmax_2008
,(snowpack_2009).zmean as snowpack_zonalmean_2009,
       (snowpack_2009).zmin as snowpack_zonalmin_2009,
       (snowpack_2009).zmax as snowpack_zonalmax_2009
,(snowpack_2010).zmean as snowpack_zonalmean_2010,
       (snowpack_2010).zmin as snowpack_zonalmin_2010,
       (snowpack_2010).zmax as snowpack_zonalmax_2010
,(snowpack_2011).zmean as snowpack_zonalmean_2011,
       (snowpack_2011).zmin as snowpack_zonalmin_2011,
       (snowpack_2011).zmax as snowpack_zonalmax_2011
,(snowpack_2012).zmean as snowpack_zonalmean_2012,
       (snowpack_2012).zmin as snowpack_zonalmin_2012,
       (snowpack_2012).zmax as snowpack_zonalmax_2012
,(snowpack_2013).zmean as snowpack_zonalmean_2013,
       (snowpack_2013).zmin as snowpack_zonalmin_2013,
       (snowpack_2013).zmax as snowpack_zonalmax_2013
,(snowpack_2014).zmean as snowpack_zonalmean_2014,
       (snowpack_2014).zmin as snowpack_zonalmin_2014,
       (snowpack_2014).zmax as snowpack_zonalmax_2014
,(snowpack_2015).zmean as snowpack_zonalmean_2015,
       (snowpack_2015).zmin as snowpack_zonalmin_2015,
       (snowpack_2015).zmax as snowpack_zonalmax_2015
,(snowpack_2016).zmean as snowpack_zonalmean_2016,
       (snowpack_2016).zmin as snowpack_zonalmin_2016,
       (snowpack_2016).zmax as snowpack_zonalmax_2016
,(snowpack_2017).zmean as snowpack_zonalmean_2017,
       (snowpack_2017).zmin as snowpack_zonalmin_2017,
       (snowpack_2017).zmax as snowpack_zonalmax_2017
,(snowpack_2018).zmean as snowpack_zonalmean_2018,
       (snowpack_2018).zmin as snowpack_zonalmin_2018,
       (snowpack_2018).zmax as snowpack_zonalmax_2018
,(snowpack_2019).zmean as snowpack_zonalmean_2019,
       (snowpack_2019).zmin as snowpack_zonalmin_2019,
       (snowpack_2019).zmax as snowpack_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "snowpack_state_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, snowpack_1958 zonaloutput,
snowpack_1959 zonaloutput,
snowpack_1960 zonaloutput,
snowpack_1961 zonaloutput,
snowpack_1962 zonaloutput,
snowpack_1963 zonaloutput,
snowpack_1964 zonaloutput,
snowpack_1965 zonaloutput,
snowpack_1966 zonaloutput,
snowpack_1967 zonaloutput,
snowpack_1968 zonaloutput,
snowpack_1969 zonaloutput,
snowpack_1970 zonaloutput,
snowpack_1971 zonaloutput,
snowpack_1972 zonaloutput,
snowpack_1973 zonaloutput,
snowpack_1974 zonaloutput,
snowpack_1975 zonaloutput,
snowpack_1976 zonaloutput,
snowpack_1977 zonaloutput,
snowpack_1978 zonaloutput,
snowpack_1979 zonaloutput,
snowpack_1980 zonaloutput,
snowpack_1981 zonaloutput,
snowpack_1982 zonaloutput,
snowpack_1983 zonaloutput,
snowpack_1984 zonaloutput,
snowpack_1985 zonaloutput,
snowpack_1986 zonaloutput,
snowpack_1987 zonaloutput,
snowpack_1988 zonaloutput,
snowpack_1989 zonaloutput,
snowpack_1990 zonaloutput,
snowpack_1991 zonaloutput,
snowpack_1992 zonaloutput,
snowpack_1993 zonaloutput,
snowpack_1994 zonaloutput,
snowpack_1995 zonaloutput,
snowpack_1996 zonaloutput,
snowpack_1997 zonaloutput,
snowpack_1998 zonaloutput,
snowpack_1999 zonaloutput,
snowpack_2000 zonaloutput,
snowpack_2001 zonaloutput,
snowpack_2002 zonaloutput,
snowpack_2003 zonaloutput,
snowpack_2004 zonaloutput,
snowpack_2005 zonaloutput,
snowpack_2006 zonaloutput,
snowpack_2007 zonaloutput,
snowpack_2008 zonaloutput,
snowpack_2009 zonaloutput,
snowpack_2010 zonaloutput,
snowpack_2011 zonaloutput,
snowpack_2012 zonaloutput,
snowpack_2013 zonaloutput,
snowpack_2014 zonaloutput,
snowpack_2015 zonaloutput,
snowpack_2016 zonaloutput,
snowpack_2017 zonaloutput,
snowpack_2018 zonaloutput,
snowpack_2019 zonaloutput) INNER JOIN faogaul_state_01min ON sampleid=id;

DROP VIEW IF EXISTS "v_runoff_state_annual_terra+wbm19_01min";
CREATE OR REPLACE VIEW "v_runoff_state_annual_terra+wbm19_01min"
    AS
    SELECT sampleid, (runoff_1958).zmean as runoff_zonalmean_1958,
       (runoff_1958).zmin as runoff_zonalmin_1958,
       (runoff_1958).zmax as runoff_zonalmax_1958
,(runoff_1959).zmean as runoff_zonalmean_1959,
       (runoff_1959).zmin as runoff_zonalmin_1959,
       (runoff_1959).zmax as runoff_zonalmax_1959
,(runoff_1960).zmean as runoff_zonalmean_1960,
       (runoff_1960).zmin as runoff_zonalmin_1960,
       (runoff_1960).zmax as runoff_zonalmax_1960
,(runoff_1961).zmean as runoff_zonalmean_1961,
       (runoff_1961).zmin as runoff_zonalmin_1961,
       (runoff_1961).zmax as runoff_zonalmax_1961
,(runoff_1962).zmean as runoff_zonalmean_1962,
       (runoff_1962).zmin as runoff_zonalmin_1962,
       (runoff_1962).zmax as runoff_zonalmax_1962
,(runoff_1963).zmean as runoff_zonalmean_1963,
       (runoff_1963).zmin as runoff_zonalmin_1963,
       (runoff_1963).zmax as runoff_zonalmax_1963
,(runoff_1964).zmean as runoff_zonalmean_1964,
       (runoff_1964).zmin as runoff_zonalmin_1964,
       (runoff_1964).zmax as runoff_zonalmax_1964
,(runoff_1965).zmean as runoff_zonalmean_1965,
       (runoff_1965).zmin as runoff_zonalmin_1965,
       (runoff_1965).zmax as runoff_zonalmax_1965
,(runoff_1966).zmean as runoff_zonalmean_1966,
       (runoff_1966).zmin as runoff_zonalmin_1966,
       (runoff_1966).zmax as runoff_zonalmax_1966
,(runoff_1967).zmean as runoff_zonalmean_1967,
       (runoff_1967).zmin as runoff_zonalmin_1967,
       (runoff_1967).zmax as runoff_zonalmax_1967
,(runoff_1968).zmean as runoff_zonalmean_1968,
       (runoff_1968).zmin as runoff_zonalmin_1968,
       (runoff_1968).zmax as runoff_zonalmax_1968
,(runoff_1969).zmean as runoff_zonalmean_1969,
       (runoff_1969).zmin as runoff_zonalmin_1969,
       (runoff_1969).zmax as runoff_zonalmax_1969
,(runoff_1970).zmean as runoff_zonalmean_1970,
       (runoff_1970).zmin as runoff_zonalmin_1970,
       (runoff_1970).zmax as runoff_zonalmax_1970
,(runoff_1971).zmean as runoff_zonalmean_1971,
       (runoff_1971).zmin as runoff_zonalmin_1971,
       (runoff_1971).zmax as runoff_zonalmax_1971
,(runoff_1972).zmean as runoff_zonalmean_1972,
       (runoff_1972).zmin as runoff_zonalmin_1972,
       (runoff_1972).zmax as runoff_zonalmax_1972
,(runoff_1973).zmean as runoff_zonalmean_1973,
       (runoff_1973).zmin as runoff_zonalmin_1973,
       (runoff_1973).zmax as runoff_zonalmax_1973
,(runoff_1974).zmean as runoff_zonalmean_1974,
       (runoff_1974).zmin as runoff_zonalmin_1974,
       (runoff_1974).zmax as runoff_zonalmax_1974
,(runoff_1975).zmean as runoff_zonalmean_1975,
       (runoff_1975).zmin as runoff_zonalmin_1975,
       (runoff_1975).zmax as runoff_zonalmax_1975
,(runoff_1976).zmean as runoff_zonalmean_1976,
       (runoff_1976).zmin as runoff_zonalmin_1976,
       (runoff_1976).zmax as runoff_zonalmax_1976
,(runoff_1977).zmean as runoff_zonalmean_1977,
       (runoff_1977).zmin as runoff_zonalmin_1977,
       (runoff_1977).zmax as runoff_zonalmax_1977
,(runoff_1978).zmean as runoff_zonalmean_1978,
       (runoff_1978).zmin as runoff_zonalmin_1978,
       (runoff_1978).zmax as runoff_zonalmax_1978
,(runoff_1979).zmean as runoff_zonalmean_1979,
       (runoff_1979).zmin as runoff_zonalmin_1979,
       (runoff_1979).zmax as runoff_zonalmax_1979
,(runoff_1980).zmean as runoff_zonalmean_1980,
       (runoff_1980).zmin as runoff_zonalmin_1980,
       (runoff_1980).zmax as runoff_zonalmax_1980
,(runoff_1981).zmean as runoff_zonalmean_1981,
       (runoff_1981).zmin as runoff_zonalmin_1981,
       (runoff_1981).zmax as runoff_zonalmax_1981
,(runoff_1982).zmean as runoff_zonalmean_1982,
       (runoff_1982).zmin as runoff_zonalmin_1982,
       (runoff_1982).zmax as runoff_zonalmax_1982
,(runoff_1983).zmean as runoff_zonalmean_1983,
       (runoff_1983).zmin as runoff_zonalmin_1983,
       (runoff_1983).zmax as runoff_zonalmax_1983
,(runoff_1984).zmean as runoff_zonalmean_1984,
       (runoff_1984).zmin as runoff_zonalmin_1984,
       (runoff_1984).zmax as runoff_zonalmax_1984
,(runoff_1985).zmean as runoff_zonalmean_1985,
       (runoff_1985).zmin as runoff_zonalmin_1985,
       (runoff_1985).zmax as runoff_zonalmax_1985
,(runoff_1986).zmean as runoff_zonalmean_1986,
       (runoff_1986).zmin as runoff_zonalmin_1986,
       (runoff_1986).zmax as runoff_zonalmax_1986
,(runoff_1987).zmean as runoff_zonalmean_1987,
       (runoff_1987).zmin as runoff_zonalmin_1987,
       (runoff_1987).zmax as runoff_zonalmax_1987
,(runoff_1988).zmean as runoff_zonalmean_1988,
       (runoff_1988).zmin as runoff_zonalmin_1988,
       (runoff_1988).zmax as runoff_zonalmax_1988
,(runoff_1989).zmean as runoff_zonalmean_1989,
       (runoff_1989).zmin as runoff_zonalmin_1989,
       (runoff_1989).zmax as runoff_zonalmax_1989
,(runoff_1990).zmean as runoff_zonalmean_1990,
       (runoff_1990).zmin as runoff_zonalmin_1990,
       (runoff_1990).zmax as runoff_zonalmax_1990
,(runoff_1991).zmean as runoff_zonalmean_1991,
       (runoff_1991).zmin as runoff_zonalmin_1991,
       (runoff_1991).zmax as runoff_zonalmax_1991
,(runoff_1992).zmean as runoff_zonalmean_1992,
       (runoff_1992).zmin as runoff_zonalmin_1992,
       (runoff_1992).zmax as runoff_zonalmax_1992
,(runoff_1993).zmean as runoff_zonalmean_1993,
       (runoff_1993).zmin as runoff_zonalmin_1993,
       (runoff_1993).zmax as runoff_zonalmax_1993
,(runoff_1994).zmean as runoff_zonalmean_1994,
       (runoff_1994).zmin as runoff_zonalmin_1994,
       (runoff_1994).zmax as runoff_zonalmax_1994
,(runoff_1995).zmean as runoff_zonalmean_1995,
       (runoff_1995).zmin as runoff_zonalmin_1995,
       (runoff_1995).zmax as runoff_zonalmax_1995
,(runoff_1996).zmean as runoff_zonalmean_1996,
       (runoff_1996).zmin as runoff_zonalmin_1996,
       (runoff_1996).zmax as runoff_zonalmax_1996
,(runoff_1997).zmean as runoff_zonalmean_1997,
       (runoff_1997).zmin as runoff_zonalmin_1997,
       (runoff_1997).zmax as runoff_zonalmax_1997
,(runoff_1998).zmean as runoff_zonalmean_1998,
       (runoff_1998).zmin as runoff_zonalmin_1998,
       (runoff_1998).zmax as runoff_zonalmax_1998
,(runoff_1999).zmean as runoff_zonalmean_1999,
       (runoff_1999).zmin as runoff_zonalmin_1999,
       (runoff_1999).zmax as runoff_zonalmax_1999
,(runoff_2000).zmean as runoff_zonalmean_2000,
       (runoff_2000).zmin as runoff_zonalmin_2000,
       (runoff_2000).zmax as runoff_zonalmax_2000
,(runoff_2001).zmean as runoff_zonalmean_2001,
       (runoff_2001).zmin as runoff_zonalmin_2001,
       (runoff_2001).zmax as runoff_zonalmax_2001
,(runoff_2002).zmean as runoff_zonalmean_2002,
       (runoff_2002).zmin as runoff_zonalmin_2002,
       (runoff_2002).zmax as runoff_zonalmax_2002
,(runoff_2003).zmean as runoff_zonalmean_2003,
       (runoff_2003).zmin as runoff_zonalmin_2003,
       (runoff_2003).zmax as runoff_zonalmax_2003
,(runoff_2004).zmean as runoff_zonalmean_2004,
       (runoff_2004).zmin as runoff_zonalmin_2004,
       (runoff_2004).zmax as runoff_zonalmax_2004
,(runoff_2005).zmean as runoff_zonalmean_2005,
       (runoff_2005).zmin as runoff_zonalmin_2005,
       (runoff_2005).zmax as runoff_zonalmax_2005
,(runoff_2006).zmean as runoff_zonalmean_2006,
       (runoff_2006).zmin as runoff_zonalmin_2006,
       (runoff_2006).zmax as runoff_zonalmax_2006
,(runoff_2007).zmean as runoff_zonalmean_2007,
       (runoff_2007).zmin as runoff_zonalmin_2007,
       (runoff_2007).zmax as runoff_zonalmax_2007
,(runoff_2008).zmean as runoff_zonalmean_2008,
       (runoff_2008).zmin as runoff_zonalmin_2008,
       (runoff_2008).zmax as runoff_zonalmax_2008
,(runoff_2009).zmean as runoff_zonalmean_2009,
       (runoff_2009).zmin as runoff_zonalmin_2009,
       (runoff_2009).zmax as runoff_zonalmax_2009
,(runoff_2010).zmean as runoff_zonalmean_2010,
       (runoff_2010).zmin as runoff_zonalmin_2010,
       (runoff_2010).zmax as runoff_zonalmax_2010
,(runoff_2011).zmean as runoff_zonalmean_2011,
       (runoff_2011).zmin as runoff_zonalmin_2011,
       (runoff_2011).zmax as runoff_zonalmax_2011
,(runoff_2012).zmean as runoff_zonalmean_2012,
       (runoff_2012).zmin as runoff_zonalmin_2012,
       (runoff_2012).zmax as runoff_zonalmax_2012
,(runoff_2013).zmean as runoff_zonalmean_2013,
       (runoff_2013).zmin as runoff_zonalmin_2013,
       (runoff_2013).zmax as runoff_zonalmax_2013
,(runoff_2014).zmean as runoff_zonalmean_2014,
       (runoff_2014).zmin as runoff_zonalmin_2014,
       (runoff_2014).zmax as runoff_zonalmax_2014
,(runoff_2015).zmean as runoff_zonalmean_2015,
       (runoff_2015).zmin as runoff_zonalmin_2015,
       (runoff_2015).zmax as runoff_zonalmax_2015
,(runoff_2016).zmean as runoff_zonalmean_2016,
       (runoff_2016).zmin as runoff_zonalmin_2016,
       (runoff_2016).zmax as runoff_zonalmax_2016
,(runoff_2017).zmean as runoff_zonalmean_2017,
       (runoff_2017).zmin as runoff_zonalmin_2017,
       (runoff_2017).zmax as runoff_zonalmax_2017
,(runoff_2018).zmean as runoff_zonalmean_2018,
       (runoff_2018).zmin as runoff_zonalmin_2018,
       (runoff_2018).zmax as runoff_zonalmax_2018
,(runoff_2019).zmean as runoff_zonalmean_2019,
       (runoff_2019).zmin as runoff_zonalmin_2019,
       (runoff_2019).zmax as runoff_zonalmax_2019

    FROM crosstab(
    $$SELECT sampleid, year, (zonalmean, zonalmin, zonalmax)::zonaloutput
        FROM "runoff_state_annual_terra+wbm19_01min"
        ORDER BY 1
        $$,
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
SELECT 1958$$
    )
    AS ct(sampleid bigint, runoff_1958 zonaloutput,
runoff_1959 zonaloutput,
runoff_1960 zonaloutput,
runoff_1961 zonaloutput,
runoff_1962 zonaloutput,
runoff_1963 zonaloutput,
runoff_1964 zonaloutput,
runoff_1965 zonaloutput,
runoff_1966 zonaloutput,
runoff_1967 zonaloutput,
runoff_1968 zonaloutput,
runoff_1969 zonaloutput,
runoff_1970 zonaloutput,
runoff_1971 zonaloutput,
runoff_1972 zonaloutput,
runoff_1973 zonaloutput,
runoff_1974 zonaloutput,
runoff_1975 zonaloutput,
runoff_1976 zonaloutput,
runoff_1977 zonaloutput,
runoff_1978 zonaloutput,
runoff_1979 zonaloutput,
runoff_1980 zonaloutput,
runoff_1981 zonaloutput,
runoff_1982 zonaloutput,
runoff_1983 zonaloutput,
runoff_1984 zonaloutput,
runoff_1985 zonaloutput,
runoff_1986 zonaloutput,
runoff_1987 zonaloutput,
runoff_1988 zonaloutput,
runoff_1989 zonaloutput,
runoff_1990 zonaloutput,
runoff_1991 zonaloutput,
runoff_1992 zonaloutput,
runoff_1993 zonaloutput,
runoff_1994 zonaloutput,
runoff_1995 zonaloutput,
runoff_1996 zonaloutput,
runoff_1997 zonaloutput,
runoff_1998 zonaloutput,
runoff_1999 zonaloutput,
runoff_2000 zonaloutput,
runoff_2001 zonaloutput,
runoff_2002 zonaloutput,
runoff_2003 zonaloutput,
runoff_2004 zonaloutput,
runoff_2005 zonaloutput,
runoff_2006 zonaloutput,
runoff_2007 zonaloutput,
runoff_2008 zonaloutput,
runoff_2009 zonaloutput,
runoff_2010 zonaloutput,
runoff_2011 zonaloutput,
runoff_2012 zonaloutput,
runoff_2013 zonaloutput,
runoff_2014 zonaloutput,
runoff_2015 zonaloutput,
runoff_2016 zonaloutput,
runoff_2017 zonaloutput,
runoff_2018 zonaloutput,
runoff_2019 zonaloutput) INNER JOIN faogaul_state_01min ON sampleid=id;
