# based on vvakame/review
# https://github.com/vvakame/docker-review

FROM ruby:2.4.1

ENV LANG C.UTF-8

# install Re:VIEW environment
## for pdf
RUN mkdir /texlive
COPY texlive.profile /texlive

RUN cd /texlive && \
    wget http://mirror.unl.edu/ctan/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    tar xvf install-tl-unx.tar.gz && \
    cd install-tl* && \
    ./install-tl --profile /texlive/texlive.profile --repository http://mirror.ctan.org/systems/texlive/tlnet/
RUN /usr/local/texlive/2016/bin/x86_64-linux/tlmgr path add; exit 0

## for epub
RUN apt-get install -y --no-install-recommends zip

# install bundler
RUN gem install bundler --no-rdoc --no-ri

# imagemagick for hamidashi(rmagick)
RUN apt-get install -y imagemagick libmagick++-dev

# git for gems from git repo
RUN apt-get install -y git-core

# epubcheck
RUN apt-get install -y default-jre
