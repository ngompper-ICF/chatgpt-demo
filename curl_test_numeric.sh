curl -X POST \
  https://bbfzuxkkvf.execute-api.us-east-1.amazonaws.com/v1/sort \
  -s \
  -H 'Content-Type: application/json' \
  -d '{
  "sortBy": "numeric",
  "data": [4,9,3,-1,400]
}' | jq