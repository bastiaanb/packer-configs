#!/usr/bin/env bash

groupadd vagrant
useradd vagrant -g vagrant -G wheel
echo "vagrant" | passwd --stdin vagrant
echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

mkdir /home/vagrant/.ssh
cd /home/vagrant/.ssh
wget --no-check-certificate -O authorized_keys 'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub'
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
