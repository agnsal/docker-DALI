FROM tutum/apache-php
MAINTAINER Agnese Salutari
RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get install -y libc6-i386
RUN apt-get install -y lib32ncurses5
RUN apt-get install -y lib32stdc++6

# SICStus needed

RUN apt-get -y install wget git
RUN git clone git://github.com/agnsal/ServerDALI
RUN cd ServerDALI
RUN git clone git://github.com/AAAI-DISIM-UnivAQ/DALI
RUN cd DALI
RUN git clone git://github.com/agnsal/mas

EXPOSE 80/tcp
EXPOSE 3306/tcp
