require 'rubygems'
require 'spork'
#uncomment the following line to use spork with the debugger
#
require 'spork/ext/ruby-debug'

Spork.prefork do

ENV["RAILS_ENV"] ||= 'production'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'capybara/rspec'
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
config.mock_with :rspec
config.use_transactional_fixtures = true 
#config.include(MailerMacros)
#config.before(:each) {reset_email}

end  

end
Spork.each_run do
  # This code will be run each time you run your specs.
 #FactoryGirl.reload
end
#//////////////////////


