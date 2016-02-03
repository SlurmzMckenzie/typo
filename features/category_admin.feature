Feature: Categories
  As a blog administrator
  In order to categorise my articles
  I want to create and edit categories in my admin panel

  Background:
    Given the blog is set up
    And I am logged into the admin panel

Scenario: Successfully add categories
	Given I am on the new categories page
	When I fill in "Name" with "book category name"
	And I fill in "Keywords" with "book"
	And I fill in "Description" with "test description"
	And I press "Save"
	Then I should be on the new categories page
 	And I should see "book category name"
	And I should see "test description"

Scenario: Successfully edit categories
	Given I am on the edit category 1 page
	When I fill in "Name" with "edited category name"
	And I fill in "Description" with "edited description"
	And I press "Save"
	Then I should be on the new categories page
 	And I should see "edited category name"
	And I should see "edited description"

