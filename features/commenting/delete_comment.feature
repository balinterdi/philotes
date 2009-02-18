Feature: Delete comment
  In order to protect others from inane comments
  As an administrator
  I want to be able to delete any comment
  
  Scenario: Comment deletion by admin
    Given I am logged in as an admin user
    And there is a blog post
    And the blog post's title is "Introducing the new iPhone"
    And there is a comment that says "wOOt!" on the "Introducing the new iPhone" blog post
    When I go to the "show" page of the "Introducing the new iPhone" blog post
    And I delete the "wOOt!" comment
    Then I should see a confirmation message
    And the "wOOt!" comment on the "Introducing the new iPhone" blog post should be deleted
  