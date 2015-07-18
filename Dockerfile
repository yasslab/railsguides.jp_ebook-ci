# based on vvakame/review
# https://github.com/vvakame/docker-review

FROM debian:jessie
MAINTAINER yasslab

ENV LANG en_US.UTF-8

# setup
RUN apt-get update
RUN apt-get install -y locales
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen en_US.UTF-8
RUN update-locale en_US.UTF-8

# install Re:VIEW environment
RUN apt-get install -y texlive-lang-cjk texlive-fonts-recommended

# install bundler
RUN gem install bundler --no-rdoc --no-ri

# ruby2.1-dev for redcarpet
RUN apt-get install -y ruby2.1-dev
