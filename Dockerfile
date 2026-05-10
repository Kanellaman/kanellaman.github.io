FROM ruby:3.1.3

WORKDIR /srv/jekyll

# Copy dependency manifests first so Docker caches the bundle layer.
# The layer is only invalidated when Gemfile or Gemfile.lock change.
COPY Gemfile Gemfile.lock ./

RUN gem install bundler:2.4.0 \
    && bundle install

EXPOSE 4000 35729
