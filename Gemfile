source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'pg'

gem 'active_model_serializers'
gem 'decent_exposure'
gem 'ember-rails'
gem 'haml-rails'
gem 'jquery-rails'
gem 'underscore-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'compass-rails'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'unicorn'
end

group :development do
  gem 'hpricot'
  gem 'thin'
end

group :development, :test do
  gem 'faker'
  gem 'pry-rails'
end

group :test do
end
