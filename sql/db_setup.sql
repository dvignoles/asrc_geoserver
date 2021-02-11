CREATE EXTENSION IF NOT EXISTS postgis;

do
$$
    declare
        geographies text[] :=
                '{"africa","australia","%I","colombia","eurasia","global","namerica","samerica","se-asia",' ||
                '"argentina","brazil","conus","europe","india","peru"}';
        x           text;
    begin
        FOREACH x in ARRAY geographies
            LOOP
                EXECUTE format('DROP SCHEMA IF EXISTS %I CASCADE', x);
                EXECUTE format('CREATE SCHEMA IF NOT EXISTS %I', x);
                EXECUTE format('CREATE TABLE IF NOT EXISTS %I.faogaul_country
                                (
                                    id serial not null
                                        constraint faogaul_country_pkey
                                            primary key,
                                    gridvalue bigint,
                                    gridarea real,
                                    gridpercent real,
                                    adm0_code bigint,
                                    adm0_name varchar,
                                    geom geometry(MultiPolygon,4326),
                                    resolution char(6)
                                );', x);
                EXECUTE format('CREATE INDEX faogaul_country_geom_geom_idx
	                            on %I.faogaul_country using gist (geom);', x);
                EXECUTE format('CREATE TABLE IF NOT EXISTS %I.faogaul_state
                                (
                                    id serial not null
                                        constraint faogaul_state_pkey
                                            primary key,
                                    gridvalue bigint,
                                    gridarea real,
                                    gridpercent real,
                                    adm0_code bigint,
                                    adm0_name varchar,
                                    adm1_code bigint,
                                    adm1_name varchar,
                                    geom geometry(MultiPolygon,4326),
                                    resolution char(6)
                                );', x);
                EXECUTE format('CREATE INDEX faogaul_state_geom_geom_idx
                                on %I.faogaul_state using gist (geom);',x);

                EXECUTE format('CREATE TABLE IF NOT EXISTS %I.faogaulhydrostn30_countrycrossing
                (
                    id                  serial not null
                        constraint faogaulhydrostn30_countrycrossing_pkey
                            primary key,
                    countrycode         bigint,
                    countryname         varchar,
                    tocountrycode       bigint,
                    tocountryname       varchar,
                    cellid              bigint,
                    basinid             bigint,
                    basinname           varchar,
                    "order"             bigint,
                    color               bigint,
                    numberofcells       bigint,
                    stnmainstemlength   real,
                    stncatchmentarea    real,
                    stninterstationarea real,
                    nextstation         bigint,
                    nextcountrycode     bigint,
                    nextcountryname     varchar,
                    geom                geometry(MultiPoint, 4326),
                    resolution          char(6)
                );', x);

                EXECUTE format('CREATE INDEX faogaulhydrostn30_countrycrossing_geom_geom_idx
                    on %I.faogaulhydrostn30_countrycrossing using gist (geom);', x);

                EXECUTE format('CREATE TABLE IF NOT EXISTS %I.faogaulhydrostn30_statecrossing
                (
                    id                  serial not null
                        constraint faogaulhydrostn30_statecrossing_pkey
                            primary key,
                    adm0_code           bigint,
                    adm0_name           varchar,
                    statecode           bigint,
                    statename           varchar,
                    tostatecode         bigint,
                    tostatename         varchar,
                    cellid              bigint,
                    basinid             bigint,
                    basinname           varchar,
                    "order"             bigint,
                    color               bigint,
                    numberofcells       bigint,
                    stnmainstemlength   real,
                    stncatchmentarea    real,
                    stninterstationarea real,
                    nextstation         bigint,
                    nextstatecode       bigint,
                    nextstatename       varchar,
                    geom                geometry(MultiPoint, 4326),
                    resolution          char(6)
                );', x);

                EXECUTE format('CREATE INDEX faogaulhydrostn30_statecrossing_geom_geom_idx
                    on %I.faogaulhydrostn30_statecrossing using gist (geom);', x);

                EXECUTE format('CREATE TABLE IF NOT EXISTS %I.grandv13hydrostn30_dam
                (
                    id                  serial not null
                        constraint grandv13hydrostn30_dam_pkey
                            primary key,
                    fid                 bigint,
                    grand_id            bigint,
                    res_name            varchar,
                    dam_name            varchar,
                    alt_name            varchar,
                    river               varchar,
                    alt_river           varchar,
                    main_basin          varchar,
                    sub_basin           varchar,
                    near_city           varchar,
                    alt_city            varchar,
                    admin_unit          varchar,
                    sec_admin           varchar,
                    country             varchar,
                    sec_cntry           varchar,
                    year                bigint,
                    alt_year            bigint,
                    rem_year            bigint,
                    dam_hgt_m           bigint,
                    alt_hgt_m           bigint,
                    dam_len_m           bigint,
                    alt_len_m           bigint,
                    area_skm            real,
                    area_poly           real,
                    area_rep            real,
                    area_max            real,
                    area_min            real,
                    cap_mcm             real,
                    cap_max             real,
                    cap_rep             real,
                    cap_min             real,
                    depth_m             real,
                    dis_avg_ls          bigint,
                    dor_pc              real,
                    elev_masl           bigint,
                    catch_skm           real,
                    catch_rep           real,
                    data_info           varchar,
                    use_irri            varchar,
                    use_elec            varchar,
                    use_supp            varchar,
                    use_fcon            varchar,
                    use_recr            varchar,
                    use_navi            varchar,
                    use_fish            varchar,
                    use_pcon            varchar,
                    use_live            varchar,
                    use_othr            varchar,
                    main_use            varchar,
                    lake_ctrl           varchar,
                    multi_dams          varchar,
                    timeline            varchar,
                    comments            varchar,
                    url                 varchar,
                    quality             real,
                    editor              varchar,
                    long_dd             real,
                    lat_dd              real,
                    poly_src            varchar,
                    cellid              bigint,
                    basinid             bigint,
                    basinname           varchar,
                    "order"             bigint,
                    color               bigint,
                    numberofcells       bigint,
                    stnmainstemlength   real,
                    stncatchmentarea    real,
                    stninterstationarea real,
                    nextstation         bigint,
                    geom                geometry(MultiPoint, 4326),
                    resolution          char(6)
                );', x);


                EXECUTE format('CREATE INDEX grandv13hydrostn30_dam_geom_geom_idx
                    on %I.grandv13hydrostn30_dam using gist (geom);', x);

                EXECUTE format('CREATE TABLE IF NOT EXISTS %I.grandv13hydrostn30_subbasin
                (
                    id                  serial not null
                        constraint grandv13hydrostn30_subbasin_pkey
                            primary key,
                    gridvalue           bigint,
                    gridarea            real,
                    gridpercent         real,
                    fid                 bigint,
                    grand_id            bigint,
                    res_name            varchar,
                    dam_name            varchar,
                    alt_name            varchar,
                    river               varchar,
                    alt_river           varchar,
                    main_basin          varchar,
                    sub_basin           varchar,
                    near_city           varchar,
                    alt_city            varchar,
                    admin_unit          varchar,
                    sec_admin           varchar,
                    country             varchar,
                    sec_cntry           varchar,
                    year                bigint,
                    alt_year            bigint,
                    rem_year            bigint,
                    dam_hgt_m           bigint,
                    alt_hgt_m           bigint,
                    dam_len_m           bigint,
                    alt_len_m           bigint,
                    area_skm            real,
                    area_poly           real,
                    area_rep            real,
                    area_max            real,
                    area_min            real,
                    cap_mcm             real,
                    cap_max             real,
                    cap_rep             real,
                    cap_min             real,
                    depth_m             real,
                    dis_avg_ls          bigint,
                    dor_pc              real,
                    elev_masl           bigint,
                    catch_skm           real,
                    catch_rep           real,
                    data_info           varchar,
                    use_irri            varchar,
                    use_elec            varchar,
                    use_supp            varchar,
                    use_fcon            varchar,
                    use_recr            varchar,
                    use_navi            varchar,
                    use_fish            varchar,
                    use_pcon            varchar,
                    use_live            varchar,
                    use_othr            varchar,
                    main_use            varchar,
                    lake_ctrl           varchar,
                    multi_dams          varchar,
                    timeline            varchar,
                    comments            varchar,
                    url                 varchar,
                    quality             real,
                    editor              varchar,
                    long_dd             real,
                    lat_dd              real,
                    poly_src            varchar,
                    cellid              bigint,
                    basinid             bigint,
                    basinname           varchar,
                    "order"             bigint,
                    color               bigint,
                    numberofcells       bigint,
                    stnmainstemlength   real,
                    stncatchmentarea    real,
                    stninterstationarea real,
                    nextstation         bigint,
                    geom                geometry(MultiPolygon, 4326),
                    resolution          char(6)
                );', x);

                EXECUTE format('CREATE INDEX grandv13hydrostn30_subbasin_geom_geom_idx
                    on %I.grandv13hydrostn30_subbasin using gist (geom);', x);

                EXECUTE format('CREATE TABLE IF NOT EXISTS %I.hydrostn30_basin
                (
                    id          serial not null
                        constraint hydrostn30_basin_pkey
                            primary key,
                    gridvalue   bigint,
                    gridarea    real,
                    gridpercent real,
                    basinname   varchar,
                    basinorder  bigint,
                    color       bigint,
                    basinlength real,
                    basinarea   real,
                    geom        geometry(MultiPolygon, 4326),
                    resolution  char(6)
                );', x);

                EXECUTE format('CREATE INDEX hydrostn30_basin_geom_geom_idx
                    on %I.hydrostn30_basin using gist (geom);', x);

                EXECUTE format('CREATE TABLE IF NOT EXISTS %I.hydrostn30_confluence
                (
                    id                  serial not null
                        constraint hydrostn30_confluence_pkey
                            primary key,
                    perimeter           real,
                    vertexnum           bigint,
                    basinid             bigint,
                    streamorder         bigint,
                    fromxcoord          real,
                    fromycoord          real,
                    toxcoord            real,
                    toycoord            real,
                    cellid              bigint,
                    basinname           varchar,
                    "order"             bigint,
                    color               bigint,
                    numberofcells       bigint,
                    stnmainstemlength   real,
                    stncatchmentarea    real,
                    stninterstationarea real,
                    nextstation         bigint,
                    geom                geometry(MultiPoint, 4326),
                    resolution          char(6)
                );', x);

                EXECUTE format('CREATE INDEX hydrostn30_confluence_geom_geom_idx
                    on %I.hydrostn30_confluence using gist (geom);', x);

                EXECUTE format('CREATE TABLE IF NOT EXISTS %I.hydrostn30_mouth
                (
                    id          serial not null
                        constraint hydrostn30_mouth_pkey
                            primary key,
                    basinorder  bigint,
                    color       bigint,
                    basinlength real,
                    basinarea   real,
                    geom        geometry(MultiPoint, 4326),
                    resolution  char(6)
                );', x);

                EXECUTE format('CREATE INDEX hydrostn30_mouth_geom_geom_idx
                    on %I.hydrostn30_mouth using gist (geom);', x);

                EXECUTE format('CREATE TABLE IF NOT EXISTS %I.hydrostn30_streamline
                (
                    id                  serial not null
                        constraint hydrostn30_streamline_pkey
                            primary key,
                    perimeter           real,
                    vertexnum           bigint,
                    basinid             bigint,
                    streamorder         bigint,
                    mouthxcoord         real,
                    mouthycoord         real,
                    fromxcoord          real,
                    fromycoord          real,
                    toxcoord            real,
                    toycoord            real,
                    cellid              bigint,
                    basinname           varchar,
                    "order"             bigint,
                    color               bigint,
                    numberofcells       bigint,
                    stnmainstemlength   real,
                    stncatchmentarea    real,
                    stninterstationarea real,
                    nextstation         bigint,
                    geom                geometry(MultiLineString, 4326),
                    resolution          char(6)
                );', x);

                EXECUTE format('CREATE INDEX hydrostn30_streamline_geom_geom_idx
                    on %I.hydrostn30_streamline using gist (geom);', x);

            end loop;
    end;
$$;
