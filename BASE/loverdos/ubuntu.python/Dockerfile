FROM loverdos/ubuntu.dev:latest
LABEL maintainer Christos KK Loverdos <loverdos@gmail.com>

# install: python
RUN sudo apt-get install -y python3-dev python3 python3-setuptools python3-pip

# install: pipsi
RUN pip3 install pipsi

# install: pipenv
RUN cmd.sh pipsi install pipenv

# install: pyenv
ADD python-install-pyenv.sh $PLAIN_USER_HOME
RUN chown.sh python-install-pyenv.sh
RUN python-install-pyenv.sh

# install: shell configuration
ADD python-append-config.fish $PLAIN_USER_HOME
ADD python-append-profile.sh $PLAIN_USER_HOME
RUN chown.sh python-append-*
RUN install-config.sh python