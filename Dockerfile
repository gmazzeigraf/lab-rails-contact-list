FROM ruby:2.6.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /lab-rails-contact-list
WORKDIR /lab-rails-contact-list
COPY Gemfile /lab-rails-contact-list/Gemfile
COPY Gemfile.lock /lab-rails-contact-list/Gemfile.lock
RUN bundle install
COPY . /lab-rails-contact-list
RUN mkdir ~/.ssh