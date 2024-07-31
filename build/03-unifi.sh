#!/bin/bash
LAT_V="$(wget -qO- https://dl.ui.com/unifi/debian/dists/stable/ubiquiti/binary-amd64/Packages | grep "^Version:" | awk '{print $2}' | cut -d '-' -f1)"
wget -O /tmp/unifi.deb "https://dl.ui.com/unifi/${LAT_V}/unifi_sysvinit_all.deb"
apt-get -y install /tmp/unifi.deb
rm -f /tmp/unifi.deb
systemctl stop unifi
