#!/usr/bin/env bash

echo "Install salt-master and salt-minion"
yum install -y salt-master salt-minion --enablerepo=epel-testing
yum clean all

echo "Disable salt-master service"
chkconfig salt-master off

echo "Disable salt-minion service"
chkconfig salt-minion off
