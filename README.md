# Sinatra_Test_Setup

1. Add to Gemfile:
* gem 'rspec'
* gem 'database_cleaner'
* gem 'capybara'
* gem 'launchy'

can also group under:

group :development, :test do
end

2. Create and add to .rspec file:
--require spec_helper
--color
--format=documentation
--order=random

3. Create and add to spec_helper.rb file:
