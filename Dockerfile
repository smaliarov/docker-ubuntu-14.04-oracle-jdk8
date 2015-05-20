FROM ubuntu:14.04.2
MAINTAINER Sergii Maliarov <sergi.maliarov@gmail.com>

RUN apt-get update \
# install software-properties-common so that you have add-apt-repository
&& apt-get install -y software-properties-common \
# add repository for Oracle JDK
&& add-apt-repository -y ppa:webupd8team/java \
&& apt-get update \
# auto accept oracle jdk license
&& echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
# install Oracle JDK8
&& apt-get install -y oracle-java8-installer
