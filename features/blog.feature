Feature: Blog feature
  Test functionality of blog post

  Scenario: Blog post positive
    Given I have logged in as a regular user
    Then I can access my profile information
    Given I write post in a blog
    Then I check if posted in a blog
    And I change blog title
