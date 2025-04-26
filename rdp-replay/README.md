# RDP-Replay

Replay RDP traffic from PCAP

---

[Original repo](https://github.com/ctxis/RDP-Replay/)

### Usage

With x11 forwarding (linux only):

```bash
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
touch $XAUTH
xauth nlist $DISPLAY| sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
docker run -it -e DISPLAY=$DISPLAY -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH -v ./:/data/ rdpreplay /RDP-Replay/rdp_replay -r /data/your_pcap_file.pcap -p /data/your_key.pem --no_cksum --show_keys
```

If you don't need a graphical window, you can still run it wihtout one:

```bash
docker run -v ./:/data rdpreplay /RDP-Replay/rdp_replay -r /data/your_pcap_file.pcap -p /data/your_key.pem --no_cksum --show_keys
```

Special thanks to [SteveWare](https://github.com/ctxis/RDP-Replay/issues/11#issuecomment-340892459)
