#!/bin/bash
#TOKEN=BAhJIiUyYzI4MDY0NjdiNjBlMjFhYjI0ZjliNGJmYWFiYjBmNAY6BkVG--cc715e5d28ce9f942924e1a7d48e805cc24d72f9 FLAVORID=46 TASTINGID=14

curl "http://localhost:4741/flavor_likes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "flavor_like": {
      "flavor_id": "'"${FLAVORID}"'",
      "tasting_id": "'"${TASTINGID}"'"
    }
  }'

echo

