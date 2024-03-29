source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'


gem 'rails', '~> 6.1.2', '>= 6.1.2.1'
gem 'rails-i18n', '~> 6.0'
gem 'puma', '~> 5.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'mini_magick'
gem 'aws-sdk-rails', '~> 3'
gem 'aws-sdk-s3', '~> 1'

gem 'bcrypt'
gem 'hotwire-rails', '~> 0.1.3'
gem 'pagy', '~> 3.7'
gem 'jbuilder', '~> 2.7'
gem 'redis'
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
