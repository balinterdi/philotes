Feature: Create connections
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

  Scenario: initiate a friendship connection
    Given I am logged in as "jonathan"
    And I want to connect with "alice"
    When I go to the "my connections" page
    And I press "New connection"
    And I fill in "user" with "alice"
    And I select "a friend of mine" from "connection_type"
    And I press "Create connection"
    Then there should be a connection between "me" and "alice"
    And a message with "jonathan wants to connect with you" as "subject" should be in alice's inbox
    And the new connection should be of friendship type
    And the new connection should be pending

  Scenario: check an incoming connection request
    Given I am logged in as "alice"
    And I have a connection request from "jonathan"
    When I go to the "my connections" page
    Then I should see "You have a connection request from jonathan"
    
  Scenario: accept a connection request
    Given I am logged in as "alice"
    And I have a connection request from "jonathan"
    When I go to the "my connections" page
    And I press "Accept"
    Then I should see a confirmation message
    And a message with "you are now connected with alice" as "subject" should be in "jonathan"'s inbox
    And the connection between "alice" and "jonathan" should be accepted
    
  Scenario: ignore a connection request
    Given I am logged in as "alice"
    And I have a connection request from "jonathan"
    When I go to the "my connections" page
    And I press "Ignore"
    Then I should see a confirmation message
    And a message with "alice ignored your connection request" as "subject" should be in "jonathan"'s inbox
    And the connection between "alice" and "jonathan" should be ignored