FROM centos:7
LABEL maintainer="Sida Say <sida.say@khalibre.com>"

# Install necessary packages
RUN yum -y update && yum -y install java-1.8.0-openjdk-devel unzip ghostscript &&
    yum clean all &&
    rm -rf /var/cache &&
    curl -O https://imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-7.0.8-46.x86_64.rpm &&
    curl -O rpm -Uvh https://imagemagick.org/download/linux/CentOS/x86_64/ImageMagick-libs-7.0.8-46.x86_64.rpm &&
    rpm -Uvh ImageMagick-7.0.8-46.x86_64.rpm &&
    rpm -Uvh ImageMagick-libs-7.0.8-46.x86_64.rpm
# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/lib/jvm/java
