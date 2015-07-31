Flask on Docker
###############

This docker image is made specifically to be used with ``docker-compose``. So it
doesn't have any final commands. It is only made to be ran via ``docker-compose``.
To accomplish this, the main image has the following packages installed:

Apt:

- nginx
- python3
- python3-pip
- supervisor
- virtualenv

The images also by default uses a python 3 environment (as we all should be now). The virtualenv is created
at ``/env``, is automatically sources on ssh (just in case), and has the following packages installed:

- gunicorn: to serve the python app itself.
- invoke: manages various commands for app setup.

Base Docker Image
=================
This is based on the official jessie tagged debian build on docker hub:

`debian:jessie`_ .

.. _debian:jessie: https://registry.hub.docker.com/_/debian/

Setup
-----

- Install `Docker`_.

  - On linux it is pretty straight forward. Follow the instructions on their site.
  - For Windows(7+), OSX: you must install either boot2docker, or the much nicer `kitematic`_ which makes managing docker much more pleasant.

- Once docker is installed, you can pull this image with ``docker pull skiftcreative/nginx-gunicorn-flask``
- Create a file in your code repository named ``docker-compose.yml``. This file shold likely be in the same location that your ``requirements.txt`` or ``setup.py`` will be. Which should also be directly above the ``app/`` directory. This is because the main directory will be monuted at ``/deploy`` in the container and it expects ``/deploy/app`` to exist and be the main app. An example ``docker-compose.`` file to use can be found `here`_. Make sure to change the environment variables, host_name, or other settings to suit your needs.

.. _docker: https://www.docker.com/
.. _kitematic: https://kitematic.com/
.. _here: https://github.com/SkiftCreative/docker-nginx-gunicorn-flask/blob/master/examples/docker-compose.yml

Usage
-----

more info needed here. message me on github if you want to use it for now. its easy, just need to write this.
