
# USB/IP Virtualization Using QEMU

This project demonstrates how to share physical USB devices from a host system and access them inside QEMU virtual machines using USB/IP protocol.

## 💡 Features

- USB/IP device sharing over network
- QEMU guest USB passthrough
- Support for embedded board development (ESP32-S3, STM32)
- Secure sandboxing of USB devices

## 📦 Components

- QEMU with USB passthrough support
- Linux USB/IP tools
- systemd auto-attach scripts
- Test cases for USB device access

## 🛠️ Setup

### 1. On USB Host


sudo ./scripts/usbip_server_setup.sh
2. On Client
sudo ./scripts/usbip_client_attach.sh <host-ip> <busid>
3. Launch VM
bash

./scripts/qemu_vm_launch.sh
📷 Diagram

📚 Use Cases
Secure device testing

Embedded board development

USB device isolation for malware analysis

🛑 Limitations
Webcams and other isochronous devices may not work.

Some USB 3.0 devices may need extra drivers.

