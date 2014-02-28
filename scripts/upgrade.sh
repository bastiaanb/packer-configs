#!/usr/bin/env bash

echo "Upgrade packages"
yum upgrade -y
yum clean all
