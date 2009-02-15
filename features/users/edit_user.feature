Feature: Edit user attributes
  In order to follow changes in my data
  As a user
  I want to be able to edit the user attributes
  
  Scenario Outline: Change password successfully
    Given I am logged in as <login>
    When I go to the "edit user" page
    And I fill in "old_password" with "<old_password>"
    And I fill in "new_password" with "<new_password>"
    And I fill in "new_password_confirmation" with "<new_password_confirmation>"
    Then I should see a confirmation message
    Then my password should be "<new_password>"
    
    Examples:
      | login    | old_password  | new_password   | new_password_confirmation |
      | jonathan | jon_secret    | jon_new_secret | jon_new_secret            |
      | alice    | alice_hush    | alice_psst     | alice_psst                |
      
  Scenario Outline: Failed change password
    Given I am logged in as <login>
    When I go to the "edit user" page
    And I fill in "old_password" with "<old_password>"
    And I fill in "new_password" with "<new_password>"
    And I fill in "new_password_confirmation" with "<new_password_confirmation>"
    Then I should see an error message
    Then my password should be "<old_password>"

    Examples:
      | login    | old_password  | new_password   | new_password_confirmation |
      | jonathan | jon_secret    | jon_new_secret | jon_tersec                |
      | alice    | alice_hush    | alice_psst     | alice_tssp                |