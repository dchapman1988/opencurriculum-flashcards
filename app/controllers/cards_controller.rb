class CardsController < ApplicationController
  before_filter :load_card, only: [:show, :edit, :update]
  def new
    use_case = UseCase::Card::New.new(params: {deck_id: params[:deck_id]}.merge(params[:card] || {}), card_class: PersistencePrefix::Card)
    use_case_result = use_case.execute!
    @card = use_case_result.data[:card]
  end

  def edit
  end

  def update
    use_case = UseCase::Card::Update.new(id: @card.id, params: params[:card], card_class: PersistencePrefix::Card)
    use_case_result = use_case.execute!
    if use_case_result.successful?
      flash[:success] = t('cards.update.successful')
      redirect_to card_path(@card)
    else
      flash.now[:success] = t('cards.update.unsuccessful')
      render 'edit'
    end
  end

  def create
    use_case = UseCase::Card::Create.new(params: params[:card], card_class: PersistencePrefix::Card)
    use_case_result = use_case.execute!
    @card = use_case_result.data[:card]
    if use_case_result.successful?
      flash[:success] = t('cards.created_successfully')
      redirect_to card_path(@card)
    else
      render 'new'
    end
  end

  def show
  end

  protected
  def load_card
    use_case = UseCase::Card::Get.new(id: params[:id], card_class: PersistencePrefix::Card)
    use_case_result = use_case.execute!
    @decorated_card = use_case_result.data[:decorated_card]
    @card = use_case_result.data[:card]
  end
end
