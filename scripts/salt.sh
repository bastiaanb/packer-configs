#!/usr/bin/env bash

yum install kernel-devel gcc

wget -O install_salt.sh http://bootstrap.saltstack.org
sh install_salt.sh -X -M git v2014.1.0
rm -f bootstrap-salt.log
rm -rf /tmp/git
yum clean all
