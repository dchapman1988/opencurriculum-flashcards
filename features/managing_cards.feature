Feature: Managing Cards
  As a user
  I want to manage a deck's cards
  So that I can learn particular atomic details

  Scenario: Listing cards
    Given a card exists
      And I am on the card's deck's page
     Then I should see a list of cards
      And I should see that card in the list

  Scenario: Creating a new card
    Given a deck exists
      And I am on the deck's page
     When I click the new card link
      And I give the card a name and content and click save
     Then the card should be created successfully

  Scenario: Editing a card
    Given a card exists
      And I am on the card's edit page
     When I give the card a new name
     Then the card should be updated successfully
