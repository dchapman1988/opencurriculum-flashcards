class DecksController < ApplicationController
  def index
    use_case = UseCase::ListDecks.new(deck_class: Persistence::Deck)
    use_case_result = use_case.execute!
    @decks = use_case_result.data[:decks]
  end

  def new
    use_case = UseCase::NewDeck.new(params: params[:deck], deck_class: Persistence::Deck)
    use_case_result = use_case.execute!
    @deck = use_case_result.data[:deck]
  end

  def create
    use_case = UseCase::CreateDeck.new(params: params[:deck], deck_class: Persistence::Deck)
    use_case_result = use_case.execute!
    @deck = use_case_result.data[:deck]
    if use_case_result.successful?
      flash[:notice] = t('decks.created_successfully')
      redirect_to deck_path(@deck)
    else
      render 'new'
    end
  end

  def show
    use_case = UseCase::GetDeck.new(id: params[:id], deck_class: Persistence::Deck)
    use_case_result = use_case.execute!
    @deck = use_case_result.data[:deck]
  end
end
