​
WIP - Github max file size... Google Drive link coming soon....
ICH777 temple implementation WIP will maybe added here latter...

# Unriad-LXC-Unifi
Debian Bookworm, unifi network application Network 8.3.32, MongoDB 4.4

This is an unmonitored and unmaintained LXC backup of the Unifi Application...

Please see the forum for more information: https://forums.unraid.net/topic/171566-vm-lxc-unifi/


**#Untill i get clear direction and steps to implement and make a lxc unraid template, this will have to do:**
I'm still working with ICH777 lxc plugin implementation of templates atm, this is working:

#**how to get and use this template?**
You will need to download the tar file and place in the backup folder of your lxc 
instruction on this forum post:


See Reserved Post Later for Full Step-by-Step instructions...

The run-down:
you will wget the file and place in your LXC direct location for LXC backups.
Once in the backup folder make a folder called unifi and then run command:


cd /path to LXC Backup Folder
mkdir unifi
cd unifi
wget https://github.com/bmartino1/Unraid-LXC-Unifi/releases/download/v1/unifi_19.04.11_2024-07-30.tar.xz

Google Drive Mirror link
https://drive.google.com/file/d/1_Ekvs9PWGh3-hRKtyGoPz3yUGAsrNcWl/view
File: unifi_19.04.11_2024-07-30.tar.xz (881M)

ssh/ FileZilla sftp uploaded the file to the /path to lxc backup location you chose/unifi

in to the backup folder

Next go to lxc tab in unraid, add container, create container named unifi, distribution Debian release bookworm, and uncheck the start after creation.
In lxc go to backups you will now see the backup I made/ That you downloaded...

Click create container from backup, give it a name and description
Congratulations that's it...

#How to access the unifi application once the lxc is running?
Access the lxc console/terminal window

*While you are there, you should probably set and fix your timezone:
Currently set to America/Chicago

Be sure to set up your timezone (fix date and time) by running 

dpkg-reconfigure tzdata

Grab the IP address of your container

ip a

Remember, the unifi https port is set to 8443
https://%Your Container IP%:8443/

The container is in/at unifi setup mode. No user nor configuration has been applied... At the Web UI click restore from backup or sign in with your unifi account, or setup standalone...

#**Updating your LXC Linux Environment**
This backup is running Debian Bookworm, just like a Physical PC, you will need to monitor and keep your OS host up to date.
https://www.debian.org/releases/bookworm/
You are in charge of any and all CVEs and updates.

While I do have the Unattended Upgrades Application installed. This should cover default installs for security updates... It should still be checked once every few months or a known widespread security issues is announced...

See More: https://wiki.debian.org/UnattendedUpgrades

sudo dpkg-reconfigure --priority=low unattended-upgrades

I have added MongoDB server repository from MongoDB 4.4 - 8.0 see apt source list in  /etc/sourcelist.d/mongodb.list

see MongoDB Community Server for more details on MongoDB and its updates https://www.mongodb.com/try/download/community-kubernetes-operator

apt-get update --allow-releaseinfo-change
The unifi application is able to be in placed updated. It is recommended to login to unifi and make a backup first!

How to make a unifi backup see the forum: https://forums.unraid.net/topic/147455-support-unifi-controller-unifi-unraid-reborn/?do=findComment&comment=1431473
 

unifi applications does receive updates: https://ui.com/download/releases/network-server 
You must install them manually! 

apt-get install unifi

**Always backup before upgrading unifi to the next release!**
When you in-place install, you will get a prompt asking about having a backup. If you click no, it will stop the unifi application via service unfi stop, you can turn it back on by restarting the lxc or running the command:

service unifi start
 

Do at your own risk!
If you click yes it will proceed to install in place updated of the unifi application. 

You can even backup and restore your completed container for data recovery. Unraid lxc snapshots are great before a upgrades as well!


#**Disclaimer:**
This is a Debian OS running MongoDB 4.4 and Unifi network application

Waiting on Unifi for their next steps and if they will move to MongoDB 7 (I have tested this with MongoDB 7 with success in the past...)

MongoDB 3.6 is EOL!...
MongoDB 4.4 is now EOL!... 

Follow along and make your own Unraid LXC.

This process is modified to fit the unifi needs for a lxc, but otherwise follows the official documentations found here: 
https://help.ui.com/hc/en-us/articles/220066768-Updating-and-Installing-Self-Hosted-UniFi-Network-Servers-Linux
 

#License
**THIS IS AN UNOFFICIAL ADAPTATION!** This is Not Licensed nor endorsed by Unifi, Unraid, or LXC Plug Maintainer!
Please report problems on the unraid forum: https://forums.unraid.net/topic/171566-vm-lxc-unifi/

You are free to edit, distribute and change the data found in here to fit your needs.

​
