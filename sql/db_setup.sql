CREATE DATABASE GHAAS;
CREATE EXTENSION IF NOT EXISTS postgis;

do $$
declare
    geographies text[] := '{"africa","australia","brazil","colombia","eurasia","global","namerica","samerica","se-asia",' ||
                          '"argentina","brazil","conus","europe","india","peru"}';
    x text;
begin
    FOREACH x in ARRAY geographies LOOP
            EXECUTE format('CREATE SCHEMA IF NOT EXISTS %I',x);
        end loop;
end;
$$;