FROM alpine:3.3
MAINTAINER Shawn McElroy <shawn@skift.io>

RUN apk add --no-cache supervisor

# add basic supervisor config
COPY supervisord.conf /etc/supervisord.conf

CMD ["supervisord", "-n"]
