FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y build-essential git-core cmake
RUN apt-get install -y libssl-dev libpcap-dev libsqlite3-dev

RUN git clone https://github.com/devttys0/littleblackbox
RUN mkdir -p /usr/local/share/man/man1/
RUN cd littleblackbox/src && ./configure && make && make install
