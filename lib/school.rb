class School
attr_accessor :roster

def initialize(name)
@name = name
@roster = {}
end

def add_student(name, grade)
@roster[grade] ||= []
@roster[grade] << name
end

def grade(grade)
  @roster[grade]
end

def sort
  students = {}
  @roster.each do |grade, name|
  students[grade] = name.sort
end
students
end
end
