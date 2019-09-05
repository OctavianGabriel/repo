#!/bin/bash

if [[ $# -ne 1 ]] ; then
  echo "Usage: ./og_issue11.sh input_file"
  exit 1

Show original message



# probleme la range-urile de ip-uri...

grep -E -o "(\s|^|$|\-|[:;,.!?])((((25[0-5])|(2[0-4][0-9])|(1([0-9]){2})|(([1-9])([0-9]))|([0-9]))\.){3})((25[0-5])|(2[0-4][0-9])|(1([0-9]){2})|(([1-9])([0-9]))|([0-9]))(\s|^|$|\-|[:;,.!?])" $1 | sed -e 's/\s//g' -e 's/[-|:|;|,|!|?]//g' -e 's/^\.//g' -e 's/\.$//g'




