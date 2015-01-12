class Outcome

	def self.win?(player, computer)
		(player.choice == :rock and computer.choice == :scissors) ||
		(player.choice == :paper and computer.choice == :rock) ||
		(player.choice == :scissors and computer.choice == :paper)
	end

	def self.outcome(player,computer)
		if (player.choice == computer.choice)
			"Draw"
		elsif win?(player,computer)
			'Win'
		else
			'Lose'
		end
	end


end