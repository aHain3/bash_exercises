#!/bin/bash
backupDirectory() {
    local dir="$1"
    local timestamp=$(date +"%Y%m%d_%H%M%S") 
    local backup_file="${dir%/}_backup_${timestamp}.tar.gz" 
     if [ -d "$dir" ]; then
        echo "Listing files in directory: $dir"
        ls "$dir"  
    else
        echo "Error: Directory $dir does not exist."
    fi
    tar -czf "$backup_file" -C "$(dirname "$dir")" "$(basename "$dir")"
    if [ $? -eq 0 ]; then
        echo "Backup successful: $backup_file"
    fi
}
backupDirectory $1