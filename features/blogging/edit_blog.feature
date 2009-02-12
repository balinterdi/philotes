Feature: edit blog
  In order to reach my audience
  As a blogger
  I want to be able to publish my blog

  Scenario: Publish blog
    Given I am logged in as jonathan
    Given there is a blog called "My shiny new blog"
    When I go to "My shiny new blog"'s edit page
    When I press "Publish blog"
    Then I should see a confirmation message
    Then the blog called "My shiny new blog" should be public
