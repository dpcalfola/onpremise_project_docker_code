#!/bin/bash

# apt-get update, upgrade
apt-get update -y
apt-get upgrade -y

# install dependency package
apt-get install git -y
apt-get install net-tools -y
apt-get install openssh-server -y
apt-get install neovim -y
apt-get install isc-dhcp-server -y



