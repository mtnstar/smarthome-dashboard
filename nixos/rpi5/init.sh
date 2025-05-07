#!/bin/bash

mkdir -p /tmp/vagrant/edk2
cp /usr/share/edk2/aarch64/QEMU_VARS.fd /tmp/vagrant/edk2/myvm_VARS.fd
cp /usr/share/edk2/aarch64/QEMU_EFI.fd /tmp/vagrant/edk2/QEMU_EFI.fd
dd if=/dev/zero of=/tmp/vagrant/edk2/QEMU_EFI.fd bs=1c count=1 seek=67108863
