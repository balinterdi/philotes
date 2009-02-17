Feature: Invitation for private events
  In order to pick the people I want to meet for a specific topic
  As a user
  I want to be able to invite other users for private events

  Scenario: Create invitation for a private event
    Given I am logged in as "jonathan"
    And there is a user called "alice"
    And there is a private "Ruby Barcamp" event
    When I go to the event's "show" page
    And I press "Create invitations"
    And I fill in "invitation[to]" with "alice"
    # And I fill in "invitation[to]" with "bob"
    And I press "Send invitations"
    Then I should see a confirmation message
    Then an invitation should be created for "alice" to the event

  Scenario: See the invitation for an event
    Given I am logged in as "alice"
    And I have an invitation for the "Ruby Barcamp" event
    When I go to the "my events" page
    Then I should see "You have an invitation to attend the Ruby Barcamp event"

  Scenario: Attend an event via an invitation
    Given I am logged in as "alice"
    And I have an invitation for the "Ruby Barcamp" event
    When I go to the "my events" page
    And I follow "Ruby Barcamp"
    And I press "I will attend"
    Then I should see a confirmation message
    Then the invitation should be accepted
    And I should be among the "Ruby Barcamp" event attenders
