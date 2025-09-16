FROM registry.gitlab.com/tozd/docker/dinit:alpine-38

EXPOSE 22/tcp

VOLUME /etc/dropbear

RUN apk add --no-cache dropbear

COPY ./etc/service/dropbear /etc/service/dropbear
