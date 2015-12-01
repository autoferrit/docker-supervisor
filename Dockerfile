FROM ubuntu:vivid
MAINTAINER Shawn McElroy <shawn@skift.io>

RUN mkdir /deploy /env

COPY . /deploy
WORKDIR /deploy

RUN apt-get update \
    && apt-get install -y software-properties-common -y \
    && apt-add-repository ppa:fkrull/deadsnakes -y \
    && apt-get update \
    && apt-get install -y \
        python3.5 \
        python3.5-dev \
        python3-pip \
        supervisor \
        virtualenv \
    && virtualenv -p python3.5 /env \
    && mkdir -p /var/log/supervisor \
    && /env/bin/pip install -r /deploy/requirements.txt
