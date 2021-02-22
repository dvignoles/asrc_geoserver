CREATE MATERIALIZED VIEW subbasin_annual_all AS

    SELECT evap.id as id, evap.sampleid as sampleid ,evap.year as year, evap.zonegridvalue as zonegridvalue,
        evap.zonearea as zonearea,
        evap.zonalmean as evapotranspiration_zonalmean, rainpet.zonalmean as rainpet_zonalmean,
            rel_soilmoisture.zonalmean as relative_soilmoisture_zonalmean,
            soilmoisture.zonalmean as soilmoisture_zonalmean, runoff.zonalmean as runoff_zonalmean,
            snow.zonalmean as snow_zonalmean,
        evap.zonalmin as evapotranspiration_zonalmin, rainpet.zonalmin as rainpet_zonalmin,
            rel_soilmoisture.zonalmin as relative_soilmoisture_zonalmin,
            soilmoisture.zonalmin as soilmoisture_zonalmin, runoff.zonalmin as runoff_zonalmin,
            snow.zonalmin as snow_zonalmin,
        evap.zonalmax as evapotranspiration_zonalmax, rainpet.zonalmax as rainpet_zonalmax,
            rel_soilmoisture.zonalmax as relative_soilmoisture_zonalmax,
            soilmoisture.zonalmax as soilmoisture_zonalmax, runoff.zonalmax as runoff_zonalmax,
            snow.zonalmax as snow_zonalmax
    FROM evapotranspiration_subbasin_annual evap
        INNER JOIN rainpet_subbasin_annual rainpet on evap.id  = rainpet.id
        INNER JOIN relativesoilmoisture_subbasin_annual rel_soilmoisture on evap.id = rel_soilmoisture.id
        INNER JOIN soilmoisture_subbasin_annual soilmoisture on evap.id = soilmoisture.id
        INNER JOIN runoff_subbasin_annual runoff on evap.id = runoff.id
        INNER JOIN snowpack_subbasin_annual snow on evap.id = snow.id;

CREATE INDEX subbasin_annual_all_idx on subbasin_annual_all(sampleid,year);
CREATE INDEX subasin_annual_year on subbasin_annual_all(year);

CREATE MATERIALIZED VIEW subbasin_monthly_all AS

    SELECT evap.id as id, evap.sampleid as sampleid ,evap.year as year, evap.month as month,
           evap.zonegridvalue as zonegridvalue,evap.zonearea as zonearea,
        evap.zonalmean as evapotranspiration_zonalmean, rainpet.zonalmean as rainpet_zonalmean,
            rel_soilmoisture.zonalmean as relative_soilmoisture_zonalmean,
            soilmoisture.zonalmean as soilmoisture_zonalmean, runoff.zonalmean as runoff_zonalmean,
            snow.zonalmean as snow_zonalmean,
        evap.zonalmin as evapotranspiration_zonalmin, rainpet.zonalmin as rainpet_zonalmin,
            rel_soilmoisture.zonalmin as relative_soilmoisture_zonalmin,
            soilmoisture.zonalmin as soilmoisture_zonalmin, runoff.zonalmin as runoff_zonalmin,
            snow.zonalmin as snow_zonalmin,
        evap.zonalmax as evapotranspiration_zonalmax, rainpet.zonalmax as rainpet_zonalmax,
            rel_soilmoisture.zonalmax as relative_soilmoisture_zonalmax,
            soilmoisture.zonalmax as soilmoisture_zonalmax, runoff.zonalmax as runoff_zonalmax,
            snow.zonalmax as snow_zonalmax
    FROM evapotranspiration_subbasin_monthly evap
        INNER JOIN rainpet_subbasin_monthly rainpet on evap.id  = rainpet.id
        INNER JOIN relativesoilmoisture_subbasin_monthly rel_soilmoisture on evap.id = rel_soilmoisture.id
        INNER JOIN soilmoisture_subbasin_monthly soilmoisture on evap.id = soilmoisture.id
        INNER JOIN runoff_subbasin_monthly runoff on evap.id = runoff.id
        INNER JOIN snowpack_subbasin_monthly snow on evap.id = snow.id;

CREATE INDEX subbasin_monthly_all_idx on subbasin_monthly_all(sampleid,year,month);
CREATE INDEX subasin_monthly_date_idx on subbasin_monthly_all(year, month);

-----
CREATE MATERIALIZED VIEW discharge_confluence_annual_01min AS
    -- Join annual / monthly with month=0 for annual output
SELECT sampleid, year, discharge, 'TerraClimate+WBMstableDist04'as model, 0 as month FROM "discharge_confluence_annual_terra+wbm04_01min"
UNION
SELECT sampleid, year, discharge, 'TerraClimate+WBMstableDist04'as model, month FROM "discharge_confluence_monthly_terra+wbm04_01min"
UNION
SELECT sampleid, year, discharge, 'TerraClimate+WBMstableDist19' as model, 0 as month FROM "discharge_confluence_annual_terra+wbm19_01min"
UNION
SELECT sampleid, year, discharge, 'TerraClimate+WBMstableDist19' as model, month FROM "discharge_confluence_monthly_terra+wbm19_01min"
ORDER BY sampleid,year,month,model;
-----
CREATE OR REPLACE VIEW "v_subbasin_annual_terra+wbm04_01min" AS

    SELECT evap.sampleid as sampleid ,evap.year as year, evap.zonegridvalue as zonegridvalue,
        evap.zonearea as zonearea,
        evap.zonalmean as evapotranspiration_zonalmean, rainpet.zonalmean as rainpet_zonalmean,
            rel_soilmoisture.zonalmean as relative_soilmoisture_zonalmean,
            soilmoisture.zonalmean as soilmoisture_zonalmean, runoff.zonalmean as runoff_zonalmean,
            snow.zonalmean as snow_zonalmean,
        evap.zonalmin as evapotranspiration_zonalmin, rainpet.zonalmin as rainpet_zonalmin,
            rel_soilmoisture.zonalmin as relative_soilmoisture_zonalmin,
            soilmoisture.zonalmin as soilmoisture_zonalmin, runoff.zonalmin as runoff_zonalmin,
            snow.zonalmin as snow_zonalmin,
        evap.zonalmax as evapotranspiration_zonalmax, rainpet.zonalmax as rainpet_zonalmax,
            rel_soilmoisture.zonalmax as relative_soilmoisture_zonalmax,
            soilmoisture.zonalmax as soilmoisture_zonalmax, runoff.zonalmax as runoff_zonalmax,
            snow.zonalmax as snow_zonalmax
    FROM "evapotranspiration_subbasin_annual_terra+wbm04_01min" evap
        INNER JOIN "rainpet_subbasin_annual_terra+wbm04_01min" rainpet on evap.id  = rainpet.id
        INNER JOIN "relativesoilmoisture_subbasin_annual_terra+wbm04_01min" rel_soilmoisture on evap.id = rel_soilmoisture.id
        INNER JOIN "soilmoisture_subbasin_annual_terra+wbm04_01min" soilmoisture on evap.id = soilmoisture.id
        INNER JOIN "runoff_subbasin_annual_terra+wbm04_01min" runoff on evap.id = runoff.id
        INNER JOIN "snowpack_subbasin_annual_terra+wbm04_01min" snow on evap.id = snow.id
ORDER BY sampleid,year;

DROP TABLE IF EXISTS "subbasin_annual_terra+wbm04_01min";
CREATE TABLE "subbasin_annual_terra+wbm04_01min" AS SELECT * FROM "v_subbasin_annual_terra+wbm04_01min";

ALTER TABLE "subbasin_annual_terra+wbm04_01min"ADD COLUMN id SERIAL PRIMARY KEY;

SELECT * FROM "subbasin_annual_terra+wbm04_01min" LIMIT 500;
SELECT COUNT(*) FROM "subbasin_annual_terra+wbm04_01min";
SELECT max(sampleid) FROM "subbasin_annual_terra+wbm04_01min";

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



