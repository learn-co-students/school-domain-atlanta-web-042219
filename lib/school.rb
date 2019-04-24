# code here!
require "pry"
class School
    
    def initialize(school_name)
        @school = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = [name]
        else
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.sort.to_h
        @roster.each do |k, v|
            @roster[k] = v.sort
        end
    end
end
