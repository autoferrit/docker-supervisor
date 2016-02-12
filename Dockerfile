FROM python:3.5
MAINTAINER Shawn McElroy <shawn@skift.io>

RUN apt-get update \
    && apt-get install -y supervisor \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && mkdir -p /deploy/app /deploy/run

# COPY your ./app directory to /deploy/app
# COPY app /deploy/app

# if using gunicorn, copy the conf to /deploy
# ADD examples/gunicorn_config.py /deploy

# copy your config like so
# ADD examples/supervisord.conf /etc/supervisor/conf.d/

# add basic supervisor config
ADD supervisor/supervisord.conf /etc/supervisor/conf.d/

CMD ["supervisord", "-n"]
