FROM centos:7
LABEL maintainer="Sida Say <sida.say@khalibre.com>"

# Install necessary packages
RUN yum install -y epel-release && \
    yum -y update && yum -y install java-1.8.0-openjdk-devel unzip ghostscript ImageMagick clamav && \
    yum clean all && rm -rf /var/cache
# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/lib/jvm/java
