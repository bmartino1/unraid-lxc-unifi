# Unifi Network Server LXC container archive for unRAID

Thank you ICH777 with their code outline and assistance on this!

## Warning!
- This LXC will auto-update the UniFi network application without a backup. It is recommended that after the template is made, you create an LXC snapshot and log in to your UniFi instance to make/download a backup within the UniFi Network Application.

You can disable this by turning off the cron job:
`crontab -e`
and commenting out the cron that runs the update.

## Prerequisites

- unRAID server
- Properly configured and installed LXC plugin for unRAID
- Basic understanding of command line usage

-- Unraid Forum to check on updates and known issues...  
https://forums.unraid.net/topic/171566-template-lxc-unifi/#comment-1448473

## Container archive contents

- Unifi Network Server

## LXC Distribution Information

- debian
- bookworm
- amd64

### Install Container Instructions!

**In the Future maybe**
1. ~~Select the LXC template and install it~~ <- not implemented currently  

Currently only available by manually downloading and installing the template.

1. Open a Unraid terminal and execute  
   `wget -O /tmp/lxc_container_template.xml https://raw.githubusercontent.com/bmartino1/unraid-lxc-unifi/main/lxc_container_template.xml`
2. Navigate to `http://<Your_unRAID_IP>/LXCAddTemplate`
3. Make your changes if necessary.
4. Click Apply.
5. Wait for the Done button.

## Finished

- Open the UniFi Network Server WebUI by clicking on the container icon and selecting WebUI:  
  `https://<Your_Container_IP>:8443`

## License

**THIS IS AN UNOFFICIAL ADAPTATION!** This is not licensed nor endorsed by Unifi, Unraid, or the LXC Plugin Maintainer!  
Please report problems on the Unraid Forum:  
https://forums.unraid.net/topic/171566-template-lxc-unifi/

You are free to edit, distribute, and modify the data found here to suit your needs.
