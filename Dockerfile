FROM ruby:2.6.3
RUN apt-get update -yqq && apt-get install -yqq postgresql-client && rm -rf /var/lib/apt/lists
WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .
CMD ["rails", "server", "-b", "0.0.0.0"]
