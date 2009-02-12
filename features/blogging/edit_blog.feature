Feature: edit blog
  In order to reach my audience
  As a blogger
  I want to be able to publish my blog

  Scenario: Publish blog
    Given I am logged in as jonathan
    Given I go to /blogs/1/edit
    When I press "Publish blog"
    Then I should see a confirmation message
    Then the blog 1 should be public