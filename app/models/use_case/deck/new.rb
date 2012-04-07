module UseCase
  module Deck
    class New < ::UseCase::Base
      def initialize(options)
        load_options(:params, :deck_class, options)
      end

      def execute!
        deck = @deck_class.new(@params)
        return UseCase::Result.new(success: true, data: { deck: deck })
      end
    end
  end
end
