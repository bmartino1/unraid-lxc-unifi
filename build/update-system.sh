#!/bin/bash
#Check and update system
echo "System check and Full system upgrade"
apt update && apt full-upgrade -y
do-release-upgrade -d -f DistUpgradeViewNonInteractive
