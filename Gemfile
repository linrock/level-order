source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.2'
# gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker', '>= 4.0.x'
# gem 'mini_racer', platforms: :ruby

gem 'haml'
gem 'rouge'      # code highlighter
gem 'redcarpet'  # markdown

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'pry'
  gem 'rspec-rails', '~> 3.8'
  gem 'gmp', require: false # high-precision floating-point arithmetic
end

group :development do
  gem 'web-console', '>= 3.3.0'
end
