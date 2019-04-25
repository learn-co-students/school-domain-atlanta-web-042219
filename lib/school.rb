require 'pry'


class School

attr_accessor :roster, :name

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, num)
    if !@roster[num]
    @roster[num] = [name]
  else
    @roster[num] << name
  end
  end

  def grade(num)
    @roster[num]
  end

  def sort
  new_hash = {}
  @roster.each do |grade, name|
      new_hash[grade] = name.sort
    end
    new_hash
  end

end
