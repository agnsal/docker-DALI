FROM tutum/apache-php
MAINTAINER Agnese Salutari
RUN apt-get update
RUN apt-get -y upgrade

ADD /lib/x86_64-linux-gnu/libpthread.so.0
ADD /lib/x86_64-linux-gnu/libc.so.6
ADD /lib64/ld-linux-x86-64.so.2

