FROM sirtobey/steamcmd

MAINTAINER Lukas Grossar <lukas@grossar.net>

ENV REFRESHED_AT 2015-07-19

# run commands as user steam
USER steam

WORKDIR /home/steam

# install csgo
RUN mkdir csgo && \
    ./steamcmd.sh \
        +login anonymous \
        +force_install_dir csgo \
        +app_update 740 validate \
        +quit

CMD ["/bin/bash"]
