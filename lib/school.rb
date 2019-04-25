# code here!
require 'pry'
class School
roster = {}
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
      @roster
  end

  def add_student(name, grade)
    if roster.keys.include?(grade)
      roster[grade] << name
      else
      roster[grade] = [name]
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    # roster.sort_by {|grade, name| [grade, name]}.to_h
    # binding.pry
        sort_hash = {}
        roster.each do |grade, student|
            sort_hash[grade] = student.sort
        end
        sort_hash
    end
  end

school = School.new("Bayside High School")
