# Unifi Network Server LXC container archive for unRAID

WIP - Thank you ICH777!

## Prerequisites

- unRAID server
- Properly configured and installed LXC plugin for unRAID
- Basic understanding of command line usage

## Container archive contents

- Unifi Network Server

## LXC Distribution Infromation

- debian
- bookworm
- amd64

## Table of Contents

1. [Install container](#step-1-install-container-archive)

## Step 1: Install Container archive

Per ICH777:
1. ~~Go to the CA App and search for PiHole~~ <- not implemented currently
2. ~~Select the LXC template and install it~~ <- not implemented currently
Maybe in the future???

**#Instructions!   **
Currently only available by manually downloading and installing the template
1. Open a Unraid terminal and execute `wget -O /tmp/lxc_container_template.xml WIP: http://Repository here latter.... lxc_container_template.xml`
2. Navigate to `http://<YourunRAIDIP>/LXCAddTemplate`
3. Make your changes if necessary
4. Click Apply
5. Wait for the Done button

## Finished
- Open up the Unifi Network Server WebUI by clicking on the container icon and select WebUI
`https://<Your_Container_IP>:8443`
