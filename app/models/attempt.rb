class Attempt < ActiveRecord::Base
	belongs_to :user
	belongs_to :route
	validates :date_attempted, presence: true


	def add_modifiers(grade, completed, flash)

		grade = grade + 1
			if completed == true
				if flash == true
						grade *= 1.5
				else
					grade
				end
			else
				grade *= 0.25
			end
			grade = (grade * 10).round
		end
end


		