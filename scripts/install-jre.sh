apt-get install -y software-properties-common
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update 
apt-get install -y openjdk-8-jre-headless
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")
