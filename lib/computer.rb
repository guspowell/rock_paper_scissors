class Computer

	attr_reader :choice

	def self.comp_choice (options)
		options.option_list.sample
	end

end