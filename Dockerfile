FROM ruby:latest
MAINTAINER include <francisco.cabrita@gmail.com>

RUN gem install thin &&\
    mkdir -p /app && \
    cd /app && \
    git clone git://github.com/aphyr/riemann-dash.git && \
    cd riemann-dash && bundler

WORKDIR /app/riemann-dash

ADD config.rb /app/riemann-dash/config.rb

EXPOSE 4567

CMD ["bin/riemann-dash", "config.rb"]
