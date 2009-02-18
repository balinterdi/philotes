Feature: create blog post
  In order to inform people about the topics that are of interest to me
  As a blogger
  I want to be able to create posts on my blog
  
  Scenario: Successful draft post creation
    Given I am logged in as "jonathan"
    And there is a "Why I love Ruby so much" blog
    When I go the blog's new blog post page
    And I fill in "title" with "The future of Ruby web frameworks"
    And I fill in "body" with "There are lots of them and they are cool and easy to work with."
    And I press "Save"
    Then I should see a confirmation message
    And the blog post should be created
    And the blog post should be draft
  
  Scenario: Failed post creation because of empty title
    Given I am logged in as "jonathan"
    And there is a "Why I love Ruby so much" blog
    When I go the blog's new blog post page
    When I fill in "body" with "There are lots of them and they are cool and easy to work with."
    And I press "Save"
    Then I should see an error message
    Then the blog post should not be created

  Scenario: Failed post creation because of empty body
    Given I am logged in as "jonathan"
    And there is a "Why I love Ruby so much" blog
    When I go the blog's new blog post page
    And I fill in "title" with "The future of Ruby web frameworks"
    And I press "Save"
    Then I should see an error message
    Then the blog post should not be created
    