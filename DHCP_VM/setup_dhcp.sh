#!/bin/bash

# Activate NIC enp0s8
sudo ifconfig enp0s8 120.10.10.27 netmask 255.255.255.0

# Set up enp0s8 ip address
sudo cp 00-installer-config.yaml /etc/netplan/00-installer-config.yaml
sudo netplan apply


# Copy DHCP interface setting file
sudo cp isc-dhcp-server /etc/default/isc-dhcp-server

# Copy DHCP configuration file
sudo cp dhcpd.conf /etc/dhcp/dhcpd.conf

# DHCP start
sudo systemctl start isc-dhcp-server
sudo systemctl restart isc-dhcp-server
sudo systemctl status isc-dhcp-server

