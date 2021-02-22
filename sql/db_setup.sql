-- Total reset, need to run from another database
-- SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'ghaas';
-- drop database ghaas;
-- create database ghaas;
SET search_path = brazil, public;

CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS tablefunc;

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
            end loop;
    end;
$$;

-- zonalmean, min, max
CREATE TYPE public.zonaloutput
    as (zmean real, zmin real, zmax real);
