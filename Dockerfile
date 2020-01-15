FROM circleci/node:8.17.0

RUN curl -sL https://install.meteor.com/?release=1.8.3 | sh

RUN export METEOR_ALLOW_SUPERUSER=true
