FROM loverdos/ubuntu.base:latest
LABEL maintainer Christos KK Loverdos <loverdos@gmail.com>

# install: dev system packages
RUN sudo apt-get install -y \
    curl wget \
    vim \
    git darcs mercurial \
    openssl \
    build-essential make cmake autoconf libtool m4 zlib1g gcc g++ \
    rlwrap libreadline-dev zlib1g-dev

# install: linuxbrew
ADD dev-install-linuxbrew.sh $PLAIN_USER_HOME
RUN dev-install-linuxbrew.sh

ADD dev-append-config.fish $PLAIN_USER_HOME
ADD dev-append-profile.sh $PLAIN_USER_HOME
RUN chown.sh dev-install-* dev-append-*
RUN install-config.sh dev
