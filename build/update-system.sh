#!/bin/bash
#Check and update system
echo "update unifi repo for release changes"
apt-get update --allow-releaseinfo-change
apt-get update --allow-releaseinfo-change
apt-get update --allow-releaseinfo-change

echo "System check and Full system upgrade"
apt update && apt full-upgrade -y

#Ubuntu not debain. Look at debain release notes.
#do-release-upgrade -d -f DistUpgradeViewNonInteractive
echo "full distor upgrade review debian release notes:"
echo https://www.debian.org/releases/stable/releasenotes
