module ApplicationHelper

	def grade_format(grade, modifier)
		if modifier == 1
			value = "+"
		elsif modifier == 2
			value = "-"
		else
			value = ""
		end
		return "V#{grade}#{value}"
	end		

	def show_name(name)
		user = User.find(name)
		user.name

	end		

	def formatted_date(date)
		date.strftime("%B %-d, %Y")
	end

end
