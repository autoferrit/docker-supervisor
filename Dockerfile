FROM python:3.5-alpine
MAINTAINER Shawn McElroy <shawn@skift.io>

ENV SUPERVISOR_VERSION=3.2.1

RUN apk update && apk add -u supervisor

# add basic supervisor config
ADD supervisor/supervisord.conf /etc/supervisor/conf.d/

CMD ["supervisord", "-n"]
