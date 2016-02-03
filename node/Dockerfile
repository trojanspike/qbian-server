FROM hypriot/rpi-node:4.2.4

MAINTAINER Lee Mc Kay <v3047-github@yahoo.co.uk>

RUN mkdir -p /srv/QbianServer
WORKDIR "/srv/QbianServer"
ADD . /srv/QbianServer/
RUN apt-get update
RUN apt-get install git i2c-tools -y && npm install forever -g && npm install
RUN /bin/bash -c "cd /root && git clone https://github.com/quick2wire/quick2wire-gpio-admin.git quck2wire && cd quck2wire && make install"
RUN rm -Rf /var/lib/apt/lists/*
EXPOSE 1374
CMD ["npm", "start"]

# Build the images
# $ docker build --rm -t qbian:node --memory-swap=-1 -f Dockerfile .


########## Run Examples :
# $ docker run --rm -ti --device=/dev/i2c-1 -P --privileged qbian:node
# $ docker run --rm -ti --device=/dev/i2c-1 -P --privileged qbian:node /bin/bash
# $ docker run --rm -ti --device=/dev/i2c-1 -P --privileged qbian:node npm start
# $ docker run --rm -ti --device=/dev/i2c-1 --privileged qbian:node npm run pwm
# $ docker run --rm -ti --device=/dev/i2c-1 --privileged qbian:node npm run gpio
# $ docker run --rm -ti --device=/dev/i2c-1 --privileged qbian:node node onoff
# $ docker run --rm -ti --device=/dev/i2c-1 --privileged qbian:node node pi-gpio
# $ docker run --rm -ti --privileged qbian:node gpio readall
### alias readall="docker run --rm -t --privileged qbian:node gpio readall"

# $ docker run --rm -ti --privileged qbian:node gpio i2cdetect
### alias i2cd="docker run --rm -t --privileged qbian:node gpio i2cd"

########## Set an alias
# alias qbian-node="docker run --rm -ti -P --device=/dev/i2c-1 --privileged qbian:node $@"
# $ qbian-node
# $ qbian-node npm run pwm