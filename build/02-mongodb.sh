#!/bin/bash

#Old Depricated version:
#wget -qO - https://www.mongodb.org/static/pgp/server-3.6.asc | sudo apt-key add -
#echo "deb [trusted=yes] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list

#MongoDB Version 7:
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \
   gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg \
   --dearmor
echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] http://repo.mongodb.org/apt/debian bookworm/mongodb-org/7.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

#Install MongoDB Dependendencies
apt-get update
apt-get -y install --no-install-recommends mongodb-org

#Unifi Install will intall and grab MongDB...
