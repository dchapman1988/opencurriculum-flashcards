Feature: Reviewing a Deck
  As a user
  I want to review a deck
  So that I can learn the information embodied there

  Scenario: Reviewing a deck
    Given a deck exists
      And that deck has a couple of cards in it
     When I am on the review page for that deck
     Then I should see a single card
      And I should see an interface to tell the system if I knew the answer or not
     When I indicate that I knew the answer
     Then the answer should be created successfully
      And I should see a single card
