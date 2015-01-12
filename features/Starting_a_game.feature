Feature: Starting a game
	In order to play RPS
	As a nostalgic player
	I need to register my name

	Scenario: Visiting homepage
		Given I am on the homepage
		Then I should see "Please enter your name"

	Scenario: Entering name
		Given I am on the homepage
		When I fill in Gus and click submit
		Then I should see "Welcome Gus"
