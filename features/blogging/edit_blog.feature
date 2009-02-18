Feature: edit blog
  In order to reach my audience
  As a blogger
  I want to be able to publish my blog

  Scenario: Publish blog
    Given I am logged in as "jonathan"
    And there is a blog
    When I go to the blog's edit page
    And I press "Publish blog"
    Then I should see a confirmation message
    Then the blog should be public
