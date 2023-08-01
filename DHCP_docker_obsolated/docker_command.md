### test ubuntu container


```shell
sudo docker run \
-itd \
--name mzc-ubuntu-test \
-v $(pwd)/dhcp-volume:/home \
# Case: independent network (network and port mapping)
--network=mzc-network-dhcp \
-p 0.0.0.0:67-68:67-68 \
# Case: host network (no network and port mapping)
# --network=host \
ubuntu:jammy-20230624
```


```shell
sudo docker run \
-itd \
--name mzc-ubuntu-test \
-v $(pwd)/dhcp-volume:/home \
--network=mzc-network-dhcp \
-p 0.0.0.0:67-68:67-68 \
ubuntu:jammy-20230624
```

### docker network create
```shell
sudo docker network create \
--driver bridge \
--subnet=100.2.1.8/30 \
--gateway=100.2.1.9 \
mzc-network-dhcp
```

### docker volume create
```shell
sudo docker volume create mzc-volume-dhcp
```




# Docker VM command


### image build
```shell
docker build -t mzc-dhcp-server .
```


### container run
```shell
docker run \
-d \
--name mzc-dhcp-1 \
--network=host \
mzc-dhcp-server
```

