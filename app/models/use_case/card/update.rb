module UseCase
  module Card
    class Update < ::UseCase::Base
      def initialize(options)
        load_options(:id, :params, :card_class, options)
      end

      def execute!
        card = @card_class.find(@id)
        if card.update_attributes(@params)
          return UseCase::Result.new(success: true, data: { card: card })
        else
          return UseCase::Result.new(success: false, data: { card: card })
        end
      end
    end
  end
end
