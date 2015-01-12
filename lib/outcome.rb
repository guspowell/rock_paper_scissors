class Outcome

	def win (player, computer)
		p player
		p computer
		true if (player.choice == :rock and computer.choice == :scissors) || (player.choice == :paper and computer.choice == :rock) || (player.choice == :scissors and computer.choice == :paper)
	end

	def lose (player, computer)
		true if (player.choice == :scissors and computer.choice == :rock) || (player.choice == :rock and computer.choice == :paper) || (player.choice == :paper and computer.choice == :scissors)
	end

	def draw (player, computer)
		true if player.choice == :scissors and computer.choice == :scissors
		true if player.choice == :rock and computer.choice == :rock
		true if player.choice == :paper and computer.choice == :paper
	end

	def outcome(player,computer)
		'Win' if win(player,computer) == true
		'Lose' if lose(player,computer) == true
		'Draw' if draw(player,computer) == true
	end


end