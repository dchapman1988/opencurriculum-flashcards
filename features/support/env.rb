require_relative '../../test/rails_helper'
require 'spinach-rails'

=begin
  Spinach.hooks.before_scenario do |scenario_data|
    DatabaseCleaner.start
  end
  Spinach.hooks.after_scenario do |scenario_data|
    DatabaseCleaner.clean
  end
=end
