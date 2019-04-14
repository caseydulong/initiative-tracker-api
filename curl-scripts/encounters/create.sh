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
        {"name": "Ignatius", "initiative": 20},
        {"name": "Reliquary", "initiative": 15},
        {"name": "Izadora", "initiative": 10}
      ]
    }
  }'

echo
