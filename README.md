FRIDAY MORNING LECTURE

BUILD AS MVP!! => player picks from one option, and always wins => add options and loss => add draw
Start with user stories

Starting place:
what will we see on first page?
		could have drawing of rock, paper, scissors buttons
		leeds onto new page or refreshes current page when button is clicked
		picture of computer's choice, and you LOSE or WIN or DRAW
		play again

Feature: Playing RPS => test drive the project: CUCUMBER AND RSPEC

the marketeer has to enter their name before the game
the marketeer will be presented the choices (rock, paper and scissors)
the marketeer can choose one option
the game will choose a random option
a winner will be declared

CLASSES: player, choices, computer, outcome

PLAYER
enter name     player
pick option    choices, player
win or lose    outcome, player

CHOICES
list choices   choices

COMP
randomly gen choice   choices, comp

OUTCOME
win or lose    player, choices, comp, outcome