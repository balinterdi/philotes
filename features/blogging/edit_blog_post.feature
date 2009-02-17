Feature: edit blog post
  In order to update or fix my blog post
  As a blogger
  I want to be able to edit blog posts

  Scenario: Successful edit
    Given I am logged in as "jonathan"
    And there is a blog post titled "I feel good"
    When I go to the "I feel good" blog post's edit page
    And I fill in "body" with "I like the sun shining and the birds singing."
    And I press "Save"
    Then I should see "I like the sun shining and the birds singing."
    Then I should see a confirmation message
    Then the "I feel good" blog post should be draft

  Scenario: Publish blog post
    Given I am logged in as "jonathan"
    And there is a draft blog post titled "I feel good"
    When I go to the "I feel good" blog post's edit page
    And I press "Publish"
    Then I should see a confirmation message
    Then the "I feel good" blog post should be published
