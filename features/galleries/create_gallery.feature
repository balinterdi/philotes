Feature: Create gallery
  In order to share pictures with other users
  As a user
  I want to be able to create galleries

  Scenario: Succesful gallery creation
    Given I am logged in as "jonathan"
    When I go to the "my galleries" page
    And I fill in "name" with "Nice pictures from Nepal"
    And I press "Create gallery"
    Then I should see a confirmation message
    And the "Nice pictures from Nepal" gallery should be created
    And the gallery should belong to me