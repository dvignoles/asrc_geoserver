-- Total reset, need to run from another database
-- SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'ghaas';
-- drop database ghaas;
-- create database ghaas;
-- SET search_path = brazil, public;

CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS tablefunc;

-- Scope geoserver user
CREATE SCHEMA IF NOT EXISTS geoserver;
GRANT ALL PRIVILEGES ON SCHEMA geoserver TO geoserver;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA geoserver TO geoserver;
ALTER DEFAULT PRIVILEGES IN SCHEMA geoserver GRANT ALL PRIVILEGES ON TABLES TO geoserver;


do
$$
    declare
        geographies text[] :=
                '{"africa","australia","brazil","colombia","eurasia","global","namerica","samerica","se-asia",' ||
                '"argentina","brazil","conus","europe","india","peru"}';
        x           text;
    begin
        FOREACH x in ARRAY geographies
            LOOP
                -- EXECUTE format('DROP SCHEMA IF EXISTS %I CASCADE', x);
                EXECUTE format('CREATE SCHEMA IF NOT EXISTS %I', x);
                EXECUTE format('GRANT USAGE ON SCHEMA %I to geoserver', x);
                EXECUTE format('GRANT SELECT ON ALL TABLES IN SCHEMA %I TO geoserver', x);
                EXECUTE format('ALTER DEFAULT PRIVILEGES IN SCHEMA %I GRANT SELECT ON TABLES TO geoserver', x);
            end loop;
    end;
$$;

-- zonalmean, min, max
-- types for table storage combining annual/monthly data
-- unpacked into yearly views

CREATE TYPE public.zonaloutput
    as (zmean real, zmin real, zmax real);

CREATE TYPE public.model_output_annual_monthly
    as (annual real, monthly real[]);

CREATE TYPE public.model_output_zonal_annual_monthly
    as (annual_zonalmean real, annual_zonalmin real, annual_zonalmax real, monthly_zonalmean real[],
    monthly_zonalmin real[], monthly_zonalmax real[]);
