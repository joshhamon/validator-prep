#!/bin/bash

# Requires incognito-cli, see https://github.com/incognitochain/incognito-cli for download and installation
# This script assumes incognito-cli can be called directly from the directory this is in

declare -i i=0
declare -a otaKeys=(
#enter OTA keys here
)

for key in "${otaKeys[@]}"
do
  echo -e "submitting key $i\n"
  ./incognito-cli account sub --otaKey $key
  ((i++))
done
echo -e "DONE!\n"  
