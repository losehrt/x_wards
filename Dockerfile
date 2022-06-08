FROM rubylang/ruby:3.1.0-focal

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev && sqlite3 \
    postgresql-client \
    git chromium-bsu \
    libffi-dev \
    imagemagick libmagickcore-dev libmagickwand-dev \
    libvips \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
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
RUN gem update --system && gem install bundler

# build and start
CMD ["bin/prod"]