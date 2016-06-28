FROM tutum/apache-php
MAINTAINER Agnese Salutari
RUN apt-get update
RUN apt-get -y upgrade

RUN dpkg --add-architecture i386
RUN apt-get install -y gcc-multilib
RUN apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386

