#!/bin/bash
#TOKEN=BAhJIiVlZjYxYTQzNzk3OTIwZTZhYjZhZTAyNDZiNzVmMWY5OAY6BkVG--ba768896f518af21be9216a7f7edb4c0a7f90849 NAME="biluochun" FAMILY="green" INFO="https://en.wikipedia.org/wiki/Biluochun" COUNTRY="China" PICTURE="https://static1.squarespace.com/static/5b5a70cbf93fd4d5e647ed53/5b68d9c38a922d4579cdda29/5b5a8db02b6a28ee177cd87e/1537981466039/Biluochun+1.jpg?format=750w" 


curl "http://localhost:4741/teas" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "tea": {
      "name": "'"${NAME}"'",
      "family": "'"${FAMILY}"'",
      "info": "'"${INFO}"'",
      "country": "'"${COUNTRY}"'",
      "picture": "'"${PICTURE}"'"
    }
  }'

echo

