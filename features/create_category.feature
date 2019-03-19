Feature: Create Category
  As an admin
  In order to organize the blog
  I want to create categories to group together related posts

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Create a category
    Given I am on the categories page
    Then I should see "category slug"