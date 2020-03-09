FROM alpine:latest
MAINTAINER jm23delprado

COPY script.sh /app/
COPY crontab.txt /app/

RUN chmod 755 /app/script.sh
RUN /usr/bin/crontab /app/crontab.txt

CMD ["/usr/sbin/crond","-f","-l","8"]
