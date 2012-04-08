FactoryGirl.define do
  factory :deck, class: Persistence::Deck do
    name "Topic"
  end

  factory :card, class: Persistence::Card do
    deck
    name "Atomic Item"
    front_content "Testing?"
    back_content "Yup"
  end
end
