#!/bin/bash

API="http://localhost:4741"
URL_PATH="/songs/6"
TOKEN="BAhJIiVkMDFjMmFmMjdlYWMxMjhjMGE5NDgxODliZjNiMjEzMAY6BkVG--dda7743dcc2c0f7b3a220d009cd659f84de59d4d"

TITLE="Song 5-update"
NAME="Artist 5-update"


curl ${API}${URL_PATH} \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "song": {
      "song_title": "'"${TITLE}"'",
      "artist_name": "'"${NAME}"'"
    }
  }'

echo
