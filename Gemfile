source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.1'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#to avoid safe_yaml loading error
gem 'safe_yaml' 
gem 'psych'
gem 'syck'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# using unicorn as required at DigitalOcean
group :production do
  # Use Unicorn as the app server
  gem 'unicorn'
end

# Access an IRB console on exception pages or by using <%= console %> in views
gem 'web-console', '~> 2.0', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # for debugging
  gem 'better_errors'

  gem 'seed_dump'

  # Use Capistrano for deployment
  gem 'capistrano-rails'
end

gem 'bourbon' 
gem 'neat'
gem 'react-rails', github: 'reactjs/react-rails'

gem 'rails_admin', github: 'sferik/rails_admin'
gem 'rails_admin_rollincode', '~> 1.0'
gem 'devise'

gem 'google-analytics-rails'

#To add images do projects
gem "paperclip", "~> 4.3"
