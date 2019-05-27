FROM centos:7
LABEL maintainer="Sida Say <sida.say@khalibre.com>"

# Install necessary packages
RUN rpm --import http://repos.azulsystems.com/RPM-GPG-KEY-azulsystems && \
    curl -o /etc/yum.repos.d/zulu.repo http://repos.azulsystems.com/rhel/zulu.repo && \
    yum install -y epel-release && \
    yum -y update && yum -y install zulu-8 unzip ghostscript ImageMagick clamav && \
    yum clean all && rm -rf /var/cache
# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/lib/jvm/zulu-8
