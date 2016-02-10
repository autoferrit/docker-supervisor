FROM python:3.5
MAINTAINER Shawn McElroy <shawn@skift.io>

RUN apt-get update \
    && apt-get install -y supervisor \
    && apt-get autoremove -y \
    && apt-get clean -y

CMD ["supervisord"]
