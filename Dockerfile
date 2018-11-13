FROM ubuntu:xenial

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get dist-upgrade -y

RUN apt-get install --no-install-recommends -y -q curl python build-essential git ca-certificates

RUN curl -sL https://deb.nodesource.com/setup_8.x | -E bash -

RUN curl -sL https://install.meteor.com | sh

RUN apt-get install -y nodejs && \
    npm i forever -g && \
    npm i forever-service -g

RUN adduser --disabled-password --gecos '' docker_meteor

USER docker_meteor

RUN export METEOR_ALLOW_SUPERUSER=true
