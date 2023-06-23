FROM --platform=linux/amd64 ruby:2.7.5-alpine

RUN apk --no-cache add git==2.34.8-r0 openssh==8.8_p1-r1 curl && \
    mkdir -p ~/.ssh

COPY bin /bin
