#!/bin/bash
# Script 5: Open Source Manifesto Generator
# This script takes user input and generates a personalized manifesto

echo "Answer three questions to generate your manifesto."
echo ""

# Take user input for open-source tool
read -p "1. Name one open-source tool you use every day: " TOOL

# Take input for meaning of freedom
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM

# Take input for something user wants to build
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date in readable format
DATE=$(date '+%d %B %Y')

# Create output file name using username
OUTPUT="manifesto_$(whoami).txt"

# Write first line to file (overwrite if exists)
echo "On $DATE, I believe open source tools like $TOOL represent $FREEDOM." > $OUTPUT

# Append more lines to file
echo "I would like to build $BUILD and share it freely with the world." >> $OUTPUT
echo "Open source empowers collaboration and innovation." >> $OUTPUT

# Notify user and display file content
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT

