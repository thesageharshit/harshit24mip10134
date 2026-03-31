#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Harshit sagwaliya
# Course: Open Source Software

echo "========================================="
echo "        Directory Audit Report           "
echo "========================================="

# Array of standard Linux directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# For loop to check each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extracting permissions, owner, and group using awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Extracting size using du and cut
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "[✔] $DIR => Permissions/Owner: $PERMS | Size: $SIZE"
    else
        echo "[✖] $DIR does not exist on this system."
    fi
done

echo "-----------------------------------------"
echo "Checking specific FOSS directory for: Git"
echo "-----------------------------------------"

# Checking Git's core library/data directory
GIT_DIR="/usr/lib/git-core"

if [ -d "$GIT_DIR" ]; then
    GIT_PERMS=$(ls -ld $GIT_DIR | awk '{print $1, $3, $4}')
    GIT_SIZE=$(du -sh $GIT_DIR 2>/dev/null | cut -f1)
    echo "[✔] Git Core ($GIT_DIR) => Permissions: $GIT_PERMS | Size: $GIT_SIZE"
else
    echo "[✖] Git config/core directory not found at $GIT_DIR"
fi

echo "========================================="
