FROM ruby:2.5
MAINTAINER sshaaf@redhat.com

RUN gem install mailcatcher

EXPOSE 1025 8080

ENTRYPOINT ["mailcatcher", "-f", "--ip", "0.0.0.0", "--http-port","80"]