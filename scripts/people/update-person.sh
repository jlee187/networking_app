#!/bin/bash

curl --include --request PATCH "http://localhost:4741/people/${ID}" \
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
