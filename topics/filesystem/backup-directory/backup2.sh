#!/bin/bash

if [ "$#" -eq 2 ]; then
    if [ -d "$1" ] && [ -d "$2" ]; then
        echo "Creating backup..."
        tar czf "$1" "$2" 2>/dev/null
        echo "Backup created successfully: ${2}"
    elif [ ! -d "$1" ]; then
        echo "Error: source directory does not exist"
        exit 1
    else
        echo "Error: destination directory does not exist"
        exit 1
    fi
else
    echo "Usage: backup_directory.sh <source_directory> <destination_directory>"
    exit 1
fi