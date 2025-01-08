#!/bin/bash


if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <start_index> <end_index>"
  exit 1
fi

START_INDEX=$1  
END_INDEX=$2    


> inputFile

for ((i=START_INDEX; i<$END_INDEX; i++)); do
  RANDOM_NUMBER=$((RANDOM % 1000))  
  echo "$i, $RANDOM_NUMBER" >> inputFile  
done

echo "inputFile has been generated successfully!"

