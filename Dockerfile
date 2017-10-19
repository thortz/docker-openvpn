FROM thortz/docker-xenial

RUN apt-get update \
	&& apt-get install -y openvpn iptables bash easy-rsa \
	&& ln -s /usr/share/easy-rsa/easyrsa /usr/local/bin \
	&& rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

EXPOSE 1194
