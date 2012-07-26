source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'make_voteable'
gem 'cancan'

group :development, :test do
  gem 'rspec-rails'
  gem 'ruby_gntp'
  gem 'guard-rspec'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'simplecov', :require => false
end

group :development do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end