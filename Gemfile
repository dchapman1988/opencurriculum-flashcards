source 'https://rubygems.org'

gem 'rails', '3.2.3'

gem 'pg'

group :mongoid do
  gem "mongoid", "~> 2.4", :require => "Mongoid"
  gem "bson_ext", "~> 1.5"
end

gem 'jquery-rails'
gem 'haml'
gem 'formtastic', :git => 'git://github.com/justinfrench/formtastic.git', :branch => '2.1-stable'
gem 'formtastic-bootstrap', :git => 'https://github.com/cgunther/formtastic-bootstrap.git', :branch => 'bootstrap2-rails3-2-formtastic-2-1'
gem 'bluecloth'
gem 'simple-navigation'

gem 'heroku'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platform => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'compass', '0.12.1'
  gem 'compass-rails'
  gem 'bootstrap-sass'
end

group :test do
  gem 'minitest'
  gem 'minitest-reporters'
  gem 'capybara_minitest_spec'
  gem 'simplecov'
  gem 'simplecov-rcov'
  gem 'rcov', '0.9.11'
  gem 'libnotify'
  gem 'yard'
  gem 'yardstick'
  gem 'redcarpet'
  gem 'mocha'
  gem 'database_cleaner'
  gem "factory_girl_rails", "~> 3.0"
  gem 'launchy'
  gem 'guard-minitest', '0.5.0'
  gem 'guard-spinach'
end

group :development, :test do
  gem 'debugger'
  gem 'spinach-rails', '~> 0.1.5'
  gem 'pry'
  gem 'capistrano'
  gem 'sqlite3'
  gem "interactive_editor", "~> 0.0.10"
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
