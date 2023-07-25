### test ubuntu container


```shell
sudo docker run -itd --name mzc-ubuntu-test -v $(pwd)/dhcp-volume:/home ubuntu:jammy-20230624
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

