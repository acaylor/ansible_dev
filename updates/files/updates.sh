#!/bin/bash

# You better have ansible installed
echo "you need to have ansible"

#Debian
ansible raspbian -m apt -a "update_cache=yes upgrade=yes" -b -K