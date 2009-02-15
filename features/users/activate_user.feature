Feature: Activate user
  In order to verify that each user has a valid email address he can access
  As the site administrator
  I want to be able to verify the email address
  
  Scenario: Send activation email
    Given "jonathan@acme.com" registers
    Then an activation email to "jonathan@acme.com" should be sent
  
  Scenario: Activate user by clicking a link
    Given "jonathan@acme.com" registers
    When the activation link for "jonathan@acme.com" is followed
    Then "jonathan@acme.com" should be activated
  
  