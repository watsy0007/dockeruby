#
# Ruby Dockerfile
#
# Pull base image.
FROM debian:jessie

#Install Ruby.

RUN \
  apt-get update && \
  apt-get install -y ruby ruby-dev ruby-bundler && \
  rm -rf /var/lib/apt/lists/*

#Define working directory

WORKDIR /data

# Define default command.
CMD ["bash"]
