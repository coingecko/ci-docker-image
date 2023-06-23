FROM --platform=linux/amd64 ruby:alpine3.17

RUN apk --no-cache add git==2.38.5-r0 openssh==9.1_p1-r3 curl && \
    mkdir -p ~/.ssh
RUN gem install -N aws-sdk-ec2

COPY bin /bin
