# nmrmsys/tick-data - TICK Stack pre-configured Data Volume Container
FROM alpine
MAINTAINER nmrmsys@gmail.com

RUN mkdir -p /etc/telegraf
ADD etc/telegraf/telegraf.conf /etc/telegraf/

RUN mkdir -p /etc/kapacitor
ADD etc/kapacitor/kapacitor.conf /etc/kapacitor/

RUN mkdir -p /var/lib/influxdb
RUN mkdir -p /var/lib/chronograf
RUN mkdir -p /var/lib/kapacitor

CMD /bin/bash
