class AnswersController < ApplicationController
  before_filter :load_card

  def create
    correct = params.keys.include?('correct')
    use_case = UseCase::Answer::Create.new(card: @card, answer_class: PersistencePrefix::Answer, correct: correct)
    result = use_case.execute!
    if result.successful?
      if correct
        flash[:success] = t('answers.create.created_successfully_correct')
      else
        flash[:error] = t('answers.create.created_successfully_incorrect')
      end
    else
      flash[:error] = t('answers.create.created_unsuccessfully')
    end
    redirect_to review_deck_path(@card.deck)
  end

  protected
  def load_card
    use_case = UseCase::Card::Get.new(id: params[:card_id], card_class: PersistencePrefix::Card)
    result = use_case.execute!
    @card = result.data[:card]
  end
end
