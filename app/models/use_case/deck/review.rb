module UseCase
  module Deck
    class Review < ::UseCase::Base
      def initialize(options)
        load_options(:get_use_case, :answer_class, options)
      end

      def execute!
        get_use_case_result = @get_use_case.execute!
        deck = get_use_case_result.data[:deck]
        # Find card that hasn't been answered in the longest time frame
        # FIXME: Learn to do this in sql, this is totally wrong
        all_cards = deck.cards.all
        sorted_by_recent_answer = all_cards.sort_by do |card|
          first_answer = card.answers.order("created_at DESC").first
          if first_answer
            first_answer.created_at
          else
            Time.parse('2000-01-01')
          end
        end
        card = sorted_by_recent_answer.first
        if card
          answer = @answer_class.new(card: card)
          return UseCase::Result.new(success: true, data: { deck: deck, card: card, answer: answer })
        else
          return UseCase::Result.new(success: false, data: { deck: deck, card: card })
        end
      end
    end
  end
end
