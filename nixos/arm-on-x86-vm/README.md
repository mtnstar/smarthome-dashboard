# nixos arm64 guest on x86_64 host

## installation

```bash
./init.sh
./setup-qemu.sh
```

select installer and wait until shell

```bash
sudo su
parted /dev/vda -- mklabel gpt
parted /dev/vda -- mkpart root ext4 512MB -8GB
parted /dev/vda -- mkpart swap linux-swap -8GB 100%
parted /dev/vda -- mkpart ESP fat32 1MB 512MB
parted /dev/vda -- set 3 esp on
mkfs.ext4 -L nixos /dev/vda1

mkswap -L swap /dev/vda2
swapon /dev/vda2
mkfs.fat -F 32 -n boot /dev/vda3
mount /dev/disk/by-label/nixos /mnt
mkdir -p /mnt/boot
mount -o umask=077 /dev/disk/by-label/boot /mnt/boot
nixos-generate-config --root /mnt
vim /mnt/etc/nixos/configuration.nix
nixos-install

poweroff
```
