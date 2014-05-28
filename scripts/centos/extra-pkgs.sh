#!/usr/bin/env bash

echo "Install EPEL repo"
rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/6/x86_64/epel-release-6-8.noarch.rpm

echo "Install extra packages"
yum install -y dmidecode dkms

