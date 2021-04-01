#!/bin/bash

mkdir $(date -I)_shodan
cd $(date -I)_shodan
while IFS= read -r line; do
    echo "Text read from file: $line"
    mkdir $line 
    cd $line
    shodan scan submit --filename scan-results $line
done < "$1"
