FROM ubuntu

MAINTAINER DQNEO

RUN \
    apt-get -y update \
    && apt-get -y install build-essential less \
    && apt-get clean
