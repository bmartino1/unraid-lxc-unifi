#!/bin/bash
# Display date
echo $(date)
echo

# Allow apt repo to update for Unifi
echo "apt-get update for next Unifi release"
apt-get update --allow-releaseinfo-change
apt-get update --allow-releaseinfo-change

# Get latest and current version
LAT_V="$(wget -qO- https://dl.ui.com/unifi/debian/dists/stable/ubiquiti/binary-amd64/Packages | grep "^Version:" | awk '{print $2}' | cut -d '-' -f1)"
CUR_V="$(/usr/lib/unifi/bin/ubnt-apttool showpkgver unifi | cut -d '-' -f1)"

# Fall back to current version if latest version is empty
if [ -z "${LAT_V}" ]; then
  echo "Can't get latest version from Unifi Network Server, falling back to: ${CUR_V}"
  LAT_V="${CUR_V}"
fi

# Update routine
if [ "${CUR_V}" != "${LAT_V}" ]; then
  rm -f /tmp/unifi.deb
  echo "Found newer version from Unifi Network Server: ${LAT_V}, installing please wait..."
  if wget -O /tmp/unifi.deb "https://dl.ui.com/unifi/${LAT_V}/unifi_sysvinit_all.deb" ; then
    echo "Successfully downloaded Unifi Network Server!"
  else
    echo "Something went wrong while downloading Unifi Network Server!"
    rm -f /tmp/unifi.deb
    systemctl start unifi
    exit 1
  fi
  systemctl stop unifi

  # Pre-configure debconf to answer "Yes" to the backup prompt
  echo "unifi unifi/has_backup boolean true" | sudo debconf-set-selections

  # Install the package non-interactively
  DEBIAN_FRONTEND=noninteractive apt-get -y install /tmp/unifi.deb

  rm -f /tmp/unifi.deb
  systemctl start unifi
  
echo "System check and Full system upgrade"
apt update && apt full-upgrade -y

else
  echo "Nothing to do, Unifi Network Server ${CUR_V} up-to-date!"
fi
