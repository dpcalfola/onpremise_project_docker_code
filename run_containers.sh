#!/bin/bash

# **** Run as root ****


### Docker network issue
### Virtual-box host-only adaptor dose not support port forwarding
### So, I don't use docker network,
### and 0.0.0.0:port would be used instead of
### All docker network commands are commented



#### FTP ####

### COMMENTED DOCKER NETWORK COMMANDS
# Create ftp network
#docker network create \
#--driver bridge \
#--subnet=100.2.1.4/30 \
#--gateway=100.2.1.5 \
#mzc-network-ftp-logBackup

# Create ftp volume:
docker volume create mzc-volume-ftp-logBackup

# Build ftp image
cd FTP_server
docker build -t mzc-ftp-image --no-cache .
cd ..

## Run ftp container

# Run ftp container (with docker network)
#docker run \
#-d \
#--name mzc-ftp-logBackup-1 \
#--network mzc-network-ftp-logBackup \
#-v mzc-volume-ftp-logBackup:/home \
#-p 21:21 \
#-p 20:20 \
#mzc-ftp-image



# Run ftp container (without docker network)
docker run \
-d \
--name mzc-ftp-logBackup-1 \
-v mzc-volume-ftp-logBackup:/home \
--network=host \
-p 21:21 \
-p 20:20 \
mzc-ftp-image


#### DB ####

### COMMENTED DOCKER NETWORK COMMANDS
# Create DB network
#docker network create \
#--driver bridge \
#--subnet=100.2.1.12/30 \
#--gateway=100.2.1.13 \
#mzc-network-DB-mysql


# Create DB volume:
docker volume create mzc-volume-DB-mysql

## Run DB container (with docker network)
#docker run \
#-d \
#--name mzc-DB-mysql \
#-p 3306:3306 \
#--network mzc-network-DB-mysql \
#-v mzc-volume-DB-mysql:/var/lib/mysql \
#-e MYSQL_ROOT_PASSWORD=mzc-password \
#-e MYSQL_DATABASE=mzc-database \
#mysql:5.7



# Run DB container (without docker network)
docker run \
-d \
--name mzc-DB-mysql \
-p 3306:3306 \
-v mzc-volume-DB-mysql:/var/lib/mysql \
--network=host \
-e MYSQL_ROOT_PASSWORD=mzc-password \
-e MYSQL_DATABASE=mzc-database \
mysql:5.7


# Docker ps
docker ps
