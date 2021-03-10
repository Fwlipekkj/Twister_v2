source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.2', '>= 6.1.2.1'
gem 'rails-i18n', '~> 6.0'
gem 'puma', '~> 5.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'bcrypt'
gem 'hotwire-rails', '~> 0.1.3'
gem 'pagy', '~> 3.7'
gem 'jbuilder', '~> 2.7'
gem 'redis'
gem 'mini_magick'

gem 'aws-sdk-rails', '~> 3'
gem 'aws-sdk-s3', '~> 1'

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

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
