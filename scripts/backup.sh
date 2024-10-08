#!/bin/bash

# Create a directory for backups if it doesn't exist
mkdir -p /var/backups/inotify

# Check if the file is a vim swap file, and exit if true
if echo "$1" | grep -qP "\..*\.sw(p|x|px)$" ; then
    exit 0
fi

# Copy the file while preserving the directory structure
cp -p --parents "$1" /var/backups/inotify

# Rename the backup file to include the date and time
mv "/var/backups/inotify/$1" "/var/backups/inotify/$1_$(date +'%Y.%m.%d_%H:%M:%S')"

