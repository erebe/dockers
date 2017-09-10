FROM alpine:latest
MAINTAINER github@erebe.eu

RUN apk update && \
    apk upgrade && \
    apk add curl inotify-tools spamassassin spamassassin-client && \
    adduser -D erebe && \
    mkdir /data && \
    chmod 777 -R /data

VOLUME /data

COPY entrypoint.sh .
CMD ./entrypoint.sh

