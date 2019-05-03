# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "devise", "~> 4.2"
gem "graphiql-rails", group: :development
gem "graphql"
gem "pg"
gem "puma", "~> 3.7"
gem "pusher"
gem "rails", "~> 5.1.6", ">= 5.1.6.1"
gem "uglifier", ">= 1.3.0"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use CoffeeScript for .coffee assets and views
gem "coffee-rails", "~> 4.2"
gem "jbuilder", "~> 2.5"
gem "redis"
# gem 'bcrypt', '~> 3.1.7'
gem "figaro"
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :test do
  gem "database_cleaner", "~> 1.5"
  gem "shoulda-matchers", "~> 3.0", require: false
end

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "capybara", "~> 2.13"
  gem "dotenv-rails"
  gem "faker"
  gem "rspec-rails", "~> 3.8"
  gem "selenium-webdriver"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rubocop"
  gem "rubocop-performance"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
