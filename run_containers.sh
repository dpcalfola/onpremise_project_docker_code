#!/bin/bash

# **** Run as root ****



#### FTP ####

# Create ftp network
docker network create \
--driver bridge \
--subnet=100.2.1.4/30 \
--gateway=100.2.1.5 \
mzc-network-ftp-logBackup

# Create ftp volume:
docker volume create mzc-volume-ftp-logBackup

# Build ftp image
docker build -t mzc-ftp-image:v1.0 -f ./FTP_server/Dockerfile .

# Run ftp container
docker run \
-d \
--name mzc-ftp-logBackup-1 \
--network mzc-network-ftp-logBackup \
-v mzc-volume-ftp-logBackup:/home \
-p 21:21 \
-p 20:20 \
mzc-ftp-image:v1.0



#### DB ####

# Create DB network
docker network create \
--driver bridge \
--subnet=100.2.1.12/30 \
--gateway=100.2.1.13 \
mzc-network-DB-mysql


# Create DB volume:
docker volume create mzc-volume-DB-mysql

# Run DB container
docker run \
-d \
--name mzc-DB-mysql \
-p 3306:3306 \
--network mzc-network-DB-mysql \
-v mzc-volume-DB-mysql:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=mzc-password \
-e MYSQL_DATABASE=mzc-database \
mysql:5.7




# Docker ps
docker ps
