FROM dqneo/ubuntu-build-essential

MAINTAINER DQNEO

RUN \
    apt-get -y install golang-1.11 \
    && apt-get clean

RUN echo 'export PATH="/usr/lib/go-1.11/bin:$PATH"' >> /etc/bash.bashrc
