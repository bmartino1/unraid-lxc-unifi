#!/bin/bash

#Fix Permission of files in build folder... files that do not contain a number...
cd /tmp/build
chmod 755 $(ls -1 /tmp/build/ | grep -v "^[0-9][0-9]-")

#copy scripts to /root for cron and end users
cp /tmp/build/update-unifi.sh /root/update-unifi.sh
cp /tmp/build/update-system.sh /root/full-system-update.sh

echo "Completed scripts and Cron File Copy to lxc container in folder /root"
echo "in the future a end user run run /root/full-system-update.sh to auto update manualy"
