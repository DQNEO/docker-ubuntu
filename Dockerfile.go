FROM dqneo/ubuntu-build-essential

MAINTAINER DQNEO

RUN \
    apt-get -y update \
    && apt-get -y install golang-1.17 \
    && apt-get clean

RUN echo 'export PATH="/usr/lib/go-1.17/bin:$PATH"' >> /etc/bash.bashrc
