#!/bin/bash

if [ "$#" -eq 1 ]; then
    if [ -d "$1" ]; then
        find "$1" -type f 2>/dev/null | xargs du -ah 2>/dev/null | sort -rh | head
    else
        echo "Error: argument is not a directory."
        exit 1
    fi
else
    echo "Usage: largest_files.sh <directory>"
    exit 1
fi
