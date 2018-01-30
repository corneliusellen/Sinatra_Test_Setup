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

ENV["RACK_ENV"] = "test"

require 'bundler'
Bundler.require(:default, :test)

require File.expand_path('../../config/environment.rb', __FILE__)

require 'capybara/rspec'
Capybara.app = FilmFileApp
save_and_open_page_path = 'tmp/capybara'

DatabaseCleaner.strategy = :truncation
RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end

  c.include Capybara::DSL
end

4. Run:

rake db:test:prepare

