class ManagingDecks < Spinach::FeatureSteps
  include BasicSteps
  Given 'I am on the decks page' do
    visit decks_path
  end

  Given 'a deck exists' do
    @deck = Factory(:deck)
  end

  Then 'I should see a list of decks' do
    find(:css, 'table.decks')
  end

  And 'I should see that deck in the list' do
    find(:css, "table.decks tr td.name").text.must_match /#{@deck.name}/
  end
end
