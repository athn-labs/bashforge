#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: backup_directory.sh <source_directory> <destination_directory>"
    exit 1
fi

src_arg="$1"
dst_dir="$2"

if [ ! -d "$src_arg" ]; then
    echo "Error: source directory does not exist"
    exit 1
fi

if [ ! -d "$dst_dir" ]; then
    echo "Error: destination directory does not exist"
    exit 1
fi

src_dir=$(cd "$src_arg" && pwd) || {
    echo "Error: unable to resolve source directory"
    exit 1
}

timestamp=$(date +%Y-%m-%d_%H-%M-%S)
source_dir_name=$(basename "$src_dir")
output_file="$dst_dir/${source_dir_name}_${timestamp}.tar.gz"

echo "Creating backup..."

if tar czf "$output_file" -C "$(dirname "$src_dir")" "$source_dir_name" 2>/tmp/backup_err; then
    echo "Backup created successfully: ${output_file}"
else
    echo "Error: failed to create backup"
    cat /tmp/backup_err >&2
    rm -f "$output_file" 2>/dev/null
    exit 1
fi