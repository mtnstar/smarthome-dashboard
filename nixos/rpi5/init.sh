#!/bin/bash

qemu-img create -f qcow2 nixos.qcow2 20G

dd if=/dev/zero of=flash1.img bs=1M count=64
dd if=/dev/zero of=flash0.img bs=1M count=64
dd if=/usr/share/edk2/aarch64/QEMU_EFI.fd of=flash0.img conv=notrunc
