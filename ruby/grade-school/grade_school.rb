class School
  def initialize
    @students = Hash.new
  end

  def add(student, grade)
    @students[grade] ||= Array.new
    @students[grade] << student
  end

  def students(grade)
    @students[grade]&.sort || []
  end

  def students_by_grade
    @students.keys.sort.map do |grade|
      { grade: grade, students: @students[grade].sort }
    end
  end
end
