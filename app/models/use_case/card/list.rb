module UseCase
  module Card
    class List < ::UseCase::Base
      def initialize(options)
        load_options(:deck_id, :card_class, options)
      end

      def execute!
        cards = @card_class.all(conditions: { deck_id: @deck_id })
        return UseCase::Result.new(success: true, data: { cards: cards } )
      end
    end
  end
end
