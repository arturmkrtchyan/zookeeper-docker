FROM ubuntu:trusty

MAINTAINER arturmkrtchyan 

ENV ZOOKEEPER_VERSION="3.4.6"

RUN apt-get update && apt-get install -y unzip openjdk-8-jre wget curl jq

ADD download-zookeeper.sh /tmp/download-zookeeper.sh
RUN /tmp/download-zookeeper.sh
RUN tar xf /tmp/zookeeper-${ZOOKEEPER_VERSION}.tgz -C /opt
