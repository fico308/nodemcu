# Nodemcu

Doc: https://nodemcu.readthedocs.io/en/release/getting-started/#cloud-builder

Hardware
* esp8266
* ssd1306 128*64

Pin
* D1: SCL
* D2: SDA

```
# flash firmware
esptool.py --port /dev/tty.usbserial-1110 write_flash -fm qio 0x00000 nodemcu-release-11-modules-2024-11-09-16-21-42-float.bin

# list devices
nodemcu-tool devices

# file system info
nodemcu-tool fsinfo --port /dev/tty.usbserial-1110

# create file system
nodemcu-tool mkfs --port /dev/tty.usbserial-1110

# connect
minicom -D /dev/tty.usbserial-1110

# upload file
nodemcu-tool upload --port /dev/tty.usbserial-1110 wifi-test.lua
```
