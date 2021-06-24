#!/bin/bash
curl -X GET "$1/_cat/indices/_hot" | grep $2 | awk {'print $3'} > indices.txt
input="./indices.txt"
while IFS= read -r line
do
  echo $line && curl -X POST "$1/_ultrawarm/migration/$line/_warm"
  sleep 5
done < "$input"
