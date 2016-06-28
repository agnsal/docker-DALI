FROM tutum/apache-php
MAINTAINER Agnese Salutari
RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get install -y lib32c6
RUN apt-get install -y lib32ncurses5
RUN apt-get install -y lib32stdc++6
