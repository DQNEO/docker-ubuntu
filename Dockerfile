# https://hub.docker.com/_/ubuntu
FROM ubuntu:21.10

MAINTAINER DQNEO

ENV DEBIAN_FRONTEND=noninteractive
RUN \
    apt-get -y update \
    && apt-get -y install tzdata \
    && apt-get -y install build-essential \
    && apt-get -y install less gdb strace \
    && apt-get -y install file xxd \
    && apt-get clean
