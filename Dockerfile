FROM postgres:9.4-alpine
COPY ./setup.sh /docker-entrypoint-initdb.d/A.sh
