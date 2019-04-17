#!/bin/bash

API="http://localhost:4741"
URL_PATH="/encounters"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "encounter": {
      "owner": "'"${OWNER}"'",
      "combatants": [
        {"name": "Sam", "initiative": 20},
        {"name": "Casey", "initiative": 15},
        {"name": "Lucas", "initiative": 5}
      ]
    }
  }'

echo
