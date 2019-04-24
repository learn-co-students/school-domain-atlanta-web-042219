# code here!
require 'pry'
class School
attr_reader :name, :roster, :student

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        #binding.pry
        roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.sort.to_h.map {|grade, array|
        roster[grade] = array.sort
    }
    roster
    end
end