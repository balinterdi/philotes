Feature: Invite to group
  In order to expand the group with new members
  As the group admin
  I should be able to invite users to join the group
  
  Scenario: successful invitation for a user
    Given I am logged in as "jonathan"
    Given there is a group with "Indian cuisine" as "name"
    When I go to the "group page" of "Indian cuisine"
    And I press "Invite users"
    And I fill in "name" with "alice"
    And I press "Send invitation"
    Then I should see a confirmation message
    Then a new invitation should be created with "Invitation to join 'Indian cuisine'" as "subject" to "alice"
