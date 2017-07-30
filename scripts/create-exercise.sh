#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/exercises"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "exercise": {
      "name": "squat",
      "weight": "300"
    }
  }'

echo