#!/bin/bash
echo "[*] Launching QEMU VM with USB passthrough..."

qemu-system-x86_64 \
  -enable-kvm \
  -m 2048 \
  -cpu host \
  -usb \
  -device usb-host,hostbus=1,hostaddr=2 \
  -hda your_vm_image.qcow2

# Replace hostbus/hostaddr with your USB device values (from lsusb -t)
