FROM ruby:3.0.3
WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

COPY . .

EXPOSE 3000
CMD ["bundle", "exec", "puma", "-s", "-p", "3000"]