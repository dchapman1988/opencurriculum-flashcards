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

  When 'I click the new deck link' do
    find(:css, 'a[rel=new-deck]').click
  end

  When 'I give the deck a name and click save' do
    fill_in 'Name', with: 'Fancy Deck'
    click_button 'Create Deck'
  end

  Then 'the deck should be created successfully' do
    page.must_have_content I18n.t('decks.created_successfully')
  end
end
