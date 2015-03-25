class Player

	attr_reader :choice, :total_score, :player_name

	def initialize
		@player_name
		@total_score = 0
	end

	def name (name)
		@player_name = name
	end

	def pick_option (choice)
		@choice = choice.to_sym
	end

	def score
		@total_score += 1
	end

end
