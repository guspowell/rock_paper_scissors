class Outcome

	def win?(player, computer)
		(player.choice == :rock and computer.choice == :scissors) ||
		(player.choice == :paper and computer.choice == :rock) ||
		(player.choice == :scissors and computer.choice == :paper)
	end

	def outcome(player,computer)
		if (player.choice == computer.choice)
			"Draw"
		elsif win?(player,computer)
			player.score
			'Win'
		else
			'Lose'
		end
	end

end
