Feature: Reviewing a Deck
  As a user
  I want to review a deck
  So that I can learn the information embodied there

  Background:
    Given a deck exists
      And that deck has a couple of cards in it

  Scenario: Reviewing a deck
     When I am on the review page for that deck
     Then I should see a single card
      And I should see an interface to tell the system if I knew the answer or not

  Scenario: Getting the answer right
     When I am on the review page for that deck
      And I indicate that I knew the answer
     Then the answer should be created successfully and recorded as correct
      And I should see a single card

  Scenario: Getting the answer wrong
     When I am on the review page for that deck
      And I indicate that I did not know the answer
     Then the answer should be created successfully and recorded as incorrect
      And I should see a single card
