FROM python:2.7-alpine
MAINTAINER Shawn McElroy <shawn@skift.io>

RUN pip install -U pip
RUN apk update && apk add -u supervisor

# add basic supervisor config
COPY supervisord.conf /etc/supervisord.conf

CMD ["supervisord", "-n"]
