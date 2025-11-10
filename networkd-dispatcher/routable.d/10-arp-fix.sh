#!/bin/bash
#This checks if the interface is eth0
if [ "$IFACE" = "eth0" ]; then
	#Then added static Arp of my ip and mac
	/sbin/arp -s 193.191.176.254 ca:fe:c0:ff:ee:00
fi

