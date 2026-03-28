#!/bin/bash
# Script 3: Disk and Permission Auditor
# This script checks important system directories for size, permissions, and ownership

# Array of important directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

# Loop through each directory in the array
for DIR in "${DIRS[@]}"; do

    # Check if directory exists
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, and group using ls and awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get directory size in human-readable format
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        # Display collected information
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    
    else
        # If directory does not exist
        echo "$DIR does not exist"
    fi

done

# Additional check: verify if Git configuration file exists
if [ -f "$HOME/.gitconfig" ]; then
    echo "Git config exists at $HOME/.gitconfig"
    
    # Show permissions of Git config file
    ls -l $HOME/.gitconfig
else
    echo "Git config not found"
fi
