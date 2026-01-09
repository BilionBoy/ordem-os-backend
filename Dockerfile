# syntax=docker/dockerfile:1
FROM ruby:3.3.5-slim

RUN apt-get update -qq && \
    apt-get install -y \
      build-essential \
      nodejs npm \
      postgresql-client libpq-dev \
      libvips42 && \
    npm install -g yarn && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Gems primeiro (cache)
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Código
COPY . .

RUN yarn install --frozen-lockfile || true

EXPOSE 3000

CMD ["sh", "-c", "rm -f tmp/pids/server.pid && bundle exec rails server -b 0.0.0.0 -p 3000"]
