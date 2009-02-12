Feature: create blog
  In order to write insightful posts
  As a writer
  I want to create a blog
  
  Scenario: Successful blog creation
    Given I am logged in as jonathan
    When I go to /blogs/new
    When I fill in "Name" with "Merb and Rails - two good friends"
    And I press "Create blog"
    Then I should see a confirmation message
    # Then a new blog should be created
    
  Scenario: Failed blog creation
    Given I am logged in as jonathan
    When I go to /blogs/new
    And I press "Create blog"
    Then I should see an error message
    # Then a new blog should not be created