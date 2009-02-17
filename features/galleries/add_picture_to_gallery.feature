Feature: Add picture to gallery
  In order to share pictures with other users
  As a user
  I want to be able to add pictures to a gallery

  Scenario: Successfully adding a picture to a gallery
    Given I am logged in as "jonathan"
    And I have a "Nice pictures from Nepal" gallery
    Then I should see a confirmation message
    And the picture should be added to the gallery