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

  Given 'I am on the card\'s edit page' do
    visit edit_card_path(@card)
  end

  Given 'I am on the review page for that deck' do
    visit review_deck_path(@deck)
  end
end
