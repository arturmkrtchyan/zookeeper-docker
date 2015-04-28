mirror=$(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\?as_json\=1 | sed -rn 's/.*"preferred":.*"(.*)"/\1/p')
url="${mirror}zookeeper/zookeeper-${ZOOKEEPER_VERSION}/zookeeper-${ZOOKEEPER_VERSION}.tar.gz"
wget -q "${url}" -O "/tmp/zookeeper-${ZOOKEEPER_VERSION}.tar.gz"
