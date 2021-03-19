#!/bin/bash

find . -type f -not -path '*/\.*' -exec du -b {} \; | sort -rh | awk '{print $2" "$1}' | cut -c 3-