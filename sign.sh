#!/bin/bash
 
# Run this script in display 0 - the monitor
export DISPLAY=:0
 
# Hide the mouse from the display
unclutter &
xset s 0
xset -dpms
 
# If Chrome crashes (usually due to rebooting), clear the crash flag so we don't have the annoying warning bar
sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' /home/pi/.config/chromium/Default/Preferences
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' /home/pi/.config/chromium/Default/Preferences
 
# Run Chromium and open tabs.  Edit this line to specify the pages to display.
/usr/bin/chromium-browser --kiosk https://www.mit.edu &
 
# Start the kiosk loop. This keystroke changes the Chromium tab
# To have just anti-idle, use this line instead:
# xdotool keydown ctrl; xdotool keyup ctrl;
# Otherwise, use ctrl+Tab to switch tabs in Chrome
# #
while (true)
 do
  xdotool key F5;
  sleep 30
done
