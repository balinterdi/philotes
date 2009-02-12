Feature: edit blog post
  In order to update or fix my blog post
  As a blogger
  I want to be able to edit blog posts

  Scenario: Successful edit
    Given I am logged in as jonathan
    Given I go to /blogs/1/posts/1/edit
    When I fill in "body" with "This is better now."
    And I press "Save"
    Then I should see "This is better now."
    Then I should see a confirmation message
    Then the blog post 1 should be draft

  Scenario Outline: Publish blog post
    Given I am logged in as jonathan
    # Given there is a draft blog post
    Given I go to /blogs/1/posts/1/edit # that post should be a draft at this point
    When I press "Publish"
    Then I should see a confirmation message
    Then the blog post 1 should be published
    Then Bush should step down
