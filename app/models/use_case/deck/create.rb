module UseCase
  module Deck
    class Create < ::UseCase::Base
      def initialize(options)
        load_options(:params, :deck_class, options)
      end

      def execute!
        deck = @deck_class.new(@params)
        if deck.save
          return UseCase::Result.new(success: true, data: { deck: deck })
        else
          return UseCase::Result.new(success: false, data: { deck: deck })
        end
      end
    end
  end
end
