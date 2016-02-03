FROM hypriot/rpi-python:2.7

MAINTAINER Lee Mc Kay <v3047-github@yahoo.co.uk>

ADD gpio.py /gpio.py
RUN apt-get update && apt-get install gcc -y
RUN pip install virtualenv rpi.gpio
RUN rm -Rf /var/lib/apt/lists/*

CMD ["python", "/gpio.py"]


# docker build --rm -t qbian:python -f Dockerfile .
# docker run --rm --privileged qbian:python