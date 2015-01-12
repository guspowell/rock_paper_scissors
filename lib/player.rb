class Player

	attr_reader :choice

	def initialize
		@name
	end

	def name (name)
		@name = name
	end

	def pick_option (choice)
		@choice = choice.to_sym
	end

end