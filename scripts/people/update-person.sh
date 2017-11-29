#!/bin/bash

curl --include --request PATCH "http://localhost:4741/people/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "person": {
      "name": "'"${NAME}"'",
      "connections": "'"${CONNECTIONS}"'",
      "partner": "'"${PARTNER}"'",
      "children": "'"${CHILDREN}"'",
      "notes": "'"${NOTES}"'"
    }
  }'
