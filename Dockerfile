FROM ubuntu:14.04

MAINTAINER Lukas Grossar <lukas@grossar.net>

ENV DEBIAN_FRONTEND noninteractive
ENV STEAMCMD_DEPENDS lib32gcc1 curl
ENV STEAMCMD_URL https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
ENV REFRESHED_AT 2015-07-19

# install dependencies
RUN apt-get update && \
    apt-get install -y $STEAMCMD_DEPENDS

# install steam
RUN mkdir /steam && \
    curl -s $STEAMCMD_URL | tar -vxz -C /steam

WORKDIR /steam

# install csgo
RUN mkdir /csgo && \
    ./steamcmd.sh \
        +login anonymous \
        +force_install_dir /csgo \
        +app_update 740 validate \
        +quit

CMD ["/bin/bash"]
