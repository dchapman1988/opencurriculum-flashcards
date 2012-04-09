class DecksController < ApplicationController
  def index
    use_case = UseCase::Deck::List.new(deck_class: Persistence::Deck)
    use_case_result = use_case.execute!
    @decks = use_case_result.data[:decks]
  end

  def new
    use_case = UseCase::Deck::New.new(params: params[:deck], deck_class: Persistence::Deck)
    use_case_result = use_case.execute!
    @deck = use_case_result.data[:deck]
  end

  def create
    use_case = UseCase::Deck::Create.new(params: params[:deck], deck_class: Persistence::Deck)
    use_case_result = use_case.execute!
    @deck = use_case_result.data[:deck]
    if use_case_result.successful?
      flash[:success] = t('decks.created_successfully')
      redirect_to deck_path(@deck)
    else
      render 'new'
    end
  end

  def show
    use_case = UseCase::Deck::Get.new(id: params[:id], deck_class: Persistence::Deck)
    use_case_result = use_case.execute!
    @deck = use_case_result.data[:deck]
    deck_use_case = UseCase::Card::List.new(deck_id: @deck.id, card_class: Persistence::Card)
    deck_use_case_result = deck_use_case.execute!
    @cards = deck_use_case_result.data[:cards]
  end

  def review
    get_use_case = UseCase::Deck::Get.new(id: params[:id], deck_class: Persistence::Deck)
    use_case = UseCase::Deck::Review.new(get_use_case: get_use_case, answer_class: Persistence::Answer, card_class: Persistence::Card)
    use_case_result = use_case.execute!
    @deck = use_case_result.data[:deck]
    @card = use_case_result.data[:card]
    @answer = use_case_result.data[:answer]
  end
end
