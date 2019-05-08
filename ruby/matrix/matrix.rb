class Matrix
  class ParseError < RuntimeError; end

  attr_reader :rows, :columns

  def initialize(values)
    @values = values
    parse_values!
  end

private

  def parse_values!
    @rows = @values.split("\n").map { |row| parse_row(row) }
    raise ParseError.new("Unequal row length") unless rows_equal_length?
    calculate_columns
  end

  def parse_row(row)
    row.split.map { |value| value.to_i }
  end

  def rows_equal_length?
    @rows.all? { |row| row.count == first_row_count }
  end

  def calculate_columns
    @columns = []
    first_row_count.times { @columns << [] }
    @rows.each do |row|
      row.each.with_index do |value, i|
        @columns[i] << value
      end
    end
  end

  def first_row_count
    @first_row_count ||= @rows.first.count
  end
end
