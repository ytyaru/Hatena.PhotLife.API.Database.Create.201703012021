#!/bin/bash
#HatenaId = $1
#BlogId = $2
HatenaId=SomeHatenaId
PATH_DB_Images=./Hatena.PhotoLife.Images.${HatenaId}.sqlite3
PATH_DB_Movies=./Hatena.PhotoLife.Movies.${HatenaId}.sqlite3
#PATH_DB=./Hatena.PhotoLife.${HatenaId}.sqlite3
# Create Table
sqlite3 "${PATH_DB_Images}" < ./Contents.sql
sqlite3 "${PATH_DB_Movies}" < ./Contents.sql
# Insert
sqlite3 "${PATH_DB_Images}" < ./Contents_Images.Insert.sql
sqlite3 "${PATH_DB_Movies}" < ./Contents_Movies.Insert.sql
# Check
sqlite3 "${PATH_DB_Images}" < ./Check.sql
sqlite3 "${PATH_DB_Movies}" < ./Check.sql

