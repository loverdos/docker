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

ADD dev-install-linuxbrew.sh $PLAIN_USER_HOME
ADD dev-install-pyenv.sh $PLAIN_USER_HOME
ADD dev-append-config.fish $PLAIN_USER_HOME
ADD dev-append-profile.sh $PLAIN_USER_HOME
RUN chown.sh dev-install-* dev-append-*
RUN install-config.sh dev

# install: linuxbrew
RUN dev-install-linuxbrew.sh
RUN cmd.sh brew doctor
RUN cmd.sh brew install wtf youtube-dl

# install: pyenv
RUN dev-install-pyenv.sh
