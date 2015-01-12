class Outcome

	def win (player, computer)
		true if (player.choice == :rock and computer.choice == :scissors) || (player.choice == :paper and computer.choice == :rock) || (player.choice == :scissors and computer.choice == :paper)
	end

	def lose (player, computer)
		true if (player.choice == :scissors and computer.choice == :rock) || (player.choice == :rock and computer.choice == :paper) || (player.choice == :paper and computer.choice == :scissors)
	end

	def draw (player, computer)
		true if (player.choice == :scissors and computer.choice == :scissors) || (player.choice == :rock and computer.choice == :rock) || (player.choice == :paper and computer.choice == :paper)
	end

	def outcome(player,computer)
		if self.win(player,computer) == true
			'Win'
		elsif self.lose(player,computer) == true
			'Lose'
		else self.draw(player,computer) == true
			'Draw'
		end
	end


end