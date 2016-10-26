FROM debian:latest 
MAINTAINER Br4zzor <br4zzor@protonmail.com> 

RUN apt-update 
RUN git clone https://github.com/infobyte/evilgrade.git

RUN mkdir /work-session
VOLUME ["/work-session"]
WORKDIR /work-session
RUN cd evilgrade
ENTRYPOINT ["evilgrade"]
