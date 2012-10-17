#!/usr/bin/env bash
psql -c "CREATE TABLE TEST (str String)" dspace
for i in $(seq 1 1000000)
do
psql -c "INSERT INT TEST VALUES('HOGE')" dspace
done
