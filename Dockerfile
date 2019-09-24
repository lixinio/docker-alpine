FROM alpine:3.9

COPY rootfs/etc/apk/repositories /etc/apk/repositories

RUN set -x \
    && apk add --no-cache tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk del tzdata
