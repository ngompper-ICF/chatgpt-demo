#!/usr/bin/bash

source bash_test_lib.sh

echo 'Given I am sorting an json array alphabetically with elements "banana", "apple", "pear", and "cherry"'

echo 'When I call the API, then:'

response=$(curl -X POST \
  https://bbfzuxkkvf.execute-api.us-east-1.amazonaws.com/v1/sort \
  -s \
  -H 'Content-Type: application/json' \
  -d '{
  "sortBy": "alphabetical",
  "data": ["banana", "apple", "pear", "cherry"]
}')

echo $response | jq

echo '... the first element of the returned json array should be "apple":'

assert_equals "$(get_json_value "$response" ".[0]")" "apple"

echo '... the last element of the returned json array should be "pear":'

assert_equals "$(get_json_value "$response" ".[-1]")" "pear"


