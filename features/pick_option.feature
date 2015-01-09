Feature: Picking an option
	In order to play RPS
	As a nostalgic player
	I want to pick an option of rock paper or scissors

	Scenario: Visiting choice page
		Given I have registered my name
		When I follow "Play Game"
		Then I should see "Rock"

	Scenario: Clicking Rock
		Given I am on the choice page
		When I click "Rock"
		Then I should see "You Lose"