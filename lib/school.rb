class School
  # attr school name & school roster
  attr_accessor :name, :roster
  
  # always look for a name (of the school) and a roster (roster needs to be an empty array {})
  def initialize(name)
    @name = name
    @roster = {}
  end   
  
  # method add_student and their grade level
  def add_student(student, grade)
    @student_name = student
    @grade = grade
    if @roster.include?(grade) == false 
      @roster[grade] = []
    end   
    @roster[grade] << student
  end 
  
  #method grade retreives student from a grade
  def grade(num)
    @roster[num]
  end 
  
  #method sort the students
  def sort 
    @roster.each do |student, grade|
      @roster[student] = grade.sort
    end   
  end 
  
end 