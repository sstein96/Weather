#!/bin/bash

Y=`date -d "yesterday" '+%Y'`
M=`date -d "yesterday" '+%m'`
D=`date -d "yesterday" '+%d'`
curl "https://www.wunderground.com/history/airport/GNV/$Y/$M/$D/DailyHistory.heml?&format=1" > gnv.txt

maxTemp=`awk -F',' '{print $2}' gnv.txt | sort -n | tail -n1`

echo The Max temp is $maxTemp on $D $M $Y


