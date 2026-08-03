#!/bin/bash

if [ "$#" -eq 1 ]; then
    if [ -d "$1" ]; then
        find "$1" -type d -empty 2>/dev/null
    else
        echo "Error: argument is not a directory"
        exit 1
    fi
else
    echo "Usage: empty_directories.sh <directory>"
    exit 1
fi