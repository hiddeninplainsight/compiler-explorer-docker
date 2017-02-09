FROM ubuntu:16.04
MAINTAINER Byran Wills-Heath <byran@adgico.co.uk>

RUN apt-get update && \
    apt-get -y install npm git \
    build-essential \
    g++-5-arm-linux-gnueabihf \
    g++-5-mips-linux-gnu \
    clang-3.8

WORKDIR /

RUN git clone https://github.com/mattgodbolt/compiler-explorer.git

WORKDIR /compiler-explorer
