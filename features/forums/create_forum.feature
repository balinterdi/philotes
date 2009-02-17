Feature: Create forum
  In order to discuss interesting things in public
  As a user
  I want to be able to create a forum

  Scenario: Successful forum creation
    Given I am logged in as "jonathan"
    When I go to the "my forums" page
    And I fill in "name" with "Agora"
    And I press "Create forum"
    Then a new forum should be created
    And I should be the owner of the forum