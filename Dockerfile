FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -qq -y wget

RUN wget -nv http://snapshot.debian.org/archive/debian/20110406T213352Z/pool/main/o/openssl098/libssl0.9.8_0.9.8o-7_amd64.deb && \
  dpkg -i libssl0.9.8_0.9.8o-7_amd64.deb && \
  rm libssl0.9.8_0.9.8o-7_amd64.deb

RUN apt-get install -y software-properties-common