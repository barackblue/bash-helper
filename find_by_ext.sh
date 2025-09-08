#!/bin/bash
# find_by_ext.sh
# Usage: sudo ./find_by_ext.sh pdf

if [ "$#" -ne 1 ]; then
    echo "Usage: sudo $0 <extension>"
    echo "Example: sudo $0 pdf"
    exit 1
fi

EXT="$1"

echo "Searching for all *.$EXT files in the system. This may take a while..."
# Use sudo to ensure permission to scan all folders
sudo find / -type f -name "*.$EXT" 2>/dev/null
