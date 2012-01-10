source 'http://rubygems.org'

gem 'rails', '3.1.3'

gem 'sqlite3'

gem 'json'

gem 'execjs'
gem 'therubyracer'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'best_in_place'

gem 'daemons'

gem 'pg'

group :development do
	gem 'sqlite3'
	gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
	gem 'thin'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

group :production do	
	gem 'thin'
	gem 'pg', :require => 'pg'
end