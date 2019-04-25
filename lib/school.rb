class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end 
    
    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end 

    def grade(grade)
        roster.find do |key, value|
            if key == grade
                return value
            end 
        end 
    end 

    def sort
        new_hash = {}
        roster.each do |key, value|
            roster[key] = value.sort
        end 

        return roster
    end 



end 