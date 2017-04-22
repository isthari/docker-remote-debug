FROM ubuntu:xenial

RUN apt-get update
RUN apt-get -y install openjdk-8-jdk maven

CMD cd /root/eddie/trunk/$PROJECT; MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compile=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=7000" mvn spring-boot:run
