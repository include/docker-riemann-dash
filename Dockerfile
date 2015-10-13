FROM ruby:latest
MAINTAINER include <francisco.cabrita@gmail.com>

ADD https://github.com/jwilder/dockerize/releases/download/v0.0.3/dockerize-linux-amd64-v0.0.3.tar.gz \
    /dockerize-linux-amd64-v0.0.3.tar.gz

RUN tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.0.3.tar.gz && \
    rm  dockerize-linux-amd64-v0.0.3.tar.gz && \
    gem install thin && \
    mkdir -p /app && \
    cd /app && \
    git clone git://github.com/aphyr/riemann-dash.git && \
    cd riemann-dash && bundler

WORKDIR /app/riemann-dash

ADD config.rb /app/riemann-dash/config.rb

EXPOSE 4567

CMD ["bin/riemann-dash", "config.rb"]
