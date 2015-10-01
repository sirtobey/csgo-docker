FROM sirtobey/csgo

MAINTAINER Lukas Grossar <lukas@grossar.net>

ENV REFRESHED_AT 2015-07-19
ENV CSAY_URL http://www.esport-tools.net/download/CSay-CSGO.zip

USER root

RUN apt-get update && apt-get install -y unzip

# run commands as user steam
USER steam

WORKDIR /home/steam/csgo

RUN curl -s -o /tmp/tmp.zip $CSAY_URL && \
    unzip /tmp/tmp.zip -d /home/steam/csgo/csgo && \
    rm /tmp/tmp.zip

COPY cfg/* /home/steam/csgo/csgo/cfg

CMD ["/bin/bash"]
