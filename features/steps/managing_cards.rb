class ManagingCards < Spinach::FeatureSteps
  include BasicSteps
  include FactorySteps
  include PathSteps

  Then 'I should see a list of cards' do
    find(:css, 'table.cards')
  end

  And 'I should see that card in the list' do
    find(:css, "table.cards tr td.name").text.must_match /#{@card.name}/
  end

  When 'I click the new card link' do
    find(:css, 'a[rel=new-card]').click
  end

  When 'I give the card a name and content and click save' do
    fill_in 'Name', with: 'Testing'
    fill_in 'Front content', with: 'Testing?'
    fill_in 'Back content', with: 'yup'
    click_button 'Create Card'
  end

  Then 'the card should be created successfully' do
    page.must_have_content I18n.t('cards.created_successfully')
  end

  When 'I give the card a new name' do
    fill_in 'Name', with: 'New Name'
    click_button 'Update Card'
  end

  Then 'the card should be updated successfully' do
    page.must_have_content 'New Name'
  end
end
