#!/usr/bin/env bash

if type yum >/dev/null 2>&1; then
    rpm -ivh https://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-7.noarch.rpm
    yum install -y puppet
fi
