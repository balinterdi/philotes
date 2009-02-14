Feature: write message
  In order to communicate with other users
  As a user
  I want to be able to write to them
  
  Scenario: new message
    Given I am logged in as jonathan
    When I go to my messages page
    And I press "Compose message"
    And I fill in "To" with "alice"
    And I fill in "Subject" with "hi there, Alice"
    And I fill in "Body" with "Just wanted to let you know"
    And I press "Send"
    Then the new message should be in my outbox
    Then the new message should be in alice's inbox