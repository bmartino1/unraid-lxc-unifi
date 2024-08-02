#!/bin/bash
#Use both methods from https://help.ui.com/hc/en-us/articles/220066768-Updating-and-Installing-Self-Hosted-UniFi-Network-Servers-Linux

#Adding Unifi Repository to apt-source list:
echo 'deb [ arch=amd64,arm64 ] https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list

#Adding apt-get update secure gpg key to use repository:
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg

#Confirm ubquity key:
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50

#Confirm repro
sudo apt-get update

#Confirm Lattest unifi is installed
sudo apt-get install unifi
