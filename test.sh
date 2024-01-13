#!/bin/bash

# Check if the commands file exists
if [ ! -f "commands.txt" ]; then
  echo "Error: The 'commands.txt' file does not exist."
  exit 1
fi

# Read and execute each command from the file
while read -r cmd; do
  echo "Executing: $cmd"
  eval "$cmd"
  if [ $? -ne 0 ]; then
    echo "Error executing: $cmd"
  fi
done < "commands.txt"
