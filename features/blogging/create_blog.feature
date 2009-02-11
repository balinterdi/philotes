Feature: create blog
  In order to write insightful posts
  As a technical writer
  I want to create a blog
  
  Scenario: Create a blog
    Given I am logged in as jonathan
    When I fill in "Name" with "Merb and Rails - two good friends"
    And I press "Create blog"
    # Then /^I should see an? (\w+) message$/ do |message_type|
    Then I should see a confirmation message