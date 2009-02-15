Feature: Delete message
  In order to keep my inbox tidy
  As a user
  I want to be able to delete messages
  
  Scenario: delete message
    Given I am logged in as jonathan
    Given I have a message with "Thanks, dude" as subject
    When I go to the my messages page
    And I check "message"
    And I press "Delete"
    Then I should see a confirmation message
    Then the message with "Thanks, dude" as subject should be deleted