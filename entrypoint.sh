#!/bin/bash
#start bota.
cd /opt/ts3soundboard/
chmod 777 ts3bot
chmod 777 /opt/ts3soundboard/TeamSpeak3-Client-linux_amd64/ts3client_linux_amd64
./ts3bot -update
LC_ALL="en_US.UTF-8" xinit /opt/ts3soundboard/ts3bot -- /usr/bin/Xvfb :1 -screen 0 800x600x16 -ac