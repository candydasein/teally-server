#!/bin/bash
#TOKEN=BAhJIiUyYzI4MDY0NjdiNjBlMjFhYjI0ZjliNGJmYWFiYjBmNAY6BkVG--cc715e5d28ce9f942924e1a7d48e805cc24d72f9 USERID=1 TEAID=14

curl "http://localhost:4741/tastings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "tasting": {
      "user_id": "'"${USERID}"'",
      "tea_id": "'"${TEAID}"'"
    }
  }'

echo
