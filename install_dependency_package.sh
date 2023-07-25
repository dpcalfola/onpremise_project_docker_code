#!/bin/bash

# apt-get update, upgrade
apt-get update -y
apt-get upgrade -y

# install dependency package
apt-get install git -y
apt-get install net-tools -y
apt-get install openssh-server -y




#### install docker engine

# remove old version
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done

# install ca-certificates
sudo apt-get update -y
sudo apt-get install ca-certificates curl gnupg -y

# add docker's official GPG key
sudo install -m 0755 -d /etc/apt/keyrings -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg -y
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# set up the stable repository
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install docker engine
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# checkup docker version
docker version
