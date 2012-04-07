module UseCase
  class CreateDeck
    def initialize(options)
      @params = options.fetch(:params) { raise "Missing required option: params" }
      @deck_class = options.fetch(:deck_class) { raise "Missing required option: deck_class" }
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
