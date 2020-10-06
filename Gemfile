source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.4'
gem 'rack-cors'
gem 'pry-rails'

gem 'sass-rails'#, '~> 5.0', '>= 3.4.22'
gem 'uglifier'#, '~> 3.0', '>= 3.0.2'
gem 'coffee-rails'#, '~> 4.1', '>= 4.1.0'
gem 'jquery-rails'#, '~> 4.2', '>= 4.2.1'
gem 'jbuilder', '~> 2.0', '>= 2.6.0'

gem 'puma', '~> 3.11'

group :development, :test do
  gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
  gem 'byebug', '~>9.0', '>=9.0.6'
  # gem 'pry-byebug'
  gem 'httparty', '~> 0.14', '>= 0.14.0'
  gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring', '~> 2.0', '>= 2.0.0'
end

gem 'pg', '>= 0.19', '>= 0.19.0'
gem 'mongoid', '6.0.0' #'~> 5.1', '>= 5.1.5'
gem 'mongo' #'~> 5.1', '>= 5.1.5'

# REQUIRED ANGULAR RESOUCES
source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap', '~> 3.3', '>= 3.3.7'
  gem 'rails-assets-angular', '~> 1.5', '>= 1.5.8'
  gem 'rails-assets-angular-ui-router', '~> 0.3', '>= 0.3.1'
  gem 'rails-assets-angular-resource', '~> 1.5', '>= 1.5.8'
end
