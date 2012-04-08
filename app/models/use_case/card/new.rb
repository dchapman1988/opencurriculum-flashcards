module UseCase
  module Card
    class New < ::UseCase::Base
      def initialize(options)
        load_options(:params, :card_class, options)
      end

      def execute!
        card = @card_class.new(@params)
        return UseCase::Result.new(success: true, data: { card: card })
      end
    end
  end
end
