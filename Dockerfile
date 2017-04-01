FROM debian

RUN apt-get update && \
    apt-get install rsyslog --no-install-recommends -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY rsyslog.conf /etc/
VOLUME /var/run/rsyslog/dev

CMD ["rsyslogd", "-n"]
