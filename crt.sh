#!/bin/bash

x="$1"
curl "https://crt.sh?q=%.$x&output=json" | jq "." | awk -F\" "/\"*\.$x\"/ { print $4 }" | cut -d '"' -f4 | sort -u >"$x.txt"
