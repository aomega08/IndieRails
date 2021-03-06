source 'https://rubygems.org'
ruby '2.5.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'

# Use sqlite3 as the database for Active Record
gem 'pg', '0.21'

gem 'puma', '~> 3.11'

gem 'sass-rails', '~> 5.0'
gem 'uglifier'
gem 'slim-rails'
gem 'mini_racer'
gem 'config'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

gem 'redcarpet'
gem 'friendly_id'
gem 'delayed_job_active_record'
gem 'daemons'
gem 'meta-tags'
gem 'rouge'
gem 'paperclip'
gem 'paperclip-optimizer'
gem 'aws-sdk'
gem 'aws-sdk-s3'
gem 'whenever', require: false

gem 'webpacker', '~> 2.0'

gem 'jquery-rails'
gem 'sprockets'
gem 'sprockets-es6'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug'

  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'web-console'
  gem 'listen', '< 3.2'

  gem 'spring'

  gem 'rubocop', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'timecop'
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
  gem 'vcr'
  gem 'webmock'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
