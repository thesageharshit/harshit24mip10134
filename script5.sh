#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Harshit sagwaliya
# Course: Open Source Software

echo "========================================="
echo "    Open Source Manifesto Generator      "
echo "========================================="
echo "Please answer the following three questions:"

# Using the read command to get user input
read -p "1. Why is open source important to you? " ANS1
read -p "2. How does Git empower developers? " ANS2
read -p "3. What is one FOSS value you want to adopt? " ANS3

echo "-----------------------------------------"
echo "Generating your manifesto..."
sleep 1 # Adds a cool 1-second pause

# File to save the output to
FILE_NAME="my_manifesto.txt"

# Writing the user's answers into the text file
echo "--- My Open Source Manifesto ---" > $FILE_NAME
echo "Author: [Type Your Name Here]" >> $FILE_NAME
echo "Date: $(date)" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "1. Why open source is important:" >> $FILE_NAME
echo "   $ANS1" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "2. How Git empowers developers:" >> $FILE_NAME
echo "   $ANS2" >> $FILE_NAME
echo "" >> $FILE_NAME
echo "3. A FOSS value to adopt:" >> $FILE_NAME
echo "   $ANS3" >> $FILE_NAME

echo "Manifesto successfully saved to $FILE_NAME!"
echo "Here is what your file looks like:"
echo "-----------------------------------------"
# Display the created file to the screen
cat $FILE_NAME
echo "========================================="
