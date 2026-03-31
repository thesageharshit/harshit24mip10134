# Open Source Software Audit: Git (Version Control System)

This repository contains a technical audit and automated shell scripts developed for the **Capstone Project** at VIT Bhopal University. The project explores the origin, licensing, and Linux integration of Git, the world's most popular open-source version control system.

##  Project Overview
- **Audit Subject:** Git
- **Environment:** Ubuntu 24.04 (WSL)
- **License:** GNU GPL v2
- **Tools Used:** Bash, Git, Dpkg, Grep, Awk

##  Repository Contents
This repository includes 5 automated shell scripts designed to audit the Linux environment and the Git package:

1.  **`script1.sh` (System Identity):** Generates a report of the host system's kernel, uptime, and user identity.
2.  **`script2.sh` (FOSS Inspector):** Verifies the installation of Git using `dpkg` and provides philosophical context.
3.  **`script3.sh` (Disk & Permission Auditor):** Analyzes directory sizes and file permissions for Git binaries.
4.  **`script4.sh` (Log Analyzer):** Simulates log parsing to identify system errors and warnings.
5.  **`script5.sh` (Manifesto Generator):** An interactive script that generates a personalized Open Source Manifesto.

##  How to Run
To run these scripts on an Ubuntu/Debian system, follow these steps:

1. Clone the Repository:
   ```b
   git clone https://github.com/Harshit-sagwaliya/OSS-Capstone-Audit
   cd OSS-Capstone-Audit
2. Grant Execution Permissions:
   chmod +x *.sh
3. Execute a script:
   ./script1.sh
