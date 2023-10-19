FROM --platform=linux/amd64 ruby:alpine3.17

RUN apk --no-cache add git==2.38.5-r0 openssh==9.1_p1-r4 curl=8.4.0-r0 bash sudo && \
    mkdir -p ~/.ssh && \
    echo 'gem: --no-document' >> ~/.gemrc && \
    gem install bundler -v 2.4.11 && \
    gem install -N aws-sdk-ec2 -v 1.386

RUN curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash

COPY bin /bin
