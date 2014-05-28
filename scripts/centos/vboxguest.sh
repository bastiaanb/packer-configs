#!/usr/bin/env bash

echo "Create tmp dir"
mkdir /tmp/virtualbox

echo "Mount VBoxGuestAdditions ISO"
VERSION=$(cat /root/.vbox_version)
mount -o loop /root/VBoxGuestAdditions_$VERSION.iso /tmp/virtualbox

echo "Install VBoxGuestAdditions"
sh /tmp/virtualbox/VBoxLinuxAdditions.run
echo "Result: $?"

echo "Unmount VBoxGuestAdditions ISO"
umount /tmp/virtualbox

echo "Remove tmp dir"
rmdir /tmp/virtualbox

echo "Remove ISO"
rm /root/*.iso

echo "Check if the Guest Additions are installed and running"
lsmod | grep -i vbox
