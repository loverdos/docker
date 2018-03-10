FROM loverdos/alpine.base:latest
LABEL maintainer Christos KK Loverdos <loverdos@gmail.com>

# install: dev system packages
RUN sudo apk add \
    curl wget rsync \
    vim \
    git \
    pkgconf \
    grep \
    bash \
    file \
    libc6-compat \
    ruby ruby-irb ruby-json \
    ncurses \
    gcc

# install: linuxbrew
ADD dev-install-linuxbrew.sh $PLAIN_USER_HOME
RUN dev-install-linuxbrew.sh

ADD dev-append-config.fish $PLAIN_USER_HOME
ADD dev-append-profile.sh $PLAIN_USER_HOME
RUN chown.sh dev-install-* dev-append-*
RUN install-config.sh dev

RUN cmd.sh brew doctor
RUN cmd.sh brew install wtf youtube-dl 