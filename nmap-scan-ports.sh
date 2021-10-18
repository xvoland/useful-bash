#!/bin/bash
#
# Scanning ports.
# It works in two stages.
# First stage a regular quick scan is performed.
# Second, a more thorough scan, using the existing scripts (option -A).
#
# Usage: ./nmap-scan-ports  <ip address>

ports=$(nmap -p- --min-rate=500 $1 | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//)
nmap -p$ports -A $1