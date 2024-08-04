#!/bin/bash

# Install unattended-upgrades
#sudo apt update
sudo apt install -y unattended-upgrades

# Pre-configure unattended-upgrades
echo "unattended-upgrades unattended-upgrades/enable_auto_updates boolean true" | sudo debconf-set-selections

# Reconfigure unattended-upgrades to apply the pre-configured setting
sudo dpkg-reconfigure --frontend=noninteractive unattended-upgrades

#echo "Unattended-upgrades has been installed and configured to automatically download and install stable updates."

#WIP
echo "Setup Automated security update installations"
