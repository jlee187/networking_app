#!/bin/bash

curl --include --request POST "http://localhost:4741/people/" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
      "person": {
        "name": "'"${NAME}"'",
        "connections": "'"${CONNECTIONS}"'",
        "partner": "'"${PARTNER}"'",
        "children": "'"${CHILDREN}"'",
        "notes": "'"${NOTES}"'"
      }
  }'
