#!/bin/bash

DB_FILE="$1"

if [ -z "$DB_FILE" ]; then
    echo "Usage: $0 <database_file>"
    exit 1
fi

sqlite3 -json "$DB_FILE" "SELECT * FROM stats_10min;" | jq . > 10min.json
sqlite3 -json "$DB_FILE" "SELECT * FROM stats_6hour;" | jq . > 6hour.json
sqlite3 -json "$DB_FILE" "SELECT * FROM stats_hourly;" | jq . > hourly.json
