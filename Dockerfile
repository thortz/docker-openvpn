FROM thortz/docker-xenial

RUN apt-get update \
	&& apt-get install -y openvpn iptables bash easy-rsa \
	&& ln -s /usr/share/easy-rsa/easyrsa /usr/local/bin \
	&& rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

RUN sed -i 's/export KEY_SIZE=2048/export KEY_SIZE=4096/g' /usr/share/easy-rsa/vars



RUN sed -i "s/--interact //g" /usr/share/easy-rsa/build-*

EXPOSE 1194
