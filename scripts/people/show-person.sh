#!/bin/bash

curl --include --request GET http://localhost:4741/people/ \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"
