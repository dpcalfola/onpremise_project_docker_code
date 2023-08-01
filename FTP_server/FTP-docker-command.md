image: docker pull ubuntu:jammy-20230624

### dependency command:
* network:
```shell
sudo docker network create \
--driver bridge \
--subnet=100.2.1.4/30 \
--gateway=100.2.1.5 \
mzc-network-ftp-logBackup
```
* volume:
```shell
sudo docker volume create mzc-volume-ftp-logBackup
```




### Dockerfile build
```shell
sudo docker build -t dpcalfola/mzc-ftp .
```

### Dockerfile build (no cache)
```shell
sudo docker build -t dpcalfola/mzc-ftp --no-cache .
```



### docker run with dockerfile images (with docker network)
```shell
sudo docker run \
-d \
--name mzc-ftp-logBackup-1 \
--network mzc-network-ftp-logBackup \
-v mzc-volume-ftp-logBackup:/home \
-p 21:21 \
-p 20:20 \
dpcalfola/mzc-ftp
```


### docker run with dockerfile images (without docker network)
```shell
sudo docker run \
-d \
--name mzc-ftp-logBackup-1 \
--network=host \
-v mzc-volume-ftp-logBackup:/home \
-p 21:21 \
-p 20:20 \
dpcalfola/mzc-ftp
```



### container information:
ip address: 100.2.1.6
gateway: 100.2.1.5
volume: mzc-volume-ftp-logBackup
network: mzc-network-ftp-logBackup



