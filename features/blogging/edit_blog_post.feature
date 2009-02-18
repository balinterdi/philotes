Feature: edit blog post
  In order to update or fix my blog post
  As a blogger
  I want to be able to edit blog posts

  Scenario: Successful edit
    Given I am logged in as "jonathan"
    And there is a blog post
    And the blog post's title is "I feel good"
    When I go to the blog post's edit page
    And I fill in "title" with "I feel even better"
    And I press "Save"
    Then I should see "I feel even better"
    And I should see a confirmation message
    And the blog post should be draft

  Scenario: Publish blog post
    Given I am logged in as "jonathan"
    And there is a draft blog post
    When I go to the blog post's edit page
    And I press "Publish"
    Then I should see a confirmation message
    Then the blog post should be published
