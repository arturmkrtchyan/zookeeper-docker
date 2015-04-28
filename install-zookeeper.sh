tar xf /tmp/zookeeper-${ZOOKEEPER_VERSION}.tar.gz -C /opt
mv /opt/zookeeper-${ZOOKEEPER_VERSION} /opt/zookeeper
cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg
mkdir -p /tmp/zookeeper
