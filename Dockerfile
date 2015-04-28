FROM ubuntu:trusty

MAINTAINER arturmkrtchyan 

ENV ZOOKEEPER_VERSION="3.4.6"

RUN apt-get update && apt-get install -y unzip openjdk-8-jre wget curl jq

ADD download-zookeeper.sh /tmp/download-zookeeper.sh
RUN /tmp/download-zookeeper.sh
RUN tar xf /tmp/zookeeper-${ZOOKEEPER_VERSION}.tgz -C /opt
RUN mv /opt/zookeeper-3.4.6 /opt/zookeeper
RUN cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg
RUN mkdir -p /tmp/zookeeper
