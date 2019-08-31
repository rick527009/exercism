class School
  attr_reader :roster

  def initialize
    @roster = Hash.new { |roster, grade| roster[grade] = Array.new }
  end

  def add(student, grade)
    roster[grade] << student
  end

  def students(grade)
    roster[grade].sort
  end

  def students_by_grade
    roster.keys.sort.map do |grade|
      { grade: grade, students: students(grade) }
    end
  end
end
