FROM ubuntu:xenial

RUN adduser --disabled-password --gecos '' docker_meteor

USER docker_meteor

RUN sudo apt-get update && \
    sudo apt-get upgrade -y && \
    sudo apt-get dist-upgrade -y

RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -

RUN curl -sL https://install.meteor.com | /bin/sh

RUN sudo apt-get install -y nodejs && \
    sudo npm i forever -g && \
    sudo npm i forever-service -g

RUN export METEOR_ALLOW_SUPERUSER=true
