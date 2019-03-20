Feature: Create Category
  As an admin
  In order to organize the blog
  I want to create categories to group together related posts

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Load categories page
    Given I am on the categories page
    Then I should see "category slug"
    
  Scenario: Create Category with Name
    Given I am on the categories page
    When I fill in "category_name" with "example category name"
    And I press "Save"
    Then I should see "Category was successfully saved"
    And I should see "example category name"
    
  Scenario: Create Category with Description
    Given I am on the categories page
    When I fill in "category_name" with "example 2 category name"
    And I fill in "category_description" with "example 2 category description"
    And I press "Save"
    Then I should see "Category was successfully saved"
    And I should see "example 2 category description"
    
  Scenario: Edit Category Name
    Given I am on the categories page
    When I fill in "category_name" with "example category name"
    And I press "Save"
    And I go to the first category edit page
    And I fill in "category_name" with "edited category name"
    And I press "Save"
    Then I should see "Category was successfully saved"
    And I should see "edited category name"
    

    
    
