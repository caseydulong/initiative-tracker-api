#!/bin/bash

API="http://localhost:4741"
URL_PATH="/encounters"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "encounter": {
      "owner": "'"${OWNER}"'",
      "combatants": [
        {"name": "Sam", "initiative": 21},
        {"name": "Casey", "initiative": 15},
        {"name": "Lucas", "initiative": 5},
        {"name": "Tia", "initiative": 3}
      ]
    }
  }'

echo
