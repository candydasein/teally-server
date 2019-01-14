#!/bin/bash
#ID= TOKEN=BAhJIiVlZjYxYTQzNzk3OTIwZTZhYjZhZTAyNDZiNzVmMWY5OAY6BkVG--ba768896f518af21be9216a7f7edb4c0a7f90849 sh curl-scripts/users/show-user.sh
curl "http://localhost:4741/users/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
