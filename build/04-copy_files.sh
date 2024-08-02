#!/bin/bash
cd /tmp/build
chmod 755 $(ls -1 /tmp/build/ | grep -v "^[0-9][0-9]-")
cp /tmp/build/update-unifi.sh /root/update-unifi.sh
cp /tmp/build/update-system.sh /root/full-system-update.sh
