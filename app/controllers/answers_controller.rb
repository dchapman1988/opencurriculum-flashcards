class AnswersController < ApplicationController
  before_filter :load_card

  def create
    flash[:success] = t('answers.create.created_successfully')
    redirect_to review_deck_path(@card.deck)
  end

  protected
  def load_card
    use_case = UseCase::Card::Get.new(id: params[:card_id], card_class: Persistence::Card)
    result = use_case.execute!
    @card = result.data[:card]
  end
end
