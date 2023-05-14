class School
  attr_reader :name, :students

  def initialize(name, students = [])
    @name     = name
    @students = students
  end
end