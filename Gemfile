source 'https://rubygems.org'

gem 'rails', '4.1.5'
gem 'sass-rails', '~> 4.0.3'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'haml', '~> 4.0.5'
gem 'bourbon'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'dotenv-rails'
gem 'activeresource', '~> 4.0.0'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'sidekiq'
gem 'capistrano'
gem 'capistrano-bundler', '~> 1.1.2'
gem 'countries'

gem 'factory_girl_rails'

gem 'letter_opener', group: :development

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0'
  # gem 'jasmine'
  # gem 'jasmine-rails'
  # gem 'factory_girl_rails'
  # gem 'faker'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'spring-commands-rspec'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'webmock'
  gem 'sinatra'
  # gem 'launchy'
  # gem 'selenium-webdriver'
  # gem 'database_cleaner'
  # gem 'rack_session_access'

  # only install fsevent on MacOSX
  gem 'rb-fsevent' #if `uname` =~ /Darwin/

  # Pretty printed test output
  gem 'turn', require: false
end
