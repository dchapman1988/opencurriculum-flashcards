Feature: Managing Decks
  As a user
  I want to manage multiple decks
  So that I can learn different subjects

  Scenario: Listing decks
    Given I am on the decks page
      And a deck exists
     Then I should see a list of decks
      And I should see that deck in the list
