FROM ubuntu:20.04

MAINTAINER DQNEO

RUN \
    apt-get -y update \
    && apt-get -y install build-essential less gdb strace \
    && apt-get clean
