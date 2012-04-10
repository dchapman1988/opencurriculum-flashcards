FactoryGirl.define do
  factory :deck, class: PersistencePrefix::Deck.to_s do
    name "Topic"
  end

  factory :card, class: PersistencePrefix::Card.to_s do
    deck
    name "Atomic Item"
    front_content "Testing?"
    back_content "Yup"
  end
end
