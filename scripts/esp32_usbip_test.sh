#!/bin/bash
ESP_VENDOR="10c4"  # Replace with your ESP32 vendor ID
ESP_PRODUCT="ea60" # Replace with your ESP32 product ID

lsusb | grep "$ESP_VENDOR:$ESP_PRODUCT"
if [ $? -ne 0 ]; then
  echo "ESP32 not detected. Please connect the board."
  exit 1
fi

echo "ESP32 device detected. Binding to USB/IP..."
BUSID=$(usbip list -l | grep "$ESP_VENDOR:$ESP_PRODUCT" | awk '{print $3}')
usbip bind -b "$BUSID"

echo "Now accessible from the remote client using:"
echo "usbip attach -r <server-ip> -b $BUSID"
