Feature: edit blog post
  In order to update or fix my blog post
  As a blogger
  I want to be able to edit blog posts

  Scenario: Successful edit
    Given I am logged in as jonathan
    Given there is a blog post titled "I feel good"
    Given I go to the blog post titled "I feel good"'s edit page
    When I fill in "body" with "I like the sun shining and the birds singing."
    And I press "Save"
    Then I should see "I like the sun shining and the birds singing."
    Then I should see a confirmation message
    Then the blog post titled "I feel good" should be draft

  Scenario: Publish blog post
    Given I am logged in as jonathan
    Given there is a draft blog post titled "I feel good"
    Given I go to the blog post titled "I feel good"'s edit page    
    When I press "Publish"
    Then I should see a confirmation message
    Then the blog post titled "I feel good" should be published
