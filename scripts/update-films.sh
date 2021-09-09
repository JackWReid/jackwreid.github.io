#!/bin/bash
set -euo pipefail

echo "Updating films pages from Letterboxd export"
echo "https://letterboxd.com/settings/data/ for latest ZIP"

mkdir ./tmp
cp $1/watchlist.csv ./tmp/watchlist.csv
cp $1/diary.csv ./tmp/diary.csv

/usr/local/opt/sqlite/bin/sqlite3 < ./scripts/update-films.sql

mv ./tmp/watched.json ./data/films/watched.json
mv ./tmp/towatch.json ./data/books/towatch.json
rm -r ./tmp
