Feature: Non Admins Cannot Merge Articles
  As a blog administrator
  I do not want standard users to be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel as a standard user

Scenario: A non-admin cannot merge articles
	Given I am on the edit article 1 page
	Then I should not see "Merge Articles"







