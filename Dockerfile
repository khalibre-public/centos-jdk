FROM khalibre/centos-base:latest
LABEL maintainer="Sida Say <sida.say@khalibre.com>"

# User root user to install software
USER root

# Install necessary packages
RUN yum -y install java-1.8.0-openjdk-devel && yum clean all

# Switch back to jboss user
USER tomcat

# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/lib/jvm/java
