#!/bin/bash

# Run as root

cd docker_VM_setting
sudo cp 00-installer-config.yaml /etc/netplan/00-installer-config.yaml
sudo netplan apply
cd ..
