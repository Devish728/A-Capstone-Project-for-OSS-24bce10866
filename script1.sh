#!/bin/bash
#Tells system to run script using Bash shell
# Script 1: System Identity Report
STUDENT_NAME="Devish Gupta"
STUDENT_REG_NO_="24BCE10866"
SOFTWARE_CHOICE="Git"
#Variables storing your name, Registration number and chosen software
KERNEL=$(uname -r)                           #Gets Linux kernel version
USER_NAME=$(whoami)                          #Gets current logged-in user
UPTIME=$(uptime -p)                          #Shows how long system has been running
DISTRO=$(lsb_release -d 2>/dev/null | cut -f2)         #Shows how long system has been running and -f2 extracts only the  useful part
DATE=$(date)                                 #Gets current date and time

echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo " Open Source Audit — $STUDENT_REG_NO_"
echo "================================"
echo "Software Chosen: $SOFTWARE_CHOICE"
echo "Kernel Version: $KERNEL"
echo "User: $USER_NAME"
echo "Uptime: $UPTIME"
echo "Distro: $DISTRO"
echo "Date: $DATE"
echo "License: GPL (Linux Kernel)"
#echo prints the formatted output
