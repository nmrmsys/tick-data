# nmrmsys/tick-data - TICK Stack pre-configured Data Volume Container
FROM busybox
MAINTAINER nmrmsys@gmail.com

RUN mkdir -p /etc/telegraf
ADD etc/telegraf/telegraf.conf /etc/telegraf/

CMD /bin/bash
