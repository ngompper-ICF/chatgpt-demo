curl -X POST \
  https://bbfzuxkkvf.execute-api.us-east-1.amazonaws.com/v1/sort \
  -s \
  -H 'Content-Type: application/json' \
  -d '{
  "sortBy": "alphabetical",
  "data": ["banana", "apple", "pear", "cherry"]
}' | jq