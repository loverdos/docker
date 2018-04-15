FROM loverdos/ubuntu.java:latest
LABEL maintainer christos KK Loverdos <loverdos@gmail.com>

# add repo: sbt
RUN echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list \
  && sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823

# install: sbt
RUN sudo apt-get update \
    && sudo apt-get -y install sbt

# force update: sbt
RUN cmd.sh sbt exit

# install: sbt-exrta
RUN cmd.sh brew install --HEAD paulp/extras/sbtx

# install: scala
RUN cmd.sh brew install scala

# install: coursier
RUN cmd.sh brew install --HEAD coursier/formulas/coursier

# install: dotty
RUN cmd.sh brew install lampepfl/brew/dotty

# install: bloop
RUN cmd.sh "python (curl -L https://github.com/scalacenter/bloop/releases/download/v1.0.0-M8/install.py | psub)"