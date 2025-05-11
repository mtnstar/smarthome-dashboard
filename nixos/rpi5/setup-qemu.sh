#!/bin/bash

qemu-system-aarch64 -nographic -machine virt,gic-version=max -m 512M -cpu max -smp 4 \
-netdev user,id=vnet,hostfwd=:127.0.0.1:0-:22 -device virtio-net-pci,netdev=vnet \
-drive file=nixos.img,if=none,id=drive0,cache=writeback -device virtio-blk,drive=drive0,bootindex=0 \
-drive file=nixos.iso,if=none,id=drive1,cache=writeback -device virtio-blk,drive=drive1,bootindex=1 \
-drive file=flash0.img,format=raw,if=pflash -drive file=flash1.img,format=raw,if=pflash 
