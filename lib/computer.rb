class Computer

	attr_reader :choice

	def initialize
		@score = 0
	end

	def comp_choice (options)
		@choice = options.option_list.sample
	end

	def score
		@score += 1
	end

end
