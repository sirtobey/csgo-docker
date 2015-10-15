# Build containers
```
    cd steamcmd
    docker build -t sirtobey/steamcmd .
    cd ../csgo
    docker build -t sirtobey/csgo .
    cd ../csay
    docker build -t sirtobey/csay .
```

# Run

docker run -it -p=27015:27015 -p=27015:27015/udp -p=27020:27020/udp sirtobey/csay /home/steam/csgo/srcds_run -game csgo -console -usercon -scrictportbind -port 27015 +clientport 27005 +tv_port 27020 -tickrate 128 +gametype 0 +game_mode 1 +maxplayers_override 10 +map de_dust2
