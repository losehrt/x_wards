FROM rubylang/ruby:3.1.0-focal

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
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
RUN gem update --system && gem install bundler

# Configure the main process to run when running the image
RUN RAILS_ENV=production bundle exec rails assets:precompile
CMD rails db:prepare && rails db:migrate && rails s -p 3000 -b '0.0.0.0'