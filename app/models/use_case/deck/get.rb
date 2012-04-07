module UseCase
  module Deck
    class Get < ::UseCase::Base
      def initialize(options)
        load_options(:id, :deck_class, options)
      end

      def execute!
        deck = @deck_class.find(@id)
        if deck
          return UseCase::Result.new(success: true, data: { deck: deck })
        else
          return UseCase::Result.new(success: false, data: { deck: deck })
        end
      end
    end
  end
end
