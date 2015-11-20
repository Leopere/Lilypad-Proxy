##########################
## Alpine based OPENSSH ##
##########################
FROM frolvlad/alpine-oraclejdk8
MAINTAINER Chamunks <Chamunks@gmail.com>

RUN mkdir app/ \
    cd app \
    wget -O http://ci.lilypadmc.com/job/Go-Server-Proxy/lastSuccessfulBuild/artifact/target/proxy-linux-amd64 \
    chmod +x proxy-linux-amd64

VOLUME /app/proxy.yml

WORKDIR /app/
ENTRYPOINT  ["/bin/sh"]
CMD  ["/app/proxy-linux-amd64"]