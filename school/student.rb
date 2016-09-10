class Student
  attr_reader :name

  @@students = []

  def initialize(name)
    @name=name
    @@students << self
  end

  def self.count
    @@students.count
  end

  def self.reset_all
    @@students.clear
  end

end