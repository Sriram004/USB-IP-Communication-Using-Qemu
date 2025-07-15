## Troubleshooting

- Ensure `usbipd` is running on host.
- Run `lsusb` to check if devices are attached.
- For persistent USB/IP on boot, use systemd services.
- Not all devices (e.g., cameras) work well due to isochronous transfer limits.
