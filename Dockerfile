# nmrmsys/tick-data - TICK Stack pre-configured Data Volume Container
FROM alpine
MAINTAINER nmrmsys@gmail.com

RUN mkdir -p /root/tick-conf
ADD tick-conf /root/tick-conf/

RUN mkdir -p /var/lib/influxdb
RUN mkdir -p /var/lib/chronograf
RUN mkdir -p /var/lib/kapacitor

ADD cmd.sh /root/cmd.sh
CMD /root/cmd.sh
