module UseCase
  module Card
    class Create < ::UseCase::Base
      def initialize(options)
        load_options(:params, :card_class, options)
      end

      def execute!
        card = @card_class.new(@params)
        if card.save
          return UseCase::Result.new(success: true, data: { card: card })
        else
          return UseCase::Result.new(success: false, data: { card: card })
        end
      end
    end
  end
end
