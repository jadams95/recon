#!/bin/bash

x="$1"

for domains in $(cat $x);
do host $domains | sort -u |awk ' { print } ' &
done;
