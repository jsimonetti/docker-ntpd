FROM busybox:musl

EXPOSE 123:123/udp

RUN echo "server pool.ntp.org" > /etc/ntp.conf

CMD /bin/ntpd -n -w -l
