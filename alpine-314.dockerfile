FROM registry.gitlab.com/tozd/docker/dinit:alpine-314

EXPOSE 22/tcp

VOLUME /etc/dropbear

ENV DROPBEAR_CONFIG=

RUN apk add --no-cache dropbear

COPY ./etc/service/dropbear /etc/service/dropbear
