Feature: create blog
  In order to write insightful posts
  As a writer
  I want to create a blog
  
  Scenario: Successful blog creation
    Given I am logged in as "jonathan"
    When I go to the "my blogs" page
    When I fill in "name" with "Merb and Rails - two good friends"
    And I press "Create blog"
    Then I should see a confirmation message
    Then a blog should be created
    Then the blog should be private
    
  Scenario: Failed blog creation
    Given I am logged in as "jonathan"
    When I go to the "my blogs" page
    And I press "Create blog"
    Then I should see an error message
    Then a blog should not be created