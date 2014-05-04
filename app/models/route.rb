class Route < ActiveRecord::Base
	belongs_to :location
	has_many :attempts


	def calculate_grade(level, modifier)
	@grade = level + 1
	if modifier == 1
			@grade +=  0.3333333
		elsif modifier == 2
			@grade -=  0.3333333
		else
			@grade 
		end
		@grade *= 10
	end
end
