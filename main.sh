#!/bin/bash

# Fetch dates from the API
response=$(curl -s https://ethelwold-watering-system.vercel.app/api)
y
# Get today's date in the same format as the API response
today=$(date +"%a %b %d %Y")

# Check if today's date is in the response
if echo "$response" | grep -q "$today"; then
    echo "False"
else
    echo "True"
fi
