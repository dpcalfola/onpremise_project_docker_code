image: mysql:5.7

### dependency command:

* Volume
```shell
sudo docker volume create mzc-volume-DB-mysql
```

* network:
```shell
sudo docker network create \
--driver bridge \
--subnet=100.2.1.12/30 \
--gateway=100.2.1.13 \
mzc-network-DB-mysql
```

* run:
```shell
sudo docker run \
-d \
--name mzc-DB-mysql \
-p 3306:3306 \
--network mzc-network-DB-mysql \
-v mzc-volume-DB-mysql:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=mzc-password \
-e MYSQL_DATABASE=mzc-database \
mysql:5.7
```

* attach mysql:
```shell
docker exec -it mzc-DB-mysql /bin/bash
mysql -uroot -pmzc-password
```