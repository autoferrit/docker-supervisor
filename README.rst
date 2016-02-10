Python Supervisor
#################

This image is simple, it simply installs supervisor on top of its base image,
which is `python <https://hub.docker.com/_/python/>`_

which itself is based on
`buildpack-deps:jessie <https://hub.docker.com/_/buildpack-deps/>`_

``supervisor`` is installed through ``apt`` so it is a stable version.


Setup
-----

In the ``examples/`` directory there is a ``supervisord.conf`` which you should
copy to your own app, then COPY into the image with

``COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf``

The supervisor image will already run the supervisor application with its ``CMD``
docker command. If you need to use gunicorn, configure your ``supervisor.conf``
to simple run gunicorn for your app.

Thats it. The image is fairly simple so you shouldnt have any issues that are
directly caused by this image alone. But if you have an issue refer to the github
repo for issues.

`github.com/SkiftCreative/docker-supervisor <https://github.com/SkiftCreative/docker-supervisor>`_
