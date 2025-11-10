#!/bin/bash

# Find all directories in /etc, excluding .git and incron.d
find /etc -type d ! -regex '.*/.git.*' ! -name 'incron.d' -print0 | \
xargs -0 -I{} echo "{} IN_CLOSE_WRITE,recursive=false /etc/scripts/backup.sh \$@/\$#" > /etc/incron.d/etc.conf

# Restart incron service to apply changes
systemctl restart incron

