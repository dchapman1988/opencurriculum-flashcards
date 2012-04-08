# Load use case files
require "#{File.dirname(__FILE__)}/use_case/base.rb"
Dir["#{File.dirname(__FILE__)}/use_case/**/*.rb"].each { |f| require f }
