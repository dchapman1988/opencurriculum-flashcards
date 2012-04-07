module UseCase
  class ListDecks
    def initialize(options)
      @deck_class = options.fetch(:deck_class) { raise "Missing required option: deck_class" }
    end

    def execute!
      decks = @deck_class.all
      return UseCase::Result.new(success: true, data: { decks: decks })
    end
  end
end
