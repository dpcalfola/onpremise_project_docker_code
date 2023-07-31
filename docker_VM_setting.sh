#!/bin/bash

# Set up enp0s8 ip address
cd docker_VM_setting
sudo cp 00-installer-config.yaml /etc/netplan/00-installer-config.yaml
sudo netplan apply
cd ..
