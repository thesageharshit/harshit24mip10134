#!/bin/bash
# Script 4: Log File Analyzer
# Author: Harshit sagwliya
# Course: Open Source Software

# Creating a sample log file so we have data to analyze on this fresh system
TEST_LOG="test_system.log"
echo "info: system boot successful" > $TEST_LOG
echo "error: network timeout reaching GitHub" >> $TEST_LOG
echo "warning: high memory usage detected" >> $TEST_LOG
echo "error: git pull failed, connection refused" >> $TEST_LOG
echo "info: restarting networking service" >> $TEST_LOG
echo "error: user authentication rejected" >> $TEST_LOG

# Taking arguments from the command line, defaulting to our test log and 'error'
LOGFILE=${1:-$TEST_LOG}
KEYWORD=${2:-"error"}
COUNT=0

echo "========================================="
echo "          Log File Analyzer              "
echo "========================================="
echo "Analyzing File : $LOGFILE"
echo "Search Keyword : $KEYWORD"
echo "-----------------------------------------"

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# While-read loop to process the file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Result: Keyword '$KEYWORD' found $COUNT times."
echo "-----------------------------------------"
echo "Last matching lines from the log:"
# Using grep and tail to fulfill the assignment TODO requirement
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "========================================="
