#!/bin/bash
#TOKEN=BAhJIiVlZjYxYTQzNzk3OTIwZTZhYjZhZTAyNDZiNzVmMWY5OAY6BkVG--ba768896f518af21be9216a7f7edb4c0a7f90849 sh curl-scripts/index-flavors.sh
curl "http://localhost:4741/flavors" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
