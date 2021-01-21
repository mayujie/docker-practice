# This is simple dockerfile
FROM ubuntu:latest
MAINTAINER Hadoop Engineering

# Disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y openssh-server\
	apache2

RUN mkdir -p /var/lock/apache2
RUN mkdir -p /var/run/apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_LOG_DIR /var/log/apache2
ENV LANG C

ENV LANG en_US.UTF-8
# Set timezone
ENV TZ Europe/Warsaw


# we can have multiple CMD inside Dockerfile, but only the last one will get executed
# ENTRYPOINT ["echo"]
# CMD ["Hello Apache............"]
CMD ["/usr/sbin/apache2","-D","FOREGROUND"]

EXPOSE 80
