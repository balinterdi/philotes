Feature: Create group
  In order to share ideas or news between like-minded users
  As a user
  I want to create groups

  Scenario: Successful group creation
    Given I am logged in as "jonathan"
    When I go to the "create group" page
    And I fill in "name" with "Soccer fans"
    And I fill in "description" with "For those who like soccer"
    Then I should see a confirmation message
    Then a group should be created with "Soccer fans" as "name"
    Then the new group's admin should be me

  Scenario: Failed group creation
    Given I am logged in as "jonathan"
    When I go to the "create group" page
    And I fill in "name" with "Soccer fans"
    Then I should see an error message
    Then a group should not be created with "Soccer fans" as "name"
