FROM postgis/postgis:12-2.5-alpine
COPY setup_pg.sh /docker-entrypoint-initdb.d
