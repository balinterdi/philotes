Feature: Invite to group
  In order to expand the group with new members
  As the group admin
  I should be able to invite users to join the group

  Scenario: successful invitation for a user
    Given I am logged in as "jonathan"
    Given there is an "Indian cuisine" group
    When I go to the "group" page of "Indian cuisine"
    And I press "Invite users"
    And I fill in "name" with "alice"
    And I press "Send invitation"
    Then I should see a confirmation message
    Then an invitation should be created for "alice" to the "Indian cuisine" group
    Then a message should be created with "Invitation to join 'Indian cuisine'" as "subject" to "alice"

  Scenario: successfully joining a free-join group
    Given I am logged in as "alice"
    Given there is an "Indian cuisine" free-join group
    When I go to the "group" page of "Indian cuisine"
    And I press "Join this group"
    Then I should see a confirmation message
    Then I should be a member of the "Indian cuisine" group

  Scenario: successfully joining an invite-only group through an invitation
    Given I am logged in as "alice"
    Given there is an "Indian cuisine" invite-only group
    Given I have an invitation to join the "Indian cuisine" group
    When I go to the "group" page of "Indian cuisine"
    And I press "Join this group"
    Then I should see a confirmation message
    Then I should be a member of the "Indian cuisine" group

  Scenario: failed joining an invite-only group for not having an invitation (no button)
    Given I am logged in as "alice"
    Given there is an "Indian cuisine" invite-only group
    When I go to the "group" page of "Indian cuisine"
    Then I should not see "Join this group"

