#!/bin/bash

if [[ $# -ne 1 ]] ; then
  echo "Usage: ./og_issue_9.sh input_file"
  exit 1
fi

file="$1"
tmp=$(mktemp)
while read LINE
do
server=`echo $LINE | awk -F[/:] '{print $4}'`
adresa=$(nslookup "$server"| tail -n +3 | grep ^Address | awk '{print $2}' | xargs)
echo -e "$adresa\t$LINE" >>$tmp
done<"$file"
mv -f $tmp "$file".out
cat "$file".out