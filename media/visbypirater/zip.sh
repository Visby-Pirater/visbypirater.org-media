#!/bin/bash

# https://unix.stackexchange.com/a/86727
for d in ./*; do
    if [ -d "$d" ]; then
        mp3dir="$d/mp3/"
        if [ -d "$mp3dir" ]; then
            zip -rvDj "$d/$(basename $d).mp3.zip" "$mp3dir"
        fi
    fi
done
