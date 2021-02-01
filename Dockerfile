FROM circleci/node:12.20.1

# meteor installer doesn't work with the default tar binary
RUN sudo apt-get install -y bsdtar \
  && sudo cp $(which tar) $(which tar)~ \
  && sudo ln -sf $(which bsdtar) $(which tar)

RUN curl -sL https://install.meteor.com/?release=2.0 | sh

# put back the original tar
RUN sudo mv $(which tar)~ $(which tar)

RUN export METEOR_ALLOW_SUPERUSER=true
