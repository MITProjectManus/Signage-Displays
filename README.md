# Signage Displays

Basic digital signage for the shops, using a Raspberry Pi.

The Pis are configured with a standard Raspbian installation, with a user "kiosk" set to auto login.  That user will
execute the sign.sh script.

The Pi should be configured to use VNC and SSH for remote access.

Edit sign.sh to specify the pages to display.

# Set up

```
// Install some needed utilities
sudo apt-get install unclutter xdotool cec-utils

// Add "kiosk" user
sudo adduser kiosk

// Copy kiosk.desktop to /home/kiosk/.config/autostart/

// Copy sign.sh to /home/kiosk/ and make sure it's executable
chmod +x sign.sh

// Edit /etc/lightdm/lightdm.conf to set autologin-user to kiosk

```

On boot the Pi should login as the "kiosk" user and start the slideshow!
