* DHCP VM Setting Information

ip address: 120.10.10.27
netmask: 255.255.255.0
gateway: 120.10.10.254






* enp0s8 ip address setting

```shell
sudo ifconfig enp0s8 120.10.10.27 netmask 255.255.255.0
```




* copy netplan config and apply

00-installer-config.yaml
path: /etc/netplan/00-installer-config.yaml
```shell
cp 00-installer-config.yaml /etc/netplan/00-installer-config.yaml
```

```shell
sudo netplan apply
```





* isc-dhcp-server interface setting

copy isc-dhcp-server config file

```shell
cp isc-dhcp-server /etc/default/isc-dhcp-server
```





* DHCP server setting
copy dhcpd.conf file

```shell
cp dhcpd.conf /etc/dhcp/dhcpd.conf
```
