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
  # @roster.sort
  
  end
end
