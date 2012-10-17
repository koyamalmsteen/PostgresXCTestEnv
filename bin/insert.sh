#!/usr/bin/env bash
psql -c "CREATE TABLE TEST (ID int);" dspace
for i in $(seq 1 10000)
do
psql -q -c "INSERT INTO TEST VALUES(666);" dspace
done
