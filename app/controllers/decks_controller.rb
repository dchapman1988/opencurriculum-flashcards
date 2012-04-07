class DecksController < ApplicationController
  def index
    use_case = UseCase::ListDecks.new(deck_class: Persistence::Deck)
    use_case_result = use_case.execute!
    @decks = use_case_result.data[:decks]
  end
end
