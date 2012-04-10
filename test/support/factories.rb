FactoryGirl.define do
  factory :deck, class: PersistencePrefix::Deck do
    name "Topic"
  end

  factory :card, class: PersistencePrefix::Card do
    deck
    name "Atomic Item"
    front_content "Testing?"
    back_content "Yup"
  end
end
