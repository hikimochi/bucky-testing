FROM ruby:2.4.2-alpine
ENV LANG ja_JP.UTF-8
ENV PAGER busybox less

RUN apk update && \
    apk upgrade && \
    apk add --update\
    bash \
    build-base \
    curl-dev \
    git \
    libxml2-dev \
    libxslt-dev \
    linux-headers \
    mysql-dev \
    openssh \
    ruby-dev \
    ruby-json \
    tzdata \
    yaml \
    yaml-dev \
    zlib-dev

RUN gem install bucky-core

COPY . $BC_DIR
WORKDIR /app
RUN chown -R nobody:nobody /app
USER nobody
