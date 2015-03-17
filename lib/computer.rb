class Computer

	attr_reader :choice

	def comp_choice (options)
		@choice = options.option_list.sample
	end

end
