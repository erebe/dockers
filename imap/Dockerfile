FROM alpine:latest
MAINTAINER github@erebe.eu

RUN apk update && \
    apk add ca-certificates dovecot && \
    rm -rf /var/cache/apk/* && \
    adduser -D erebe && \
    mkdir /data && \
    chmod 777 -R /data

VOLUME /data
EXPOSE 993

CMD ["dovecot", "-F"]

