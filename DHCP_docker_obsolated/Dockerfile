FROM ubuntu:jammy-20230624
LABEL maintainer="github.com/dpcalfola"

RUN apt-get update -y && \
    apt-get install isc-dhcp-server -y

COPY dhcp-volume/dhcpd.conf /etc/dhcp/dhcpd.conf

EXPOSE 67/udp
EXPOSE 68/udp

CMD dhcpd -4 -f -d --no-pid -cf /etc/dhcp/dhcpd.conf eth0 \
    tail -f /dev/null