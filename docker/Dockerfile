FROM tinygo/tinygo:0.25.0

WORKDIR /home

ADD templates templates
RUN cp templates/capsule-* /usr/local/bin

RUN mkdir function
WORKDIR /home/function
