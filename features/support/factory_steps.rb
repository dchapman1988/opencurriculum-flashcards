module FactorySteps
  include Spinach::DSL

  Given 'a deck exists' do
    @deck = FactoryGirl.create(:deck)
  end

  Given 'a card exists' do
    @card = FactoryGirl.create(:card)
  end
end
