#!/bin/bash
ESP_VENDOR="10c4"
ESP_PRODUCT="ea60"

echo "[*] Checking for ESP32 device..."
lsusb | grep "$ESP_VENDOR:$ESP_PRODUCT" || { echo "[!] ESP32 not detected."; exit 1; }

BUSID=$(usbip list -l | grep "$ESP_VENDOR:$ESP_PRODUCT" | awk '{print $3}')
if [ -z "$BUSID" ]; then
  echo "[!] Could not find matching BUSID for ESP32."
  exit 1
fi

echo "[*] Binding ESP32 at $BUSID..."
usbip bind -b "$BUSID"
echo "[✓] Bound ESP32. Use usbip attach -r <server-ip> -b $BUSID on client."
