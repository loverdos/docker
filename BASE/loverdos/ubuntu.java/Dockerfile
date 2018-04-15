FROM loverdos/ubuntu.dev:latest
LABEL maintainer Christos KK Loverdos <loverdos@gmail.com>

# Add: java repo
RUN sudo add-apt-repository ppa:webupd8team/java

# Install: jdk & friends
RUN sudo apt-get update \
    && sudo apt-get install -y \
       openjdk-8-jdk openjfx \
       ant ant-optional ant-contrib \
       maven maven-ant-helper maven-debian-helper maven-repo-helper

# # Oracle java
# RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" \
#     | sudo debconf-set-selections
# # RUN echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true" \
# #     | sudo debconf-set-selections
# RUN sudo apt-get install -y oracle-java8-installer