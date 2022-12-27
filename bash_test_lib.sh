#!/usr/bin/bash

Green='\033[0;32m'
Red='\033[0;31m'
Color_Off='\033[0m'
Check_Mark='\xE2\x9C\x94'

assert_equals () {
  if [ "$1" = "$2" ]; then
    echo -e "$Green $Check_Mark Success $Color_Off"
  else
    echo -e "$Red Failed $Color_Off"
    echo -e "$Red Expected $1 to equal $2 $Color_Off"
    Errors=$((Errors  + 1))
  fi
}

get_json_value () {
  echo $1 | jq -r $2
}

get_json_key () {
  echo $1 | jq -r "keys | $2"
}
