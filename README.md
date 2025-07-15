
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

```bash
sudo ./scripts/usbip_server_setup.sh
2. On Client
bash
Copy
Edit
sudo ./scripts/usbip_client_attach.sh <host-ip> <busid>
3. Launch VM
bash
Copy
Edit
./scripts/qemu_vm_launch.sh
📷 Diagram

📚 Use Cases
Secure device testing

Embedded board development

USB device isolation for malware analysis

🛑 Limitations
Webcams and other isochronous devices may not work.

Some USB 3.0 devices may need extra drivers.

📃 License
MIT

yaml
Copy
Edit

---

## 🧠 Bonus Ideas

- Include a **demo GIF or YouTube link** to showcase USB device redirection.
- Add a **`usbip.json` config file** for dynamic attach scripting.
- Use GitHub Actions to test USBIP client scripts (in dry-run/mock mode).
