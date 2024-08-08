#!/bin/bash

directory="/Users/ayaz/Bash/exercises"
output_file="/Users/ayaz/Bash/exercises/filelist.txt"
echo "listing files in $directory"

if [ ! -f "$output_file" ]; then
    touch "$output_file"
    echo "Created file: $output_file"
fi
ls "$directory" > "$output_file"
echo "file names have been listed into $output_file"