#!/bin/bash
# search_file.sh
# Usage: ./search_file.sh

echo "Choose search option:"
echo "1. Do you remember the whole file name?"
echo "2. Do you remember only part of the name?"
read -p "Enter choice [1/2]: " choice

read -p "Enter the filename (or part of it): " FILENAME

echo "Searching... this may take a while."

if [ "$choice" -eq 1 ]; then
    # Exact filename match
    sudo find / -type f -name "$FILENAME" 2>/dev/null
elif [ "$choice" -eq 2 ]; then
    # Partial match (case-insensitive)
    sudo find / -type f -iname "*$FILENAME*" 2>/dev/null
else
    echo "Invalid choice. Please select 1 or 2."
    exit 1
fi

