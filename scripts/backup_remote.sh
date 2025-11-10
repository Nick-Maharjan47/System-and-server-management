#!/bin/bash

# Variables
SOURCE_DIR="/etc/"
DESTINATION_DIR="r0965429@leia:/home/r0965429/backups/etc_backup_$(date +'%Y-%m-%d').tar.gz"

# Perform the backup using rsync
rsync -avz --delete " -e "ssh -p 22345 "SOURCE_DIR" "$DESTINATION_DIR"

