#!/bin/bash
curl -X GET "$1/_cat/indices/_warm" | grep $2 | awk {'print $3'} > indices.txt
input="./indices.txt"
while IFS= read -r line
do
  echo 
  curl -L -X POST "$1/_ultrawarm/migration/$line/_cold" -H 'Content-Type: application/json' --data-raw '  {
    "timestamp_field": "@timestamp"
  }'
  sleep 5
done < "$input"
