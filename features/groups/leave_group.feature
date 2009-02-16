Feature: Leave group
  In order to keep my group-related activity only to groups I am interested in
  As a user
  I want to be able to leave a group
  
  Scenario: successful leaving of a group
    Given I am logged in as "jonathan"
    Given I am member of the "Brain surgery for dummies" group
    When I go to the "group" page of "Brain surgery for dummies"
    And I press "Leave group"
    Then I should see a confirmation message
    Then I should not be a member of the "Brain surgery for dummies" group