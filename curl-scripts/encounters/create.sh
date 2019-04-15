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
        {"name": "Tylo", "initiative": 20},
        {"name": "Vincent", "initiative": 15},
        {"name": "Nora", "initiative": 5},
        {"name": "Karash", "initiative": 10},
        {"name": "Fogo", "initiative": 15},
        {"name": "warewolf", "initiative": 13},
        {"name": "dire wolves", "initiative": 14}
      ]
    }
  }'

echo
