Feature: create message
  In order to communicate with other users
  As a user
  I want to be able to write to them

  Scenario: new message
    Given I am logged in as jonathan
    When I go to the my messages page
    And I press "Compose message"
    And I fill in "to" with "alice"
    And I fill in "subject" with "hi there, Alice"
    And I fill in "body" with "Just wanted to say hi"
    And I press "Send"
    Then I should see a confirmation message
    Then a message with "hi there, Alice" as subject should be in alice's inbox
    Then a message with "hi there, Alice" as subject should be in my outbox

  Scenario: save message as draft
    Given I am logged in as jonathan
    When I go to the my messages page
    And I press "Compose message"
    And I fill in "to" with "alice"
    And I fill in "subject" with "hi there, Alice"
    And I fill in "body" with "Just wanted to say hi"
    And I press "Save"
    Then I should see a confirmation message
    Then a message with "hi there, Alice" as subject should be in my Drafts folder

  Scenario: reply to message
    Given I am logged in as alice
    Given jonathan sends a message to me with "hi there, Alice" as subject
    When I go to the my messages page
    And I follow "hi there, Alice"
    And I press "Reply"
    And I fill in "subject" with "hey Jonathan"
    And I fill in "body" with "Nice to hear from you"
    And I press "Send"
    Then I should see a confirmation message
    Then a message with "hey Jonathan" as subject should be in jonathan's inbox
    Then a message with "hey Jonathan" as subject should be in my outbox
