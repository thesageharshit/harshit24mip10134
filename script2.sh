#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: harshit sagwaliya
# Course: Open Source Software

PACKAGE="git"

echo "========================================="
echo "       FOSS Package Inspector            "
echo "========================================="
echo "Checking status for: $PACKAGE"
echo "-----------------------------------------"

# Check if the package is installed using dpkg (Ubuntu's package manager)
if dpkg -s $PACKAGE &> /dev/null; then
    echo "Status: $PACKAGE IS installed."
    echo "-----------------------------------------"
    # Fetching Version and Description
    dpkg -s $PACKAGE | grep -E '^Version|^Description'
else
    echo "Status: $PACKAGE is NOT installed."
fi

echo "-----------------------------------------"
echo "Philosophy Note:"

# Case statement to print a short description based on the package name
case $PACKAGE in
    httpd|apache2) 
        echo "Apache: The web server that built the open internet." 
        ;;
    mysql|mysql-server) 
        echo "MySQL: Open source at the heart of millions of apps." 
        ;;
    vlc) 
        echo "VLC: Plays anything - built by students in Paris." 
        ;;
    git) 
        echo "Git: The tool Linus built when proprietary failed him." 
        ;;
    *) 
        echo "An open-source tool empowering users with freedom." 
        ;;
esac
echo "========================================="
