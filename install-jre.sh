apt-get install openjdk-8-jre-headless
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")
