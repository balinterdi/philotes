Feature: Create connection
  In order to see what my friends (clients, etc.) are doing
  As a user
  I want to be able to establish connections to them
  
  Scenario: initiate a connection
    Given I am logged in as "jonathan"
    And I want to connect with "alice"
    When I go to the "my connections" page
    And I press "New connection"
    And I fill in "user" with "alice"
    And I press "Create connection"
    Then there should be a connection between "me" and "alice"
    And a message with "jonathan wants to connect with you" as "subject" should be in alice's inbox
    And the new connection should be pending