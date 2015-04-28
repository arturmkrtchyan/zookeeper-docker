FROM ubuntu:trusty

MAINTAINER arturmkrtchyan 

ENV ZOOKEEPER_VERSION="3.4.6"

RUN apt-get update && apt-get install -y unzip wget curl

ADD download-zookeeper.sh /tmp/download-zookeeper.sh
ADD install-zookeeper.sh /tmp/install-zookeeper.sh
ADD install-jre.sh /tmp/install-jre.sh

RUN /tmp/download-zookeeper.sh
RUN /tmp/install-zookeeper.sh
RUN /tmp/install-jre.sh

EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper

VOLUME ["/opt/zookeeper/conf", "/tmp/zookeeper"]

ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh"]
CMD ["start-foreground"]
