module UseCase
  module Deck
    class List < ::UseCase::Base
      def initialize(options)
        load_options(:deck_class, options)
      end

      def execute!
        decks = @deck_class.all
        return UseCase::Result.new(success: true, data: { decks: decks })
      end
    end
  end
end
