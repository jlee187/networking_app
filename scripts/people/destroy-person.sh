#!/bin/bash
curl --include --request DELETE "http://localhost:4741/people/${ID}" \
--header "Authorization: Token token=${TOKEN}"
