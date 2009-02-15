Feature: Register user
  In order to use user-based services of the site
  As a potential user
  I want to be able to register a user
  
  Scenario Outline: Successful registration
    When I go to the register page
    And I fill in "email" with "<email>"
    And I fill in "first_name" with "<first_name>"
    And I fill in "last_name" with "<last_name>"
    And I fill in "password" with "<password>"
    Then I should see a confirmation message
    Then a user with "<email>" as email should be created
    Then the new user should not be activated
    
    Examples:
      | email             | first_name       | last_name    | password    | password_confirmation |
      | jonathan@acme.com | Jonathan         | Richards     | jonsecret   | jonsecret             |
      | alice@example.com | Alice            | Keys         | alicehush   | alicehush             |
    
    Scenario Outline: Failed registration
      When I go to the register page
      And I fill in "email" with "<email>"
      And I fill in "first_name" with "<first_name>"
      And I fill in "last_name" with "<last_name>"
      And I fill in "password" with "<password>"
      Then I should see an error message
      Then a user with "<email>" as email should not be created

      Examples:
        | email             | first_name       | last_name    | password    | password_confirmation |
        | jonathan@acme.com | Jonathan         | Richards     | jon         | jon                   |
        | jonathan@acme.com | Jonathan         | Richards     | jonsecret   | jon_terces            |
        | aliceexample.com  | Alice            | Keys         | alicehush   | alicehush             |
        | alice@example.com | Alice            | Keys         | nil         | nil                   |
    