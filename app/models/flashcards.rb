require 'sprockets'

# Load flashcards files
Dir["#{File.dirname(__FILE__)}/flashcards/**/*.rb"].each { |f| require f }

module Flashcards
  def self.version
    "0.2.0"
  end
end
