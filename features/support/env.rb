require 'rubygems'
require 'spork'

Spork.prefork do
  require 'cucumber/rails'
  ActionController::Base.allow_rescue = false
  Capybara.default_selector = :css
  DatabaseCleaner.strategy = :transaction
  Cucumber::Rails::Database.javascript_strategy = :truncation
end

Spork.each_run do
end





