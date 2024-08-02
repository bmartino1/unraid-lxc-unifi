#!/bin/bash

#Unifi Grab version
LAT_V="$(wget -qO- https://dl.ui.com/unifi/debian/dists/stable/ubiquiti/binary-amd64/Packages | grep "^Version:" | awk '{print $2}' | cut -d '-' -f1)"
wget -O /tmp/unifi.deb "https://dl.ui.com/unifi/${LAT_V}/unifi_sysvinit_all.deb"

#Install unifi using app over dokg -i...
apt-get -y install /tmp/unifi.deb

#Clean up
rm -f /tmp/unifi.deb
systemctl stop unifi

#Hostname set for unifi device adoption.
hostnamectl set-hostname unifi

echo "Completed Main Service Install of Unifi Network Applicaiton"
