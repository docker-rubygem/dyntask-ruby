FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.0

RUN gem install dyntask-ruby --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["dyntask-server"]
CMD ["--help"]
