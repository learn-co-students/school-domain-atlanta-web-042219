class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sort_hash = {}
        roster.each do |grade, student|
            sort_hash[grade] = student.sort
        end
        sort_hash
    end
end