#!/bin/bash
modprobe vhci-hcd

read -p "Enter USB server IP: " SERVER
read -p "Enter USB Bus ID: " BUSID

usbip attach -r $SERVER -b $BUSID
