# Python Supervisor

This image is simple, it simply installs supervisor on top of its base image,
which is [python:3.5-alpine](https://hub.docker.com/_/python/)

which itself is based on
[alpine:3.3](https://hub.docker.com/_/alpine/)

``supervisor`` is installed through the alpine ``apk`` so it is a stable version.


## Setup

Ideally, you will just fork this repo and update the base image to point to the
version of python you would like to use. Currently my own apps require at least
python 3.5, So as newer versions are released, I will properly tag them.

In the ``examples/`` directory there is a ``supervisord.conf`` which you should
copy to your own app, then COPY into the image with

``COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf``

The supervisor image will already run the supervisor application with its ``CMD``
docker command. If you need to use gunicorn, configure your ``supervisor.conf``
to simple run gunicorn for your app.

Thats it. The image is fairly simple so you shouldnt have any issues that are
directly caused by this image alone. But if you have an issue refer to the github
repo for issues.

[github.com/SkiftCreative/docker-supervisor](https://github.com/SkiftCreative/docker-supervisor)
