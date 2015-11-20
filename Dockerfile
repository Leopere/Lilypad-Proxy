##########################
## Alpine based OPENSSH ##
##########################
FROM frolvlad/alpine-oraclejdk8
MAINTAINER Chamunks <Chamunks@gmail.com>

RUN mkdir -p /app
ADD http://ci.lilypadmc.com/job/Go-Server-Proxy/85/artifact/target/proxy-linux-amd64 /app/proxy-linux-amd64
RUN chmod +x /app/proxy-linux-amd64

VOLUME /app/proxy.yml

EXPOSE 25565
WORKDIR /app/
ENTRYPOINT  ["/bin/sh"]
CMD  ["/app/proxy-linux-amd64"]
