class CardsController < ApplicationController
  def new
    use_case = UseCase::Card::New.new(params: {deck_id: params[:deck_id]}.merge(params[:card] || {}), card_class: Persistence::Card)
    use_case_result = use_case.execute!
    @card = use_case_result.data[:card]
  end

  def create
    use_case = UseCase::Card::Create.new(params: params[:card], card_class: Persistence::Card)
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
    use_case = UseCase::Card::Get.new(id: params[:id], card_class: Persistence::Card)
    use_case_result = use_case.execute!
    @card = use_case_result.data[:card]
  end
end
