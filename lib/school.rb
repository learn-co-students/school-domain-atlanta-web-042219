# code here!require 'pry'
class School
  attr_reader :name, :roster, :grade

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

    @roster.collect do |key, value|
      @roster[key] = value.sort
    end
    @roster.sort_by {|key, value| key}.to_h


  end
end
