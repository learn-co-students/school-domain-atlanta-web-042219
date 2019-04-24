require 'pry'

class School
	attr_accessor :roster, :name

	def initialize(school_name)
		self.name = school_name
		self.roster = {}
	end

	def add_student(student, grade_lvl)
			self.roster[grade_lvl] ||= []
			self.roster[grade_lvl] << student
	end

	def grade(grade_lvl)
		self.roster[grade_lvl]
	end

	def sort
		self.roster.sort.to_h.map {|grade_lvl, array|
			self.roster[grade_lvl] = array.sort
			# binding.pry
		}
		self.roster
	end
end
