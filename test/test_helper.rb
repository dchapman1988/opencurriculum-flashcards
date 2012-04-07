# Set up simplecov
require 'simplecov'
require 'simplecov-rcov'
ENV["RAILS_ENV"] = "test"
SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
SimpleCov.start 'rails'

require File.expand_path('../../config/environment', __FILE__)

require 'minitest/autorun'
require 'minitest/reporters'

require 'mocha'

require 'ostruct'

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Set up minitest
MiniTest::Unit.runner = MiniTest::SuiteRunner.new
MiniTest::Unit.runner.reporters << MiniTest::Reporters::SpecReporter.new
if ENV['JENKINS']
  MiniTest::Unit.runner.reporters << MiniTest::Reporters::JUnitReporter.new
end
