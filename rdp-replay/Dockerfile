FROM ubuntu:14.04

WORKDIR /

ENV LANG en_US.UTF-8
ENV XTERM_LLOCALE en_US.UTF-8
ENV LC_COLLATE C

RUN apt-get update
RUN apt-get install -y build-essential git-core cmake libssl-dev
RUN apt-get install -y libx11-dev libxext-dev libxinerama-dev libxcursor-dev
RUN apt-get install -y libxdamage-dev libxv-dev libxkbfile-dev libasound2-dev
RUN apt-get install -y libcups2-dev libxml2 libxml2-dev libxrandr-dev
RUN apt-get install -y libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
RUN apt-get install -y libavutil-dev libavcodec-dev libavformat-dev
RUN apt-get install -y libpcap-dev libreadline-dev

RUN git clone https://github.com/ctxis/RDP-Replay.git
RUN cd RDP-Replay && make
