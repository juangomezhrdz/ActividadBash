#!/bin/bash


DIA=$(date +%d)
MES=$(date +%m)
ANO=$(date +%Y)
FECHA="$ANO$MES$DIA"

for file in *.jpg
do
   mv "$file" "$FECHA-$file"
done
