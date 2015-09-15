#!/bin/bash
# first is line number file and second is words file
while IFS='' read -r lineno || [[ -n "$lineno" ]]; do
    #echo $lineno
    line=$(sed -n "${lineno}p" "$2")
    echo $line
done < "$1"
