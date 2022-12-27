#!/usr/bin/bash

source bash_test_lib.sh

echo 'Given I am sorting an json object by key, with keys banana, apple, pear, and cherry'

echo 'When I call the API, then:'

response=$(curl -X POST \
  https://bbfzuxkkvf.execute-api.us-east-1.amazonaws.com/v1/sort \
  -s \
  -H 'Content-Type: application/json' \
  -d '{
  "sortBy": "key",
  "data": {"banana":"yellow", "apple":"red", "pear":"green", "cherry":"red"}
}')

echo $response | jq

echo '... the first key of the returned json object should be "apple":'

assert_equals "$(get_json_key "$response" ".[0]")" "apple"

echo '... the last key of the returned json object should be "pear":'

assert_equals "$(get_json_key "$response" ".[-1]")" "pear"