class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student(stu_name, grade) 
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << stu_name
        else 
            @roster[grade] << stu_name
        end  
    end 

    def grade(grade)
       roster[grade]
    end 

    def sort
        sorted = {}
        roster.each do | grade, stu_name|
            sorted[grade] = stu_name.sort
        end 
         sorted
    end 

end 