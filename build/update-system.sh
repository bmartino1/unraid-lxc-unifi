#!/bin/bash
#Check and update system
echo "update unifi repo for release changes"
apt-get update --allow-releaseinfo-change
apt-get update --allow-releaseinfo-change
apt-get update --allow-releaseinfo-change

echo "System check and Full system upgrade"
apt update && apt full-upgrade -y
do-release-upgrade -d -f DistUpgradeViewNonInteractive
