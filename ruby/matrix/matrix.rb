class Matrix
  attr_reader :rows, :columns

  def initialize(matrix_string)
    @rows = parse_matrix(matrix_string)
    @columns = @rows.transpose
  end

private

  def parse_matrix(matrix_string)
    matrix_string.each_line.map { |row| parse_row(row) }
  end

  def parse_row(row)
    row.split.map(&:to_i)
  end
end
