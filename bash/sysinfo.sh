#!/bin/bash
#
# sysinfo.sh - Display important identity and system information
# COMP2101 Lab - Improved Challenge Script
# Shows hostname, FQDN, OS name/version, main IP, and root FS free space
# in a clean, readable, human-friendly format

# Gather data
hostname=$(hostname -s)
fqdn=$(hostname -f)
os=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
ip=$(ip route get 1.1.1.1 | awk '{print $7; exit}')
diskspace=$(df -h / | awk 'NR==2 {print $4}')

# Display output using a clean template
cat <<EOF

Report for $hostname
=====================
FQDN: $fqdn
Operating System name and version: $os
IP Address: $ip
Root Filesystem Free Space: $diskspace
=====================

EOF

