class Computer

	attr_reader :choice, :total_score

	def initialize
		@total_score = 0
	end

	def comp_choice (options)
		@choice = options.option_list.sample
	end

	def score
		@total_score += 1
	end

end
