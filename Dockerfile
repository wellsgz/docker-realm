FROM alpine:latest

LABEL maintainer="Wells <wellsgz@hotmail.com>"

WORKDIR /root

RUN apk add --no-cache curl \
    && curl -OL https://github.com/zhboner/realm/releases/download/v1.4/realm \
    && chmod +x realm \
    && mv realm /usr/local/bin

COPY entrypoint.sh /usr/local/bin
COPY config.json /root
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
