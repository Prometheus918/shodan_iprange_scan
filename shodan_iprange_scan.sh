#!/bin/bash

mkdir $(date -I)_shodan
cd $(date -I)_shodan
while IFS= read -r line; do
    echo "Text read from file: $line"
    shodan scan submit --filename $line $line
done < "$1"
