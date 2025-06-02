1. boot from USB with Raspberry Pi OS lite
  - https://www.raspberrypi.com/software/operating-systems/
  - `dd if=2025-05-13-raspios-bookworm-arm64-lite.img of=/dev/sda bs=4M status=progress conv=fsync` to create bootable USB

2. boot and login
```
  sudo su -
  apt update && apt upgrade -y
  apt install -y git curl
  git clone https://github.com/mtnstar/smarthome-dashboard
  cd smarthome-dashboard
  sh <(curl -L https://nixos.org/nix/install) --daemon
```
