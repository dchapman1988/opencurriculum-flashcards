Feature: Managing Decks
  As a user
  I want to manage multiple decks
  So that I can learn different subjects

  Scenario: Listing decks
    Given a deck exists
      And I am on the decks page
     Then I should see a list of decks
      And I should see that deck in the list

  Scenario: Creating a new deck
    Given I am on the decks page
     When I click the new deck link
      And I give the deck a name and click save
     Then the deck should be created successfully
