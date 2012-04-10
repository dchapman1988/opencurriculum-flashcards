module UseCase
  module Card
    class Get < ::UseCase::Base
      def initialize(options)
        load_options(:id, :card_class, options)
      end

      def execute!
        card = @card_class.find(@id)
        if card
          card = CardDecorator.new(card)
          return UseCase::Result.new(success: true, data: { card: card })
        else
          return UseCase::Result.new(success: false, data: { card: card })
        end
      end
    end
  end
end
