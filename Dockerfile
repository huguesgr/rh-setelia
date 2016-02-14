FROM ruby:2.2.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /rh-setelia
WORKDIR /rh-setelia
ADD Gemfile /rh-setelia/Gemfile
ADD Gemfile.lock /rh-setelia/Gemfile.lock
RUN bundle install
ADD . /rh-setelia