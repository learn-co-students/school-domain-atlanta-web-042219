require 'pry'

# code here!
class School
    attr_accessor :school, :roster

    def initialize(name)
        @roster= {}
        @school = school

    end

    def add_student(student, grade)
           roster[grade] ||= []
           roster[grade] << student
    end


    def grade(grade)
        roster.collect do |key, val|
            if grade ==key
                return val
            end
        end
    end

    binding.pry
    def sort(roster)
        
     puts roster
    end
end
