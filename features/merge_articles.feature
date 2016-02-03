Feature: Merge Articles
  As a blog administrator
  In order to clean up duplicated content
  I want to be able to merge 2 articles together

  Background:
    Given the blog is set up
    And I am logged into the admin panel


Scenario: When articles are merged, the merged article should contain the text of both previous articles.
	Given I am on the edit article 1 page
	When I fill in "Article ID" with "2"
	And I press "Merge"
	Then I should see "Articles successfully merged!"
	When I follow "Edit"
	And I should see "Article 1 body text"
	And I should see "Article 2 body text"

Scenario: When articles are merged, the merged article should have one author (either one of the authors of the original article).
	Given I am on the edit article 1 page
	When I fill in "Article ID" with "2"
	And I press "Merge"
	Then I should see "Articles successfully merged!"
	Then I should see "Author"
	And I should see "admin"


# Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article.
# 	Given I am on the edit article 1 page
# 	When I fill in "Article ID" with "2"
# 	And I press "Save"
# 	Then I should see the comments from both articles

Scenario: The title of the new article should be the title from either one of the merged articles.
	Given I am on the edit article 1 page
	When I fill in "Article ID" with "2"
	And I press "Merge"
	Then I should see "Articles successfully merged!"
	And I should see "Article 1 Title"








