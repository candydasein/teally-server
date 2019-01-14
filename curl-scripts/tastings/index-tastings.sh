#!/bin/bash
#TOKEN=BAhJIiUyYzI4MDY0NjdiNjBlMjFhYjI0ZjliNGJmYWFiYjBmNAY6BkVG--cc715e5d28ce9f942924e1a7d48e805cc24d72f9 sh curl-scripts/tastings/index-tastings.sh
curl "http://localhost:4741/tastings" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
