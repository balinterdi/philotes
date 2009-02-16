Feature: Create comment
  In order to make my opinion heard
  As a user
  I want to be able to comment on blog posts, statuses, gallery items, etc.
  
  Scenario: Leave a comment on a blog post
    Given I am logged in as "jonathan"
    And there is a published blog post titled "On trading stock"
    When I go to the "show" page of the "On trading stock" blog post
    And I make a comment that says "I realized I have to do it wisely"
    Then the "On trading stock" blog post should have the "I realized I have to do it wisely" comment