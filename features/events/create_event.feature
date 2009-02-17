Feature: Create event
  In order to organize real world meetings
  As a user
  I want to create events

  Scenario: Successful event creation
    Given I am logged in as "jonathan"
    When I go to the "my events" page
    And I fill in "name" with "Ruby Barcamp"
    And I fill in "date" with "01/04/2009"
    And I fill in "location" with "Ljubljana"
    And I fill in "date" with "01/04/2009"
    And I press "Create event"
    Then the "Ruby Barcamp" event should be created
    And the "Ruby Barcamp" event should be public
    And I should be the "Ruby Barcamp" event organizer

  Scenario: Successfull creation of private event
    Given I am logged in as "jonathan"
    When I go to the "my events" page
    And I fill in "name" with "Ruby Barcamp"
    And I fill in "date" with "01/04/2009"
    And I fill in "location" with "Ljubljana"
    And I fill in "date" with "01/04/2009"
    And I check "private"
    And I press "Create event"
    Then the "Ruby Barcamp" event should be created
    And the "Ruby Barcamp" event should be private
    And I should be the "Ruby Barcamp" event organizer
