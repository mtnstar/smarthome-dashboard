#!/bin/bash

mkdir -p /tmp/vagrant/edk2
cp /usr/share/edk2/aarch64/QEMU_VARS.fd /tmp/vagrant/edk2/myvm_VARS.fd
#dd if=/dev/zero of=/tmp/vagrant/edk2/myvm_VARS.fd bs=1M count=64
