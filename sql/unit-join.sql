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