#!/bin/bash

#Fix Permission of files in build not container a number...
cd /tmp/build
chmod 755 $(ls -1 /tmp/build/ | grep -v "^[0-9][0-9]-")

#copy scripts to /root for cron and end users
cp /tmp/build/update-unifi.sh /root/update-unifi.sh
cp /tmp/build/update-system.sh /root/full-system-update.sh

echo "Completed File Copy"
