#!/bin/bash

# You better have ansible installed
echo "you need to have ansible"

#Debian
ansible debian -m apt -a "update_cache=yes upgrade=yes" -u root -b -k

#Centos
ansible centos -m yum -a "name=* state=latest" -u root -b -k

#reboot
ansible all -a "reboot" -u root -b -k