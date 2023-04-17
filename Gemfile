source "https://rubygems.org"

ruby '2.7.4'

# A DSL for creating web applications
gem "sinatra", "~> 2.1"

# An object-relational mapper
gem "activerecord", "~> 6.1"

# Configures common Rake tasks for working with Active Record
gem "sinatra-activerecord"

# Run common tasks from the command line
gem "rake"

gem "rack-contrib", "~> 2.3"
# Run contributed rack middleware and utilities

# Provides functionality to interact with a SQLite3 database
gem "sqlite3", "~> 1.4"


# Require all files in a folder
gem "require_all"

# Run Cross Origin Resource Sharing
gem 'rack-cors'
# These gems will only be used when we are running the application locally
group :development do
  # Used to generate seed data
  gem "faker", "~> 2.18"

  # Auto-reload the server when files are changed
  gem "rerun"

  #Run a pry session
  gem "pry"
end

# These gems will only be used when we are running tests
group :test do
  gem "database_cleaner"
  gem "rspec"
  gem "rack-test", "~> 1.1"
  gem "rspec-json_expectations", "~> 2.2"
end

