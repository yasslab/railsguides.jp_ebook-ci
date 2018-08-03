FROM ruby:2.5.1-slim

ENV LANG en_US.UTF-8
ENV GUIDES_LANGUAGE ja

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      locales \
      git-core \
      curl \
      gcc \
      make \
      zip \
      # hamidashi
      imagemagick \
      libmagickwand-dev \
      ghostscript \
      # tex
      texlive-lang-cjk \
      latex-cjk-all \
      texlive-lang-japanese \
      texlive-latex-extra \
      texlive-fonts-recommended \
      # epubcheck
      openjdk-8-jre-headless \
      # railsguides.jp
      g++ \
      default-libmysqlclient-dev \
      libpq-dev \
      libsqlite3-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN sed -ie 's/name="disk" value="1GiB"/name="disk" value="10GiB"/g' /etc/ImageMagick-6/policy.xml
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen en_US.UTF-8 && update-locale en_US.UTF-8
