#!/bin/bash
# Script 2: FOSS Package Inspector
#Tells system to run script using Bash shell
PACKAGE="git"                #Stores package name
if dpkg -l | grep -q "^ii  $PACKAGE"; then           #Checks if package is installed # dpkg -l lists packages # grep searches for Git #-q hides output (just checks)
    echo "$PACKAGE is installed."                    #Prints result
    dpkg -l | grep $PACKAGE                          #Shows package details
else 
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: Distributed version control system used worldwide." ;;
    apache2) echo "Apache: Web server powering many websites." ;;
    mysql) echo "MySQL: Open-source relational database." ;;
    firefox) echo "Firefox: Open-source web browser." ;;
    *) echo "Unknown package." ;;
esac
