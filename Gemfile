# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'sinatra', '~> 2.1'
gem 'activerecord', '~> 6.1', '>= 6.1.3.2'
gem 'sinatra-activerecord', '~> 2.0', '>= 2.0.23'
gem 'sqlite3', '~> 1.4', '>= 1.4.2'
gem 'rake', '~> 13.0', '>= 13.0.3'

group :test do
  gem 'rspec', '~> 3.10'
  gem 'rack-test', '~> 1.1'
  gem 'database_cleaner-active_record', '~> 2.0', '>= 2.0.1'
end
