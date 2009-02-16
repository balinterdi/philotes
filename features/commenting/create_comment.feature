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
    
  Scenario: Leave a comment on a user's status
    Given I am logged in as "jonathan"
    And "alice"'s status is "I am feeling sad"
    When I go to the "my dashboard" page
    And I follow "Comment Alice's status"
    And I fill in "body" with "Cheer up, let's go see a movie"
    Then "alice"'s status should have the "Cheer up, let's go see a movie" comment