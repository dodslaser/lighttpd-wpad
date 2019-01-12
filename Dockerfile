FROM alpine:latest
MAINTAINER dodslaser

RUN apk add --update lighttpd bash \
 && rm -rf /var/cache/apk/* && \
 mkdir -p /var/cache/lighttpd/compress/ \
 && chown -R lighttpd /var/cache/lighttpd/compress/

COPY lighttpd.conf /etc/lighttpd/lighttpd.conf

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
