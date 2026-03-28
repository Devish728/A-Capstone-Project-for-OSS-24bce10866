#!/bin/bash
# Script 4: Log File Analyzer
# This script counts occurrences of a keyword in a log file

# Take log file path as first argument
LOGFILE=$1

# Take keyword as second argument, default to "error" if not provided
KEYWORD=${2:-"error"}

# Initialize counter
COUNT=0

# Check if the log file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Read the file line by line
while IFS= read -r LINE; do

    # Check if line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        
        # Increment counter if match found
        COUNT=$((COUNT + 1))
    fi

done < "$LOGFILE"

# Display total matches
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Show last 5 matching lines for reference
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
