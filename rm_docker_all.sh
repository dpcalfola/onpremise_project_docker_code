#!/bin/bash

# Run as root
# Remove all mzc containers and images

# This script does not affect docker containers unrelated to MZC

# Stop containers
sudo docker stop mzc-ftp-logBackup-1
sudo docker stop mzc-DB-mysql
sudo docker stop mzc-django
sudo docker stop mzc_nginx
sudo docker stop mzc_postgres_db

# Remove containers
sudo docker rm mzc-ftp-logBackup-1
sudo docker rm mzc-DB-mysql
sudo docker rm mzc-django
sudo docker rm mzc_nginx
sudo docker rm mzc_postgres_db

# Remove ftp image
sudo docker rmi mzc-ftp-image

# Web_server docker compose down
cd Web_server
sudo docker compose down
cd ..
