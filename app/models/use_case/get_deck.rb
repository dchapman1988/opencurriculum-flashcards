module UseCase
  class GetDeck
    def initialize(options)
      @id = options.fetch(:id) { raise "Missing required option: id" }
      @deck_class = options.fetch(:deck_class) { raise "Missing required option: deck_class" }
    end

    def execute!
      deck = @deck_class.find(@id)
      if deck
        return UseCase::Result.new(success: true, data: { deck: deck })
      else
        return UseCase::Result.new(success: false, data: { deck: deck })
      end
    end
  end
end
