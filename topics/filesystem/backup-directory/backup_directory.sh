#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: backup_directory.sh <source_directory> <destination_directory>"
    exit 1
fi

src_arg="$1"
dst_arg="$2"

if [ ! -e "$src_arg" ]; then
    echo "Error: source path does not exist"
    exit 1
fi

if [ ! -d "$src_arg" ]; then
    echo "Error: source is not a directory"
    exit 1
fi

if [ ! -e "$dst_arg" ]; then
    echo "Error: destination path does not exist"
    exit 1
fi

if [ ! -d "$dst_arg" ]; then
    echo "Error: destination is not a directory"
    exit 1
fi

src_dir=$(cd "$src_arg" && pwd) || {
    echo "Error: unable to resolve source directory"
    exit 1
}
dst_dir=$(cd "$dst_arg" && pwd) || {
    echo "Error: unable to resolve destination directory"
    exit 1
}

if [ "$dst_dir" = "$src_dir" ] || [[ "$dst_dir" == "$src_dir"/* ]]; then
    echo "Error: destination directory is inside (or equal to) the source directory"
    exit 1
fi

if [ ! -w "$dst_dir" ]; then
    echo "Error: destination directory is not writable"
    exit 1
fi

timestamp=$(date +%Y-%m-%d_%H-%M-%S)
source_dir_name=$(basename "$src_dir")
output_file="$dst_dir/${source_dir_name}_${timestamp}.tar.gz"

echo "Creating backup..."

if tar czf "$output_file" -C "$(dirname "$src_dir")" "$source_dir_name" 2>/dev/null; then
    echo "Backup created successfully: ${output_file}"
else
    echo "Error: failed to create backup"
    rm -f "$output_file" 2>/dev/null
    exit 1
fi