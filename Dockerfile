FROM rust:latest

RUN apt-get update
RUN apt-get install vim -y

RUN mkdir -p /var/src/app
WORKDIR /var/src/app

ENTRYPOINT ["/bin/bash"]
