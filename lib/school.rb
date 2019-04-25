require 'pry'

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
      roster[grade] ||= []
      #if roster[grade] is true or equal to anything, it stays what it is. If roster[grade] = false, set it equal to an empty array
      roster[grade] << student_name #now you can shovel the students into the array
    end

def grade(level)
  roster[level]
end

  def sort
      new_hash = {}
      roster.each do |grade, students|
        new_hash[grade] = students.sort
      end
      new_hash
    end
  end
