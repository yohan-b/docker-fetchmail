FROM debian:buster
MAINTAINER yohan <783b8c87@scimetis.net>
ENV DEBIAN_FRONTEND noninteractive
RUN echo "deb http://http.debian.net/debian buster-backports main" >> /etc/apt/sources.list
RUN apt-get update && apt-get -y install fetchmail
#COPY fetchmailrc /etc/
ENTRYPOINT ["/usr/bin/fetchmail", "-N", "-f", "/etc/fetchmailrc", "-d", "300"]
