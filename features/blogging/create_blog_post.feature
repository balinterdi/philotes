Feature: create blog post
  In order to inform people about the topics that are of interest to me
  As a blogger
  I want to be able to create posts on my blog
  
  Scenario: Successful post creation
    Given I am logged in as jonathan
    Given I go to /blogs/1/blog_posts/new
    When I fill in "title" with "The future of Ruby web frameworks"
    And I fill in "body" with "There are lots of them and they are cool and easy to work with."
    And I press "Create post"
    Then I should see a confirmation message
    # Then the blog post should be created
  
  Scenario: Failed post creation because of empty title
    Given I am logged in as jonathan
    Given I go to /blogs/1/blog_posts/new
    When I fill in "body" with "There are lots of them and they are cool and easy to work with."
    And I press "Create post"
    Then I should see an error message
    # Then the blog post should not be created

  Scenario: Failed post creation because of empty body
    Given I am logged in as jonathan
    Given I go to /blogs/1/blog_posts/new
    When I fill in "title" with "The future of Ruby web frameworks"
    And I press "Create post"
    Then I should see an error message
    # Then the blog post should not be created
    