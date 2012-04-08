class ReviewingADeck < Spinach::FeatureSteps
  include BasicSteps
  include FactorySteps
  include PathSteps

  Then 'I should see a single card' do
    find(:css, '.card')
  end

  And 'I should see an interface to tell the system if I knew the atom or not' do
    find(:css, '.card .answer-ui')
  end
end
