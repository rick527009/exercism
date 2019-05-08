class Series
  def initialize(series_string)
    @series = series_string.each_char
  end

  def slices(num)
    raise ArgumentError.new("num exceeds series length") if num > @series.count
    @series.each_cons(num).to_a.map(&:join)
  end
end
