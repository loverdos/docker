FROM alpine:3.7
LABEL maintainer Christos KK Loverdos <loverdos@gmail.com>

# An initial, updated image, ready to be used for 
# experimentation and installing software.

ARG PLAIN_USER
ENV PLAIN_USER ${PLAIN_USER:-plainuser}
ENV PLAIN_USER_HOME /home/$PLAIN_USER

# Absolutely minimum setup for further installations
RUN apk update && apk upgrade && apk add fish sudo shadow mdocml-apropos

ARG PLAIN_USER_SHELL
ENV PLAIN_USER_SHELL ${PLAIN_USER_SHELL:-/usr/bin/fish}

ARG ROOT_SHELL
ENV ROOT_SHELL ${ROOT_SHELL:-/usr/bin/fish}

# set login shell (root): fish
RUN chsh -s $ROOT_SHELL && mkdir -p ~root/.config/fish

# Add user: plainuser
RUN adduser -D -g '' -s $PLAIN_USER_SHELL -u 1000 $PLAIN_USER $PLAIN_USER \
    && echo '%'$PLAIN_USER' ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/default

# add some usefull scripts
ADD install-config.sh /root/

# everything from now on is from $PLAIN_USER
USER $PLAIN_USER
WORKDIR $PLAIN_USER_HOME
ENV USER $PLAIN_USER
ENV HOME $PLAIN_USER_HOME
ENV SHELL $PLAIN_USER_SHELL

# Update PATH
ENV PATH $PLAIN_USER_HOME:$PATH

# add configurations
ADD chown.sh $PLAIN_USER_HOME
ADD cmd.sh $PLAIN_USER_HOME
ADD install-config.sh $PLAIN_USER_HOME
ADD base-append-config.fish $PLAIN_USER_HOME

# prepare to run extra configuration steps
RUN chown.sh *.sh *.fish

# run extra configuration steps
RUN mkdir -p bin .local/bin .config/fish
RUN install-config.sh base

# We cannot use $PLAIN_USER_SHELL here
CMD [ "/usr/bin/fish", "-i", "-l" ]