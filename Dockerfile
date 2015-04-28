FROM ubuntu:trusty

MAINTAINER arturmkrtchyan 

ENV ZOOKEEPER_VERSION="3.4.6"

RUN apt-get update && apt-get install -y unzip openjdk-8-jre wget curl

ADD download-zookeeper.sh /tmp/download-zookeeper.sh
ADD install-zookeeper.sh /tmp/install-zookeeper.sh
RUN /tmp/download-zookeeper.sh
RUN /tmp/install-zookeeper.sh
