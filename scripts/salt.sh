#!/usr/bin/env bash

echo "Install EPEL repo"
rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/6/x86_64/epel-release-6-8.noarch.rpm

echo "Install extra packages"
yum install -y dmidecode

echo "Install salt-master and salt-minion"
yum install -y salt-master salt-minion --enablerepo=epel-testing
yum clean all

echo "Disable salt-master service"
chkconfig salt-master off

echo "Disable salt-minion service"
chkconfig salt-minion off
