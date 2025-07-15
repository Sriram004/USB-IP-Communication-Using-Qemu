#!/bin/bash
modprobe usbip_core
modprobe usbip_host
modprobe vhci-hcd

echo "[*] Starting usbip daemon..."
usbipd -D

echo "[*] Listing USB devices..."
usbip list -l

read -p "Enter USB Bus ID to bind (e.g., 1-1): " BUSID
usbip bind -b $BUSID

echo "[✓] USB device $BUSID is now shared over USB/IP."
