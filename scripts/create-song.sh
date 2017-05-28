#!/bin/bash

API="http://localhost:4741"
URL_PATH="/songs"
TOKEN="BAhJIiVkMDFjMmFmMjdlYWMxMjhjMGE5NDgxODliZjNiMjEzMAY6BkVG--dda7743dcc2c0f7b3a220d009cd659f84de59d4d"

TITLE="Song 7"
NAME="Artist 7"
URL="https://www.youtube.com/watch?v=otz5V3RnG1Q"

curl ${API}${URL_PATH} \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "song": {
      "song_title": "'"${TITLE}"'",
      "artist_name": "'"${NAME}"'",
      "song_url": "'"${URL}"'"
    }
  }'

echo
