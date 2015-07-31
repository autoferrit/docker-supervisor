FROM ubuntu:vivid
MAINTAINER Shawn McElroy <shawn@skift.io>

RUN mkdir /edploy /env

COPY . /deploy
WORKDIR /deploy

RUN apt-get update \
    && apt-get install -y \
        python3 \
        python3-pip \
        supervisor \
        virtualenv \
    && virtualenv -p python3 /env \
    && mkdir -p /var/log/supervisor \
    && /env/bin/pip install -r /deploy/requirements.txt

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
