module PathSteps
  include Spinach::DSL

  Given 'I am on the card\'s deck\'s page' do
    visit deck_path(@card.deck)
  end

  Given 'I am on the decks page' do
    visit decks_path
  end

  Given 'I am on the deck\'s page' do
    visit deck_path(@deck)
  end
end
