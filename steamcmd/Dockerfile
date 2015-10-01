FROM ubuntu:14.04

MAINTAINER Lukas Grossar <lukas@grossar.net>

ENV DEBIAN_FRONTEND noninteractive
ENV STEAMCMD_DEPENDS lib32gcc1 curl
ENV STEAMCMD_URL https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
ENV REFRESHED_AT 2015-07-19

# install dependencies
RUN apt-get update && \
    apt-get install -y $STEAMCMD_DEPENDS

# add steam user
RUN adduser --disabled-password \
    --gecos 'Steam User' steam

# install steam
RUN curl -s $STEAMCMD_URL | tar -vxz -C /home/steam

WORKDIR /home/steam

CMD ["/bin/bash"]
