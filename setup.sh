#!/bin/bash
set -e

cmd="psql --username ${POSTGRES_USER}"
IFS=',' read -ra DB <<< "${POSTGRES_DB_LIST}"

for i in "${DB[@]}"; do

echo "Creating database: $i"

$cmd <<EOSQL
CREATE DATABASE "$i" OWNER "${POSTGRES_USER}";
EOSQL

done
echo "Done."
