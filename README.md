# Unriad-LXC-Unifi
Debian Bookwrom, unifi network application Network 8.3.32, mongodb 4.4

This is a unmonitored and unmaintained LXC backup of the Unifi Application...

Please see the forum for more information: https://forums.unraid.net/topic/171567-vm-lxc-pihole/
The Unifi Network Application setup to run under UNRAID and the LXC PLUGIN!

**#Untill i get clear direction and stpes to implement and make a lxc unraid template this will ahve to do:**
I'm still working with ICH777 lxc plugin implementation of tempates atm this is working:

#**how to get and use this template?**
You will need to downlad the tar file and place in in the backup folder of your lxc 
instruction on the forum: https://forums.unraid.net/topic/171566-vm-lxc-unifi/?do=findComment&comment=1448473

The run down:
you will wget the file and place in your LXC direct location for LXC backups.
Once in the backup folder make a folder called unifi and then run command:
 
wget %%% unifi_19.04.11_2024-07-30.tar in to the backup folder

Next go to lxc tab in unraid, add container, create container named unifi, distribution debian release bookworm, and uncheck the start after creation.
In lxc go to backups you will now see the backup I made/ That you downloaded...

click create container from backup give it a name and description
Congrulations thats it...

#How to access the unifi application once the lxc is running?
access the lxc console/terminal window

*While your there you should probly set and fix your timezone:
curenlty set to america/chicago

Be sure to set up your timezone (fix date and time) by running 
dpkg-reconfigure tzdata

Grab the IP address of your container
ip a

Remember the unifi https port is set to 8443
https://%Your Container IP%:8443/

The container is in/at unifi setup mode. no user nor configuration has been applied... At the Web UI click restore from backup or sign in with your unifi account, or setup standalone...

#**Updating your LXC Linux Envrioment**
This backup is running Debain Bookworm, just like a Physical PC, you will need to monitor and keep your OS host upto date.
https://www.debian.org/releases/bookworm/
You are incharge of any and all CVEs and updates.

While I do have the Unattended Upgrades Application installed. this should cover default installs for security updates... It should still be checked once every few month or a konw widespread security issues is anounced...

See More: https://wiki.debian.org/UnattendedUpgrades
sudo dpkg-reconfigure --priority=low unattended-upgrades

I have added mongodb server rebo from mongdb 4.4 - 8.0 see apt source list in  /etc/sourcelist.d/mongodb.list
see MongoDB Community Server for more details on Mongo DB and its updates https://www.mongodb.com/try/download/community-kubernetes-operator

apt-get update --allow-releaseinfo-change

The unifi application is able to be inplaced updated. It is recomend to login to unif and make a backup first!
How to make a backup see the forum: https://forums.unraid.net/topic/147455-support-unifi-controller-unifi-unraid-reborn/?do=findComment&comment=1431473

unifi applications does recieve updates: https://ui.com/download/releases/network-server
You must install them manualy! 
apt-get install unifi

Do at your own risk! **ALways backup befre upgrading unifi to the next release!**
When you inplace install, you will get a prompt asking about having a backup. If you click no, it will stop the unifi application vis servcie unfi stop you can turn it back on by restarting the lxc or running the command service unifi start. If you click yes it will proced to install in place updaged of the unifi application. 

You can even backup and restore your completed container for data recovery. Unraid lxc snapshots are great before a updgrades as well!


#**Disclaimer:**
This is a Debain OS running mongo DB 4.4 and Unifi network application

Waiting on Unifi for there next steps and if they will move to mongdb 7 (I have tested this with mongodb 7)
Mongdb 3.6 is EOL!...
mongodb 4.4 is now EOL!... 

Follow along and make your own Unraid LXC.
https://forums.unraid.net/topic/78060-support-linuxserverio-unifi-controller/?do=findComment&comment=1381724

this process is modifed to fit the unif needs for a lxc but otherwise folows the offical documentations found here: 
https://help.ui.com/hc/en-us/articles/220066768-Updating-and-Installing-Self-Hosted-UniFi-Network-Servers-Linux

#License
**THIS IS AN UNOFFICAL ADAPATION!** This is Not Licensed nor endosed by Unifi, Unraid, or LXC Plug Maintatiner!
Please report problems on the unriad forum: https://forums.unraid.net/topic/171566-vm-lxc-unifi/

You are free to edit, distrubite and change the data found in here to fit your needs.
