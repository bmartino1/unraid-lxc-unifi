#!/bin/bash

#Check and update system
echo "System check and upgrade"
apt update && apt full-upgrade -y && do-release-upgrade
