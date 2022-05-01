#!/bin/bash

# change working directory
cd "${0%/*}" || exit 1

# update database
git pull -f

# generate databse
cp ./resources/emptydb.sqlite3 ./dnachronYdb.sqlite3
for file_name in ./ymutation/ymutation??.csv; do
    sqlite3 dnachronYdb.sqlite3 ".mode csv" ".import $file_name ymutation"
done
sqlite3 dnachronYdb.sqlite3 ".mode csv" ".import ./ymutation/ymutation_error.csv ymutation_error"
