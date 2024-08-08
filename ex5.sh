#!/bin/bash

count_ips() {
    local file="$1"

    echo "Counting occurrences of IP addresses in $file..."
    grep -oE '\b[0-9]{1,3}(\.[0-9]{1,3}){3}\b' "$file" | sort | uniq -c | sort -nr
    
}
count_ips $1s