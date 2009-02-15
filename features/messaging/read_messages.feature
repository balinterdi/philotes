Feature: Read messages
  In order to see what others have written to me
  As a user
  I want to be able to read my messages
  
  Scenario: Read message
    Given I am logged in as jonathan
    Given I have a message with "Happy birthday from Alice" as subject
    When I go to the "my messages" page
    Then I should see "Happy birthday from Alice"