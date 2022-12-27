#!/usr/bin/bash

source bash_test_lib.sh

echo 'Given I am sorting an json array numerically with elements 4, 9, 3, -1, 400, and 5'

echo 'When I call the API, then:'

response=$(curl -X POST \
  https://bbfzuxkkvf.execute-api.us-east-1.amazonaws.com/v1/sort \
  -s \
  -H 'Content-Type: application/json' \
  -d '{
  "sortBy": "numeric",
  "data": [4,9,3,-1,400,5]
}')

echo $response | jq

echo '... the first element of the returned json array should be -1:'

assert_equals "$(get_json_value "$response" ".[0]")" "-1"

echo '... the last element of the returned json array should be 400:'

assert_equals "$(get_json_value "$response" ".[-1]")" "400"