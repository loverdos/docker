FROM loverdos/ubuntu.base:latest
LABEL maintainer Christos KK Loverdos <loverdos@gmail.com>

# install: dev system packages
RUN sudo apt-get install -y \
    curl wget \
    vim \
    git darcs mercurial \
    openssl \
    build-essential make cmake autoconf libtool m4 zlib1g gcc g++ llvm \
    rlwrap \
    libreadline-dev zlib1g-dev libbz2-dev libsqlite3-dev libssl-dev \
    libncurses5-dev libncursesw5-dev tk-dev

# install: linuxbrew
ADD dev-install-linuxbrew.sh $PLAIN_USER_HOME
RUN chown.sh dev-install-linuxbrew.sh
RUN dev-install-linuxbrew.sh

# install: fisherman
ADD dev-install-fisherman.sh $PLAIN_USER_HOME
RUN chown.sh dev-install-fisherman.sh
RUN dev-install-fisherman.sh
RUN cmd.sh fisher omf/ssh stark

# (WAT) install: docker
ADD dev-install-docker.sh $PLAIN_USER_HOME
RUN chown.sh dev-install-docker.sh
RUN dev-install-docker.sh

# add: .gitconfig
ADD .gitconfig $PLAIN_USER_HOME
RUN chown.sh .gitconfig

ADD dev-append-config.fish $PLAIN_USER_HOME
ADD dev-append-profile.sh $PLAIN_USER_HOME
RUN chown.sh dev-append-*
RUN install-config.sh dev

# install: nix
RUN curl https://nixos.org/nix/install | sh
