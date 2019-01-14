#!/bin/bash
#TOKEN=BAhJIiVlZjYxYTQzNzk3OTIwZTZhYjZhZTAyNDZiNzVmMWY5OAY6BkVG--ba768896f518af21be9216a7f7edb4c0a7f90849 NAME="pine" FIRST_PARENT="wood" SECOND_PARENT="earthy" 


curl "http://localhost:4741/flavors" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "flavor": {
      "name": "'"${NAME}"'",
      "first_parent": "'"${FIRST_PARENT}"'",
      "second_parent": "'"${SECOND_PARENT}"'"
    }
  }'

echo
