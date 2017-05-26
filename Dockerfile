# based on vvakame/review
# https://github.com/vvakame/docker-review

FROM ruby:2.4.1

ENV LANG C.UTF-8

# install Re:VIEW environment
## for pdf
RUN apt-get install -y texlive-lang-cjk texlive-fonts-recommended

## for epub
RUN apt-get install -y --no-install-recommends zip

# install bundler
RUN gem install bundler --no-rdoc --no-ri

# imagemagick for hamidashi(rmagick)
RUN apt-get install -y imagemagick libmagick++-dev

# git for gems from git repo
RUN apt-get install -y git-core

# epubcheck
RUN apt-get install -y openjdk-7-jre
