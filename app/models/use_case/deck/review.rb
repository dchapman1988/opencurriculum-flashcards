module UseCase
  module Deck
    class Review < ::UseCase::Base
      def initialize(options)
        load_options(:get_use_case, options)
      end

      def execute!
        get_use_case_result = @get_use_case.execute!
        deck = get_use_case_result.data[:deck]
        card = deck.cards.first
        if card
          return UseCase::Result.new(success: true, data: { deck: deck, card: card })
        else
          return UseCase::Result.new(success: false, data: { deck: deck, card: card })
        end
      end
    end
  end
end
