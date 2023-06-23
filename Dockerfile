FROM ruby:alpine3.17

RUN apk --no-cache add git==2.38.5-r0 openssh==9.1_p1-r3 curl=8.1.2-r0 && \
    mkdir -p ~/.ssh && \
    gem install -N aws-sdk-ec2 -v 1.386

COPY bin /bin
