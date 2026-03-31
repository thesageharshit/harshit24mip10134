#!/bin/bash
# Script 1: System Identity Report
# Author: [Type Your Name Here]
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="harshit sagwaliya"
SOFTWARE_CHOICE="Git"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d '=' -f 2 | tr -d '"')
CURRENT_DATE=$(date)

# --- Display ---
echo "========================================="
echo "       Open Source Audit Welcome         "
echo "========================================="
echo "Student Name    : $STUDENT_NAME"
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "-----------------------------------------"
echo "OS Distribution : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "-----------------------------------------"
echo "License Note: This Ubuntu OS is largely governed by the GPL license!"
echo "========================================="
