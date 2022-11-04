FROM gitpod/openvscode-server:latest

ARG USERNAME=openvscode-server
ARG CUSTOM_HOMEDIR=/home/rkaramc

RUN sudo mkdir -p $CUSTOM_HOMEDIR && \
    sudo chown -R $USERNAME:$USERNAME $CUSTOM_HOMEDIR

WORKDIR $CUSTOM_HOMEDIR

ENV HOME=$CUSTOM_HOMEDIR
