#!/bin/bash

numc=$(($(head -n 1 "$1" | grep -o "$2" | wc -l)+1))
for ((i=1; i<="$numc"; i++))
do cut -d "$2" -f"$i" "$1" | paste -s -d "$2"
done
#~/.bashrc
