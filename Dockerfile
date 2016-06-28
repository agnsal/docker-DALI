FROM tutum/apache-php
MAINTAINER Agnese Salutari
RUN apt-get update
RUN apt-get -y upgrade

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y ia32-libs


