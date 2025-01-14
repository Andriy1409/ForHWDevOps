#!/bin/bash

# Script to find all users with /bin/bash CLI in the /etc/passwd file

# Check if the file exists
if [[ -f /etc/passwd ]]; then
    echo "Users with /bin/bash CLI:"
    # Extract users with /bin/bash shell
    awk -F: '/\/bin\/bash$/ {print $1}' /etc/passwd
else
    echo "Error: /etc/passwd file not found."
    exit 1
fi
