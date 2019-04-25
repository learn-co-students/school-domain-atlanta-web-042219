# code here!
require 'pry'
class School

attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(students, grade)
    roster[grade] ||= []
    roster[grade] << students
  end

  def grade(students_grade)
    @roster[students_grade]
  end

  def sort
    student_sort = {}
    roster.collect do |grade, students|
    student_sort[grade] = students.sort
  end
    student_sort
  end
end
