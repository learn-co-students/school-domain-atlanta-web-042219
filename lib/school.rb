require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    @students = []
    roster.each do |key, value|
      if key == grade
      @students << value
      end
    end
    @students.flatten
  end

  def sort
    roster.map do |key, value|
      roster[key] = value.sort
    end
    roster.sort_by {|key, value| key}.to_h
  end
  
end
