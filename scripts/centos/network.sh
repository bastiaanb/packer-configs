#!/usr/bin/env bash

echo "Remove persistent-net rules"
rm -f /etc/udev/rules.d/70-persistent-net.rules

echo "Update ifcfg-eth0"
sed -i '/HWADDR/d' /etc/sysconfig/network-scripts/ifcfg-eth0
sed -i '/UUID/d' /etc/sysconfig/network-scripts/ifcfg-eth0

history -c
