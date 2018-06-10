source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.0'

gem 'mysql2', '>= 0.3.18', '< 0.5'

# Application server
gem 'puma', '~> 3.11'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

gem 'bcrypt', '~> 3.1.7'

# ============================
# Database
# ============================
# Seeds
gem 'seed-fu'

# Logical delete
gem 'paranoia'
gem 'paranoia_uniqueness_validator'

# Validation
gem 'validate_url'
gem 'validates_email_format_of'

# ============================
# Frontend
# ============================

gem 'jquery-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# Bootstrap & Bootswatch & font-awesome
gem 'bootstrap-sass'
gem 'font-awesome-rails'

# Form
gem 'simple_form'

# Fast Haml
gem 'faml'

# Meta tag for SEO
gem 'meta-tags'

# Pagenation
gem 'kaminari'

# Breadcrumbs
gem 'gretel'

# Authentication
gem 'sorcery'

# Configuration
gem 'config'

# HTML email support
gem 'premailer-rails'

group :deployment do
  # Deploy
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rails-console'
  gem 'capistrano-rbenv'
  gem 'capistrano3-puma'
end

group :development do
  gem 'listen', '~> 3.1.5'

  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'erb2haml'

  # help to kill N+1
  gem 'bullet'

  # To generate haml view by scaffold or other generate command
  gem 'haml-rails'

  # Syntax Checker
  # hook event pre-commit, pre-push
  gem 'overcommit', require: false

  # A static analysis security vulnerability scanner
  gem 'brakeman', require: false

  # Checks for vulnerable versions of gems
  gem 'bundler-audit', require: false

  gem 'haml-lint', require: false

  # A Ruby static code analyzer
  gem 'rubocop', require: false

  # Live load browser
  gem 'guard-livereload', require: false

  # Email
  gem 'letter_opener_web'
end

group :development, :test do
  # Pry & extensions
  gem 'better_errors'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-stack_explorer'

  # Show SQL result in Pry console
  gem 'awesome_print'
  gem 'hirb'

  # PG/MySQL Log Formatter
  gem 'rails-flog'

  # Table/Schema
  gem 'annotate'

  # Rspec
  gem 'rspec-rails', '~> 3.6'

  # test fixture
  gem 'factory_bot_rails'

  # Handle events on file modifications
  gem 'guard-rspec',      require: false
  gem 'guard-rubocop',    require: false
end

group :test do
  # Mock for HTTP requests
  gem 'webmock'

  # Time Mock
  gem 'timecop'

  # Support to generate Test Data
  gem 'faker'

  # Cleaning test data
  gem 'database_rewinder'

  # This gem brings back assigns to your controller tests
  gem 'rails-controller-testing'
end
