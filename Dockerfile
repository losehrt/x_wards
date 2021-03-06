FROM rubylang/ruby:3.1.0-focal

RUN apt-get update && apt upgrade -y && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    postgresql-client \
    git chromium-bsu \
    libffi-dev \
    imagemagick libmagickcore-dev libmagickwand-dev \
    libvips 
   
  RUN apt-get -y install sqlite3 libsqlite3-dev  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Workdir
RUN mkdir -p /app
ENV PATH=/app/bin:$PATH
ENV RAILS_ENV=production
ENV CHROME_BIN=/usr/bin/chromium
ADD . /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN rm -f tmp/pids/server.pid
RUN gem update && gem install bundler

# build and start
CMD ["bin/prod"]