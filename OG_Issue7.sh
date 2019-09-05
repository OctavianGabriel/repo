#!/bin/bash

ft=$(mktemp)
find . -maxdepth 1 -type f -name "*.h" -o -name "*.c" -o -name "*.sh" | while read f ; do
        l=`cat $f | sed '/^\s*$/d' | wc -l`
        f=`echo $f | cut -c 3-`
        echo "$f: $l"
done | sort > $ft

cat $ft
echo -n "TOTAL: "
cat $ft | cut -d ':' -f2 | paste -sd+ - | bc

rm -f $ft

