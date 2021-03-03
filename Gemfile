source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# core
gem 'rails', '~> 6.1.3', '>= 6.1.2.3'
gem 'rails-i18n', '~> 6.0'
gem 'puma', '~> 5.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'redis'
gem 'jbuilder', '~> 2.7'

# assets and js
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem "hotwire-rails", "~> 0.1.3"

# additional skills
gem 'pagy', '~> 3.7'

# speed up rails boot
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
