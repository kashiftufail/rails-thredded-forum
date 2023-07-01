FROM ruby:3.1.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /threded_forum
COPY Gemfile /threded_forum/Gemfile
COPY Gemfile.lock /threded_forum/Gemfile.lock
RUN bundle install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
