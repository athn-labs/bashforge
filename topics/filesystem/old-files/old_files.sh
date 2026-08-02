#!/bin/bash

if [ "$#" -eq 2 ]; then
    if [[ -d "$1" && "$2" =~ ^[0-9]+$ ]]; then
        find "$1" -type f -mtime +"$2" 2>/dev/null
    elif [ -d "$1" ]; then
        echo "Error: second argument is not a number"
        exit 1
    else
        echo "Error: first argument is not a directory"
        exit 1
    fi
else
    echo "Usage: old_files.sh <directory> <days>"
    exit 1
fi