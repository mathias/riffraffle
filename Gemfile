source 'https://rubygems.org'

gem 'rails', '3.2.12'
gem 'pg'

gem 'haml-rails'
gem 'jquery-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'unicorn'
end

group :development do
  gem 'thin'
end

group :development, :test do
  gem 'pry-rails'
end

group :test do
end
