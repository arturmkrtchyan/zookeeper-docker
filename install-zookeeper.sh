tar xf /tmp/zookeeper-${ZOOKEEPER_VERSION}.tgz -C /opt
mv /opt/zookeeper-3.4.6 /opt/zookeeper
cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg
mkdir -p /tmp/zookeeper
