class ReviewingADeck < Spinach::FeatureSteps
  include BasicSteps
  include FactorySteps
  include PathSteps

  Given 'that deck has a couple of cards in it' do
    @card1 = FactoryGirl.create(:card, deck: @deck)
    @card2 = FactoryGirl.create(:card, deck: @deck)
  end

  Then 'I should see a single card' do
    find(:css, '.card')
  end

  And 'I should see an interface to tell the system if I knew the answer or not' do
    find(:css, '.card .answer-ui')
  end

  When 'I indicate that I knew the answer' do
    click_button I18n.t('decks.review.correct')
  end

  Then 'the answer should be created successfully' do
    page.must_have_content I18n.t('answers.create.created_successfully')
  end
end
